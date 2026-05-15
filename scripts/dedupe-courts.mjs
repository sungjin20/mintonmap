import fs from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const projectRoot = path.resolve(__dirname, "..");

const files = [
  path.join(projectRoot, "data", "courts.json"),
  path.join(projectRoot, "data", "courts.seed.json")
];

const sourcePriority = {
  official: 100,
  public: 70,
  kakao: 55,
  sample: 20
};

const feePriority = {
  known: 30,
  varies: 20,
  unknown: 0
};

function normalizeAddress(address) {
  return String(address || "")
    .normalize("NFKC")
    .replace(/서울특별시/g, "서울")
    .replace(/경기도/g, "경기")
    .replace(/인천광역시/g, "인천")
    .replace(/[()[\]{},.]/g, "")
    .replace(/\s+/g, "")
    .trim();
}

function hasText(value) {
  return typeof value === "string" && value.trim().length > 0;
}

function hasKnownPhone(court) {
  return /\d/.test(court.phone || "");
}

function scoreCourt(court) {
  let score = sourcePriority[court.source] ?? 0;

  if (court.courtCountStatus === "confirmed") score += 35;
  if ((court.courtCount || 0) > 0) score += Math.min(court.courtCount, 20);
  if (court.venueType && court.venueType !== "unknown") score += 15;
  if (hasKnownPhone(court)) score += 10;
  if (hasText(court.hours)) score += 10;
  if (hasText(court.reservationUrl)) score += 8;
  if (hasText(court.kakaoPlaceUrl)) score += 7;
  if (Array.isArray(court.photos) && court.photos.length > 0) score += 7;
  if (court.feeInfo) score += feePriority[court.feeInfo.status] ?? 0;
  if (court.geocodingStatus === "matched") score += 6;

  return score;
}

function pickBetterFeeInfo(left, right) {
  const leftScore = feePriority[left?.status] ?? -1;
  const rightScore = feePriority[right?.status] ?? -1;

  return rightScore > leftScore ? right : left;
}

function pickBetterCourtCount(left, right) {
  if (left.courtCountStatus !== "confirmed" && right.courtCountStatus === "confirmed") {
    return right;
  }

  if (left.courtCountStatus === right.courtCountStatus && (right.courtCount || 0) > (left.courtCount || 0)) {
    return right;
  }

  return left;
}

function pickBetterGeo(left, right) {
  if (left.geocodingStatus !== "matched" && right.geocodingStatus === "matched") {
    return right;
  }

  return left;
}

function uniqueStrings(values) {
  return [...new Set(values.filter(hasText).map((value) => value.trim()))];
}

function mergePhotos(primaryPhotos = [], secondaryPhotos = []) {
  const seen = new Set();
  const merged = [];

  for (const photo of [...primaryPhotos, ...secondaryPhotos]) {
    if (!photo?.url || seen.has(photo.url)) {
      continue;
    }

    seen.add(photo.url);
    merged.push({ ...photo, isPrimary: merged.length === 0 });
  }

  return merged;
}

function mergeCourt(existing, incoming) {
  const primary = scoreCourt(incoming) > scoreCourt(existing) ? incoming : existing;
  const secondary = primary === incoming ? existing : incoming;
  const countSource = pickBetterCourtCount(primary, secondary);
  const geoSource = pickBetterGeo(primary, secondary);

  return {
    ...secondary,
    ...primary,
    phone: hasKnownPhone(primary) ? primary.phone : secondary.phone,
    courtCount: countSource.courtCount,
    courtCountStatus: countSource.courtCountStatus,
    venueType: primary.venueType && primary.venueType !== "unknown" ? primary.venueType : secondary.venueType,
    feeInfo: pickBetterFeeInfo(primary.feeInfo, secondary.feeInfo),
    latitude: geoSource.latitude,
    longitude: geoSource.longitude,
    geocodingProvider: geoSource.geocodingProvider,
    geocodingStatus: geoSource.geocodingStatus,
    geocodingDisplayName: geoSource.geocodingDisplayName,
    facilities: uniqueStrings([...(primary.facilities || []), ...(secondary.facilities || [])]),
    hours: hasText(primary.hours) ? primary.hours : secondary.hours,
    parking: hasText(primary.parking) ? primary.parking : secondary.parking,
    sourceUrl: hasText(primary.sourceUrl) ? primary.sourceUrl : secondary.sourceUrl,
    reservationUrl: hasText(primary.reservationUrl) ? primary.reservationUrl : secondary.reservationUrl,
    kakaoPlaceId: hasText(primary.kakaoPlaceId) ? primary.kakaoPlaceId : secondary.kakaoPlaceId,
    kakaoPlaceUrl: hasText(primary.kakaoPlaceUrl) ? primary.kakaoPlaceUrl : secondary.kakaoPlaceUrl,
    photos: mergePhotos(primary.photos, secondary.photos),
    updatedAt: [primary.updatedAt, secondary.updatedAt].filter(Boolean).sort().at(-1) ?? primary.updatedAt
  };
}

function dedupeCourts(courts) {
  const byAddress = new Map();
  const withoutAddress = [];

  for (const court of courts) {
    const key = normalizeAddress(court.address);

    if (!key) {
      withoutAddress.push(court);
      continue;
    }

    const existing = byAddress.get(key);
    byAddress.set(key, existing ? mergeCourt(existing, court) : court);
  }

  const regionOrder = {
    seoul: 0,
    gyeonggi: 1,
    incheon: 2
  };

  return [...byAddress.values(), ...withoutAddress].sort((left, right) => {
    const regionDiff = (regionOrder[left.region] ?? 99) - (regionOrder[right.region] ?? 99);
    if (regionDiff !== 0) return regionDiff;

    return [left.district || "", left.name || "", left.id || ""]
      .join("\t")
      .localeCompare([right.district || "", right.name || "", right.id || ""].join("\t"), "ko-KR");
  });
}

for (const file of files) {
  if (!fs.existsSync(file)) {
    continue;
  }

  const courts = JSON.parse(fs.readFileSync(file, "utf8"));
  const deduped = dedupeCourts(courts);
  fs.writeFileSync(file, `${JSON.stringify(deduped, null, 2)}\n`, "utf8");

  console.log(`${path.relative(projectRoot, file)}: ${courts.length} -> ${deduped.length}`);
}
