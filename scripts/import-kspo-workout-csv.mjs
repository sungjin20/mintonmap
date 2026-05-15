import { readFile, writeFile } from "node:fs/promises";
import path from "node:path";

const inputPath = path.resolve("data/raw/kspo_where_to_workout.csv");
const outputPath = path.resolve("data/courts.json");
const datasetUrl =
  "https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250";
const now = new Date().toISOString();

function parseCsvLine(line) {
  const values = [];
  let current = "";
  let quoted = false;

  for (let index = 0; index < line.length; index += 1) {
    const char = line[index];

    if (char === "\"") {
      if (quoted && line[index + 1] === "\"") {
        current += "\"";
        index += 1;
      } else {
        quoted = !quoted;
      }
      continue;
    }

    if (char === "," && !quoted) {
      values.push(current);
      current = "";
      continue;
    }

    current += char;
  }

  values.push(current);
  return values;
}

function parseCsv(content) {
  const lines = content.split(/\r?\n/).filter(Boolean);
  const header = parseCsvLine(lines[0].replace(/^\uFEFF/, ""));

  return lines.slice(1).map((line) => {
    const columns = parseCsvLine(line);
    return Object.fromEntries(header.map((name, index) => [name, columns[index] ?? ""]));
  });
}

function clean(value) {
  return (value || "")
    .replaceAll("&amp;gt;", ">")
    .replaceAll("&amp;lt;", "<")
    .replaceAll("&amp;amp;", "&")
    .replaceAll("&gt;", ">")
    .replaceAll("&lt;", "<")
    .replaceAll("&amp;", "&")
    .replace(/\s+/g, " ")
    .trim();
}

function normalize(value) {
  return clean(value).replace(/\s+/g, "").replace(/[()★]/g, "").toLowerCase();
}

function slugify(value) {
  return normalize(value)
    .replace(/[^a-z0-9가-힣]+/g, "-")
    .replace(/^-+|-+$/g, "");
}

function regionFromText(value) {
  if (/^(서울|서울특별시)/.test(value)) return "seoul";
  if (/^(경기|경기도)/.test(value)) return "gyeonggi";
  if (/^(인천|인천광역시)/.test(value)) return "incheon";
  return undefined;
}

function districtFromText(value) {
  const parts = clean(value).split(/\s+/);
  return parts[1] ?? "";
}

function parseCoordinates(value) {
  const numbers = clean(value)
    .match(/-?\d+(?:\.\d+)?/g)
    ?.map(Number);

  if (!numbers || numbers.length < 2) {
    return null;
  }

  const [first, second] = numbers;
  let longitude;
  let latitude;

  if (first >= 123 && first <= 132 && second >= 33 && second <= 39) {
    longitude = first;
    latitude = second;
  } else if (second >= 123 && second <= 132 && first >= 33 && first <= 39) {
    longitude = second;
    latitude = first;
  } else {
    return null;
  }

  if (longitude < 126 || longitude > 128.6 || latitude < 36.8 || latitude > 38.4) {
    return null;
  }

  return { latitude, longitude };
}

function extractPhone(...values) {
  const text = values.map(clean).join(" ");
  return text.match(/\d{2,3}-\d{3,4}-\d{4}/)?.[0] ?? "";
}

function normalizeUrl(value) {
  const trimmed = clean(value);

  if (!trimmed || trimmed === "-") return null;
  if (/^https?:\/\//i.test(trimmed)) return trimmed;
  if (/^[a-z0-9.-]+\.[a-z]{2,}/i.test(trimmed)) return `https://${trimmed}`;
  return null;
}

function inferVenueType(row) {
  const title = clean(row.TITLE);
  const text = clean(`${row.TITLE} ${row.MEDIUM} ${row.SUBJECTKEYWORD} ${row.VENUE}`);
  const indoorTitle = /실내|체육관|체육센터|스포츠센터|문화체육|구민체육|국민체육|센터|전용/.test(title);
  const outdoorTitle = /실외|야외|공원|하부|운동장|동네체육시설/.test(title);
  const indoor = /구기체육관|실내|체육관|체육센터|스포츠센터|전용/.test(text);
  const outdoor = /간이운동장|실외|야외|공원|하부|운동장|동네체육시설/.test(text);

  if (indoorTitle) return "indoor";
  if (outdoorTitle) return "outdoor";
  if (indoor && outdoor) return "mixed";
  if (indoor) return "indoor";
  if (outdoor) return "outdoor";
  return "outdoor";
}

function unknownFeeInfo(row) {
  return {
    status: "unknown",
    summary: "요금 확인 필요",
    sourceName: "국민체육진흥공단 외_어디서 운동할까",
    sourceUrl: datasetUrl,
    updatedAt: now
  };
}

function toCourt(row) {
  const address = clean(row.VENUE);
  const region = regionFromText(address) || regionFromText(clean(row.SPATIAL));
  const coordinates = parseCoordinates(row.RELATION);

  if (!region || !coordinates) {
    return null;
  }

  const title = clean(row.TITLE).replace(/★/g, "").trim();
  const relatedUrl = normalizeUrl(row.SOURCE);

  return {
    id: `kspo-${row.RNUM}-${slugify(title)}`,
    name: title,
    region,
    district: districtFromText(address) || districtFromText(row.SPATIAL),
    address,
    phone: extractPhone(row.REFERENCE, row.DESCRIPTION, row.CONTRIBUTOR) || "확인 필요",
    courtCount: 0,
    courtCountStatus: "unknown",
    venueType: inferVenueType(row),
    feeInfo: unknownFeeInfo(row),
    latitude: coordinates.latitude,
    longitude: coordinates.longitude,
    facilities: [clean(row.MEDIUM)].filter(Boolean),
    hours: clean(row.SUBDESCRIPTION),
    parking: null,
    source: "public",
    sourceName: "국민체육진흥공단 외_어디서 운동할까",
    sourceUrl: datasetUrl,
    reservationUrl: relatedUrl,
    geocodingProvider: "KSPO public dataset",
    geocodingStatus: "matched",
    geocodingDisplayName: address,
    updatedAt: now
  };
}

function distanceMeters(a, b) {
  const earthRadius = 6371000;
  const lat1 = (a.latitude * Math.PI) / 180;
  const lat2 = (b.latitude * Math.PI) / 180;
  const deltaLat = ((b.latitude - a.latitude) * Math.PI) / 180;
  const deltaLon = ((b.longitude - a.longitude) * Math.PI) / 180;
  const h =
    Math.sin(deltaLat / 2) ** 2 +
    Math.cos(lat1) * Math.cos(lat2) * Math.sin(deltaLon / 2) ** 2;

  return 2 * earthRadius * Math.asin(Math.sqrt(h));
}

const existing = JSON.parse(await readFile(outputPath, "utf-8").catch(() => "[]"));
const rows = parseCsv(await readFile(inputPath, "utf-8"));
const imported = rows
  .filter((row) => row.COLLECTIONDB === "공공체육시설정보 DB")
  .filter((row) => clean(`${row.TITLE} ${row.MEDIUM} ${row.SUBJECTKEYWORD}`).includes("배드민턴"))
  .map(toCourt)
  .filter(Boolean);

const merged = [...existing];
const addressIndex = new Set(merged.map((court) => normalize(court.address)));
let added = 0;
let enriched = 0;

for (const court of imported) {
  const normalizedAddress = normalize(court.address);
  const duplicate = merged.find((existingCourt) => {
    if (normalize(existingCourt.address) === normalizedAddress) return true;
    if (!existingCourt.latitude || !existingCourt.longitude) return false;

    const meters = distanceMeters(existingCourt, court);
    const existingName = normalize(existingCourt.name);
    const courtName = normalize(court.name);

    return meters < 80 && (existingName.includes(courtName) || courtName.includes(existingName));
  });

  if (duplicate) {
    duplicate.phone ||= court.phone;
    duplicate.venueType =
      duplicate.venueType && duplicate.venueType !== "unknown" ? duplicate.venueType : court.venueType;
    duplicate.feeInfo ??= court.feeInfo;
    duplicate.reservationUrl ??= court.reservationUrl;
    duplicate.sourceUrl ??= court.sourceUrl;
    duplicate.geocodingProvider ??= court.geocodingProvider;
    duplicate.geocodingStatus ??= court.geocodingStatus;
    enriched += 1;
    continue;
  }

  if (addressIndex.has(normalizedAddress)) {
    continue;
  }

  merged.push(court);
  addressIndex.add(normalizedAddress);
  added += 1;
}

merged.sort((a, b) => {
  const regionOrder = { seoul: 0, gyeonggi: 1, incheon: 2 };
  return (
    (regionOrder[a.region] ?? 9) - (regionOrder[b.region] ?? 9) ||
    (a.district || "").localeCompare(b.district || "", "ko") ||
    a.name.localeCompare(b.name, "ko")
  );
});

await writeFile(outputPath, `${JSON.stringify(merged, null, 2)}\n`, "utf-8");

const byRegion = merged.reduce((acc, court) => {
  acc[court.region] = (acc[court.region] ?? 0) + 1;
  return acc;
}, {});

console.log(`Read ${imported.length} KSPO badminton rows with valid 수도권 coordinates`);
console.log(`Added ${added}, enriched ${enriched}, wrote ${merged.length} courts to ${outputPath}`);
console.log(byRegion);
