import { readFile, writeFile } from "node:fs/promises";
import path from "node:path";

const outputPath = path.resolve("data/courts.json");
const now = new Date().toISOString();
const seoulSportsBase = "https://sports.seoul.go.kr/main/facilities/facilities_list.json";
const seoulSportsSourceName = "서울시 생활체육포털";

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

function compact(value) {
  return value?.replace(/\s+/g, " ").trim() || "";
}

function normalize(value) {
  return compact(value).replace(/\s+/g, "").replace(/[()★]/g, "").toLowerCase();
}

function slugify(value) {
  return normalize(value)
    .replace(/[^a-z0-9가-힣]+/g, "-")
    .replace(/^-+|-+$/g, "");
}

function districtName(value) {
  const district = compact(value);

  if (!district) return "";
  return district.endsWith("구") ? district : `${district}구`;
}

function sourceUrl(ftIdx) {
  return `https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=${ftIdx}`;
}

function buildAddress(item) {
  if (item.ft_addr) {
    return compact(item.ft_addr);
  }

  if (item.ft_addr2 && item.ar_cd_name) {
    return compact(`서울특별시 ${districtName(item.ar_cd_name)} ${item.ft_addr2}`);
  }

  return "";
}

function parseCourtCount(value) {
  const text = compact(value || "");
  const match = text.match(/(?:배드민턴\s*)?코트\s*(\d+)\s*면/) || text.match(/(\d+)\s*면/);

  if (!match) {
    return { courtCount: 0, courtCountStatus: "unknown" };
  }

  return { courtCount: Number(match[1]), courtCountStatus: "confirmed" };
}

function facilities(value) {
  const text = compact(value || "");

  if (!text || text === "-" || text === "편의시설 없음") {
    return [];
  }

  return text
    .split(/[,/·\n\r]+/)
    .map((part) => compact(part))
    .filter(Boolean);
}

function optionalUrl(value) {
  const trimmed = compact(value || "");
  return /^https?:\/\//i.test(trimmed) ? trimmed : null;
}

function buildFeeInfo(item) {
  const summary = compact(item.ft_money || "");

  if (!summary) {
    return {
      status: "unknown",
      summary: "요금 확인 필요",
      sourceName: seoulSportsSourceName,
      sourceUrl: sourceUrl(item.ft_idx)
    };
  }

  const dayPass = summary.match(/(?:일일|일회|입장료|일일이용권?|일일이용)[^\n\r]*/)?.[0] ?? null;
  const rental = summary.match(/(?:대관|전용|체육경기)[^\n\r]*/)?.[0] ?? null;

  return {
    status: /상이|프로그램/.test(summary) ? "varies" : "known",
    summary,
    dayPass,
    rental,
    sourceName: seoulSportsSourceName,
    sourceUrl: sourceUrl(item.ft_idx),
    updatedAt: item.updatedate ? new Date(item.updatedate).toISOString() : now
  };
}

function inferVenueType(item) {
  const title = compact(item.ft_title || "");
  const text = compact(
    [
      item.ft_title,
      item.ft_kind_name,
      item.ft_size,
      item.ft_si,
      item.ft_addr,
      item.ft_addr2,
      item.ft_bigo,
      item.ft_request
    ]
      .filter(Boolean)
      .join(" ")
  );
  const indoorTitle = /실내|체육관|체육센터|스포츠센터|문화체육|구민체육|국민체육|센터|구립|전용/.test(title);
  const outdoorTitle = /실외|야외|공원|근린공원|하부|한강|천변|운동장/.test(title);
  const indoor = /실내|체육관|체육센터|스포츠센터|문화체육|구민체육|국민체육|센터|전용/.test(text);
  const outdoor = /실외|야외|공원|근린공원|하부|마사토|운동장/.test(text);

  if (indoorTitle) return "indoor";
  if (outdoorTitle && !indoor) return "outdoor";
  if (indoor && outdoor) return "mixed";
  if (indoor) return "indoor";
  if (outdoor) return "outdoor";
  return "outdoor";
}

function isBadmintonFacility(item) {
  const text = compact(
    [
      item.ft_title,
      item.ft_kind_name,
      item.ft_size,
      item.ft_si,
      item.ft_bigo,
      item.ft_request,
      item.ft_homepage_detail,
      item.ft_homepage_link
    ]
      .filter(Boolean)
      .join(" ")
  );

  return /배드민턴|민턴장|민턴/.test(text);
}

async function fetchSeoulPage(cp) {
  const url = new URL(seoulSportsBase);
  const forcedQuery = compact(process.env.SEOUL_SPORTS_QUERY || "");

  if (forcedQuery) {
    url.searchParams.set("sv", forcedQuery);
  }

  url.searchParams.set("listType", "list");
  url.searchParams.set("use_yn", "Y");
  url.searchParams.set("cp", String(cp));

  const response = await fetch(url);

  if (!response.ok) {
    throw new Error(`Seoul Sports API ${response.status}`);
  }

  return response.json();
}

async function kakaoAddress(address, key, retryCount = 0) {
  if (!key || !address) return null;

  const url = new URL("https://dapi.kakao.com/v2/local/search/address.json");
  url.searchParams.set("query", address);

  const response = await fetch(url, {
    headers: {
      Authorization: `KakaoAK ${key}`,
      KA: "sdk/1.0 os/javascript lang/ko-KR origin/http%3A%2F%2Flocalhost%3A3000"
    }
  });

  if (!response.ok) {
    const body = await response.text();

    if (body.includes("API limit has been exceeded") && retryCount < 1) {
      const waitMs = 2500 * (retryCount + 1);
      console.warn(`Kakao address API limit hit. Retrying in ${waitMs}ms.`);
      await sleep(waitMs);
      return kakaoAddress(address, key, retryCount + 1);
    }

    throw new Error(`Kakao address API ${response.status}: ${body}`);
  }

  const data = await response.json();
  return data.documents?.[0] ?? null;
}

function toCourt(item) {
  const address = buildAddress(item);
  const { courtCount, courtCountStatus } = parseCourtCount(item.ft_size || "");
  const titleSlug = slugify(item.ft_title);

  return {
    id: `seoul-sports-${item.ft_idx}-${titleSlug}`,
    name: compact(item.ft_title),
    region: "seoul",
    district: districtName(item.ar_cd_name),
    address,
    phone: compact(item.ft_phone || "") || "확인 필요",
    courtCount,
    courtCountStatus,
    venueType: inferVenueType(item),
    feeInfo: buildFeeInfo(item),
    latitude: item.lat ? Number(item.lat) : null,
    longitude: item.lng ? Number(item.lng) : null,
    facilities: facilities(item.ft_si),
    hours: compact(
      [item.ft_wd_time && `주중 ${item.ft_wd_time}`, item.ft_we_time && `주말 ${item.ft_we_time}`]
        .filter(Boolean)
        .join(" / ")
    ),
    parking: compact(item.ft_park || "") || null,
    source: "official",
    sourceName: seoulSportsSourceName,
    sourceUrl: sourceUrl(item.ft_idx),
    reservationUrl: optionalUrl(item.ft_homepage),
    geocodingProvider: item.lat && item.lng ? seoulSportsSourceName : undefined,
    geocodingStatus: item.lat && item.lng ? "matched" : "not_found",
    geocodingDisplayName: address || null,
    updatedAt: item.updatedate
      ? new Date(item.updatedate).toISOString()
      : item.inputdate
        ? new Date(item.inputdate).toISOString()
        : now
  };
}

await loadEnvFile(path.resolve("apps/frontend/.env"));
await loadEnvFile(path.resolve("apps/backend/.env"));

const kakaoKey = getKakaoKey();
let kakaoVerifyEnabled = Boolean(kakaoKey);
const existing = JSON.parse(await readFile(outputPath, "utf-8").catch(() => "[]"));
const imported = [];

const first = await fetchSeoulPage(1);
const totalPage = first.paging?.totalPage ?? 1;

for (let cp = 1; cp <= totalPage; cp += 1) {
  const page = cp === 1 ? first : await fetchSeoulPage(cp);

  for (const item of page.paging?.result ?? []) {
    if (item.ft_del_yn === "Y" || !isBadmintonFacility(item)) continue;

    const court = toCourt(item);
    const shouldVerifyWithKakao =
      kakaoVerifyEnabled &&
      kakaoKey &&
      court.address &&
      (!court.latitude || !court.longitude || process.env.KAKAO_VERIFY_ALL === "1");

    if (shouldVerifyWithKakao) {
      try {
        const kakao = await kakaoAddress(court.address, kakaoKey);

        if (kakao) {
          court.latitude = Number(kakao.y);
          court.longitude = Number(kakao.x);
          court.geocodingProvider = "Kakao Local API";
          court.geocodingStatus = "matched";
          court.geocodingDisplayName =
            kakao.road_address?.address_name || kakao.address?.address_name || kakao.address_name;
        }
      } catch (error) {
        console.error(`KAKAO_VERIFY_FAIL ${court.id}`, error);

        if (error instanceof Error && error.message.includes("API limit has been exceeded")) {
          kakaoVerifyEnabled = false;
          console.warn("Kakao address verification disabled for the remaining Seoul import run.");
        }
      }

      await sleep(250);
    }

    imported.push(court);
  }

  console.log(`SEOUL page=${cp}/${totalPage} imported=${imported.length}`);
}

const mergedByAddress = new Map();

for (const court of [...existing, ...imported]) {
  const key = court.address ? normalize(court.address) : court.id;
  const previous = mergedByAddress.get(key);

  if (!previous) {
    mergedByAddress.set(key, court);
    continue;
  }

  const preferImported = court.sourceName === seoulSportsSourceName;
  const courtHasCount = court.courtCountStatus === "confirmed";
  const previousHasCount = previous.courtCountStatus === "confirmed";

  if (preferImported || (courtHasCount && !previousHasCount)) {
    mergedByAddress.set(key, {
      ...previous,
      ...court,
      latitude: court.latitude ?? previous.latitude,
      longitude: court.longitude ?? previous.longitude,
      kakaoPlaceId: previous.kakaoPlaceId ?? court.kakaoPlaceId,
      kakaoPlaceUrl: previous.kakaoPlaceUrl ?? court.kakaoPlaceUrl
    });
  }
}

const merged = [...mergedByAddress.values()].sort((a, b) => {
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

console.log(`Imported ${imported.length} Seoul Sports badminton facilities`);
console.log(`Wrote ${merged.length} courts to ${outputPath}`);
console.log(byRegion);
