import { readFile, writeFile } from "node:fs/promises";
import path from "node:path";

const seedPath = path.resolve("data/courts.seed.json");
const outputPath = path.resolve("data/courts.json");
const now = new Date().toISOString();

const keywords = ["배드민턴장"];
const radius = 20000;
const size = 15;
const maxPages = 3;

const centers = [
  // Seoul
  ["seoul-center", 126.978, 37.5665],
  ["seoul-northwest", 126.914, 37.602],
  ["seoul-northeast", 127.074, 37.654],
  ["seoul-southwest", 126.886, 37.482],
  ["seoul-southeast", 127.112, 37.504],
  // Incheon
  ["incheon-center", 126.7052, 37.4563],
  ["incheon-bupyeong", 126.7219, 37.507],
  ["incheon-yeonsu", 126.6788, 37.4103],
  ["incheon-gyeyang", 126.7378, 37.5385],
  ["incheon-ganghwa", 126.4877, 37.7465],
  // Gyeonggi major cities
  ["gyeonggi-suwon", 127.0286, 37.2636],
  ["gyeonggi-seongnam", 127.1265, 37.42],
  ["gyeonggi-goyang", 126.8318, 37.6584],
  ["gyeonggi-yongin", 127.1776, 37.2411],
  ["gyeonggi-bucheon", 126.766, 37.5034],
  ["gyeonggi-ansan", 126.8309, 37.3219],
  ["gyeonggi-anyang", 126.9568, 37.3943],
  ["gyeonggi-namyangju", 127.2165, 37.636],
  ["gyeonggi-hwaseong", 126.831, 37.1995],
  ["gyeonggi-pyeongtaek", 127.1127, 36.9921],
  ["gyeonggi-siheung", 126.8029, 37.3801],
  ["gyeonggi-gimpo", 126.7157, 37.6153],
  ["gyeonggi-paju", 126.7799, 37.7599],
  ["gyeonggi-uijeongbu", 127.047, 37.7381],
  ["gyeonggi-hanam", 127.2148, 37.5393],
  ["gyeonggi-gwangju", 127.2578, 37.4294],
  ["gyeonggi-icheon", 127.435, 37.272],
  ["gyeonggi-anseong", 127.2798, 37.0079],
  ["gyeonggi-pocheon", 127.2003, 37.8949],
  ["gyeonggi-yangju", 127.0458, 37.7853],
  ["gyeonggi-gapyeong", 127.5096, 37.8315],
  ["gyeonggi-yangpyeong", 127.4875, 37.4912],
  ["gyeonggi-yeoju", 127.6371, 37.298],
  ["gyeonggi-dongducheon", 127.0607, 37.9036],
  ["gyeonggi-gunpo", 126.9352, 37.3617],
  ["gyeonggi-uiwang", 126.9683, 37.3448],
  ["gyeonggi-gwacheon", 126.9877, 37.4292],
  ["gyeonggi-gwangmyeong", 126.8647, 37.4785],
  ["gyeonggi-osan", 127.0775, 37.1498]
];

const sleep = (ms) => new Promise((resolve) => setTimeout(resolve, ms));

function loadEnvFile(filePath) {
  return readFile(filePath, "utf-8")
    .then((content) => {
      for (const line of content.split(/\r?\n/)) {
        const trimmed = line.trim();

        if (!trimmed || trimmed.startsWith("#") || !trimmed.includes("=")) {
          continue;
        }

        const [key, ...valueParts] = trimmed.split("=");
        process.env[key] ??= valueParts.join("=").trim();
      }
    })
    .catch(() => undefined);
}

function getKakaoKey() {
  return (
    process.env.KAKAO_REST_API_KEY ||
    process.env.VITE_KAKAO_REST_API_KEY ||
    process.env.VITE_KAKAO_MAP_APP_KEY ||
    process.env.KAKAO_JAVASCRIPT_KEY
  );
}

function regionFromAddress(address) {
  if (address.startsWith("서울")) return "seoul";
  if (address.startsWith("경기")) return "gyeonggi";
  if (address.startsWith("인천")) return "incheon";
  return undefined;
}

function districtFromAddress(address) {
  const parts = address.split(/\s+/);
  return parts[1] ?? "";
}

function normalize(value) {
  return value.replace(/\s+/g, "").replace(/[()]/g, "").toLowerCase();
}

function slugify(value) {
  return value
    .trim()
    .toLowerCase()
    .replace(/[^a-z0-9가-힣]+/g, "-")
    .replace(/^-+|-+$/g, "");
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

function isCourtCandidate(place) {
  const text = `${place.place_name} ${place.category_name} ${place.road_address_name} ${place.address_name}`;

  if (/배드민턴/.test(place.place_name)) return true;
  if (/배드민턴/.test(text) && /스포츠|체육|운동|레저|공원|문화/.test(text)) return true;
  if (/스포츠시설|스포츠센터|체육관|문화체육|구민체육|국민체육|다목적체육/.test(text)) return true;

  return false;
}

function inferVenueType(place) {
  const title = place.place_name || "";
  const text = `${place.place_name} ${place.category_name} ${place.road_address_name} ${place.address_name}`;
  const indoorTitle = /실내|체육관|체육센터|스포츠센터|문화체육|구민체육|국민체육|센터|구립/.test(title);
  const outdoorTitle = /실외|야외|공원|근린공원|하부|한강|천변|운동장/.test(title);
  const indoor = /실내|체육관|체육센터|스포츠센터|문화체육|구민체육|국민체육|센터/.test(text);
  const outdoor = /실외|야외|공원|근린공원|하부|마사토|운동장/.test(text);

  if (indoorTitle) return "indoor";
  if (outdoorTitle) return "outdoor";
  if (indoor && outdoor) return "mixed";
  if (indoor) return "indoor";
  if (outdoor) return "outdoor";
  return "outdoor";
}

function unknownFeeInfo(sourceName, sourceUrl) {
  return {
    status: "unknown",
    summary: "요금 확인 필요",
    sourceName,
    sourceUrl
  };
}

async function kakaoRequest(pathname, params, key, retryCount = 0) {
  const url = new URL(`https://dapi.kakao.com${pathname}`);

  for (const [name, value] of Object.entries(params)) {
    url.searchParams.set(name, String(value));
  }

  const response = await fetch(url, {
    headers: {
      Authorization: `KakaoAK ${key}`,
      // JavaScript key calls require a Kakao Agent header. REST keys also accept it.
      KA: "sdk/1.0 os/javascript lang/ko-KR origin/http%3A%2F%2Flocalhost%3A3000"
    }
  });

  if (!response.ok) {
    const body = await response.text();

    if (body.includes("API limit has been exceeded") && retryCount < 4) {
      const waitMs = 2500 * (retryCount + 1);
      console.warn(`Kakao API limit hit. Retrying in ${waitMs}ms.`);
      await sleep(waitMs);
      return kakaoRequest(pathname, params, key, retryCount + 1);
    }

    throw new Error(`Kakao API ${response.status}: ${body}`);
  }

  return response.json();
}

async function verifyAddress(court, key) {
  const data = await kakaoRequest("/v2/local/search/address.json", { query: court.address }, key);
  const document = data.documents?.[0];

  if (!document) {
    return {
      ...court,
      geocodingProvider: "Kakao Local API",
      geocodingStatus: "not_found",
      geocodingDisplayName: null
    };
  }

  return {
    ...court,
    latitude: Number(document.y),
    longitude: Number(document.x),
    geocodingProvider: "Kakao Local API",
    geocodingStatus: "matched",
    geocodingDisplayName: document.road_address?.address_name || document.address?.address_name || document.address_name
  };
}

async function searchKeyword(keyword, center, page, key) {
  const [, x, y] = center;
  return kakaoRequest(
    "/v2/local/search/keyword.json",
    {
      query: keyword,
      x,
      y,
      radius,
      page,
      size,
      sort: "distance"
    },
    key
  );
}

function placeToCourt(place) {
  const address = place.road_address_name || place.address_name;
  const region = regionFromAddress(address);

  if (!region) {
    return null;
  }

  return {
    id: `kakao-${place.id}`,
    name: place.place_name,
    region,
    district: districtFromAddress(address),
    address,
    phone: place.phone || "",
    courtCount: 0,
    courtCountStatus: "unknown",
    venueType: inferVenueType(place),
    feeInfo: unknownFeeInfo("Kakao Local keyword search", place.place_url),
    latitude: Number(place.y),
    longitude: Number(place.x),
    facilities: [],
    hours: null,
    parking: null,
    source: "kakao_local",
    sourceName: "Kakao Local keyword search",
    sourceUrl: place.place_url,
    reservationUrl: null,
    kakaoPlaceId: place.id,
    kakaoPlaceUrl: place.place_url,
    geocodingProvider: "Kakao Local API",
    geocodingStatus: "place_keyword_matched",
    geocodingDisplayName: place.road_address_name || place.address_name,
    updatedAt: now
  };
}

await loadEnvFile(path.resolve("apps/frontend/.env"));
await loadEnvFile(path.resolve("apps/backend/.env"));

const key = getKakaoKey();

if (!key) {
  console.error("Missing Kakao API key. Set KAKAO_REST_API_KEY or VITE_KAKAO_MAP_APP_KEY.");
  process.exit(1);
}

const seeds = JSON.parse(await readFile(seedPath, "utf-8"));
const existing = JSON.parse(await readFile(outputPath, "utf-8").catch(() => "[]"));
const verifiedSeeds = [];

for (const seed of seeds) {
  try {
    verifiedSeeds.push(await verifyAddress(seed, key));
    console.log(`VERIFY ${seed.id}`);
  } catch (error) {
    console.error(`VERIFY_FAIL ${seed.id}`, error);
    verifiedSeeds.push(seed);
  }

  await sleep(120);
}

const placesById = new Map();

let stoppedByLimit = false;

for (const keyword of keywords) {
  if (stoppedByLimit) break;

  for (const center of centers) {
    if (stoppedByLimit) break;

    for (let page = 1; page <= maxPages; page += 1) {
      let data;

      try {
        data = await searchKeyword(keyword, center, page, key);
      } catch (error) {
        console.error(`SEARCH_FAIL ${keyword} ${center[0]} page=${page}`, error);
        stoppedByLimit = true;
        break;
      }

      for (const place of data.documents ?? []) {
        const address = place.road_address_name || place.address_name;
        const region = regionFromAddress(address);

        if (!region || !isCourtCandidate(place)) {
          continue;
        }

        placesById.set(place.id, place);
      }

      console.log(`SEARCH ${keyword} ${center[0]} page=${page} total=${placesById.size}`);

      if (data.meta?.is_end) {
        break;
      }

      await sleep(450);
    }
  }
}

const mergedByAddress = new Map();

function mergeBaseCourt(court) {
  const key = court.address ? normalize(court.address) : court.id;
  const previous = mergedByAddress.get(key);

  if (!previous) {
    mergedByAddress.set(key, court);
    return;
  }

  mergedByAddress.set(key, {
    ...previous,
    ...court,
    venueType: court.venueType ?? previous.venueType,
    feeInfo: court.feeInfo ?? previous.feeInfo,
    sourceUrl: court.sourceUrl ?? previous.sourceUrl,
    reservationUrl: court.reservationUrl ?? previous.reservationUrl,
    kakaoPlaceId: court.kakaoPlaceId ?? previous.kakaoPlaceId,
    kakaoPlaceUrl: court.kakaoPlaceUrl ?? previous.kakaoPlaceUrl
  });
}

for (const court of [...verifiedSeeds, ...existing]) {
  mergeBaseCourt(court);
}

const merged = [...mergedByAddress.values()];
const addressIndex = new Set(merged.map((court) => normalize(court.address)));

for (const place of placesById.values()) {
  const court = placeToCourt(place);

  if (!court) {
    continue;
  }

  const normalizedAddress = normalize(court.address);
  const duplicate = merged.find((existing) => {
    if (normalize(existing.address) === normalizedAddress) return true;
    if (!existing.latitude || !existing.longitude) return false;

    const meters = distanceMeters(existing, court);
    const existingName = normalize(existing.name);
    const courtName = normalize(court.name);

    return meters < 80 && (existingName.includes(courtName) || courtName.includes(existingName));
  });

  if (duplicate) {
    duplicate.kakaoPlaceId ??= place.id;
    duplicate.kakaoPlaceUrl ??= place.place_url;
    duplicate.sourceUrl ??= place.place_url;
    duplicate.phone ||= place.phone || "";
    duplicate.venueType = duplicate.venueType && duplicate.venueType !== "unknown" ? duplicate.venueType : inferVenueType(place);
    duplicate.feeInfo ??= unknownFeeInfo("Kakao Local keyword search", place.place_url);
    continue;
  }

  if (addressIndex.has(normalizedAddress)) {
    continue;
  }

  merged.push(court);
  addressIndex.add(normalizedAddress);
}

merged.sort((a, b) => {
  const regionOrder = { seoul: 0, gyeonggi: 1, incheon: 2 };
  return (
    (regionOrder[a.region] ?? 9) - (regionOrder[b.region] ?? 9) ||
    a.district.localeCompare(b.district, "ko") ||
    a.name.localeCompare(b.name, "ko")
  );
});

await writeFile(outputPath, `${JSON.stringify(merged, null, 2)}\n`, "utf-8");

const byRegion = merged.reduce((acc, court) => {
  acc[court.region] = (acc[court.region] ?? 0) + 1;
  return acc;
}, {});

console.log(`Wrote ${merged.length} courts to ${outputPath}`);
console.log(byRegion);
