import { readFile } from "node:fs/promises";
import path from "node:path";
import pg from "pg";

const generatedSourceName = "민턴맵 기본 커버";

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

function coverFor(court) {
  const venueType = court.venueType || "unknown";

  if (venueType === "indoor" || venueType === "outdoor" || venueType === "mixed") {
    return `/court-covers/${venueType}.svg`;
  }

  return "/court-covers/unknown.svg";
}

function photosFor(court) {
  if (Array.isArray(court.photos) && court.photos.length > 0) {
    return court.photos;
  }

  return [
    {
      url: coverFor(court),
      alt: `${court.name} 대표 이미지`,
      sourceName: generatedSourceName,
      sourceUrl: null,
      isPrimary: true
    }
  ];
}

await loadEnvFile(path.resolve("apps/backend/.env"));

if (!process.env.DATABASE_URL) {
  console.error("DATABASE_URL is required. Set it in apps/backend/.env or the shell environment.");
  process.exit(1);
}

const courts = JSON.parse(await readFile(path.resolve("data/courts.json"), "utf-8"));
const { Client } = pg;
const client = new Client({
  connectionString: process.env.DATABASE_URL,
  ssl: process.env.DATABASE_SSL === "true" ? { rejectUnauthorized: false } : undefined
});

await client.connect();

try {
  await client.query("BEGIN");

  for (const court of courts) {
    await client.query(
      `
        INSERT INTO badminton_courts (
          id, name, region, district, address, phone, court_count, court_count_status, venue_type,
          fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
          reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
          kakao_place_id, kakao_place_url, updated_at
        )
        VALUES (
          $1, $2, $3, $4, $5, $6, $7, $8, $9,
          $10::jsonb, $11, $12, $13, $14, $15, $16, $17, $18,
          $19, $20, $21, $22, $23, $24, $25
        )
        ON CONFLICT (id) DO UPDATE SET
          name = EXCLUDED.name,
          region = EXCLUDED.region,
          district = EXCLUDED.district,
          address = EXCLUDED.address,
          phone = EXCLUDED.phone,
          court_count = EXCLUDED.court_count,
          court_count_status = EXCLUDED.court_count_status,
          venue_type = EXCLUDED.venue_type,
          fee_info = EXCLUDED.fee_info,
          latitude = EXCLUDED.latitude,
          longitude = EXCLUDED.longitude,
          facilities = EXCLUDED.facilities,
          hours = EXCLUDED.hours,
          parking = EXCLUDED.parking,
          source = EXCLUDED.source,
          source_name = EXCLUDED.source_name,
          source_url = EXCLUDED.source_url,
          reservation_url = EXCLUDED.reservation_url,
          geocoding_provider = EXCLUDED.geocoding_provider,
          geocoding_status = EXCLUDED.geocoding_status,
          geocoding_display_name = EXCLUDED.geocoding_display_name,
          kakao_place_id = EXCLUDED.kakao_place_id,
          kakao_place_url = EXCLUDED.kakao_place_url,
          updated_at = EXCLUDED.updated_at
      `,
      [
        court.id,
        court.name,
        court.region,
        court.district ?? null,
        court.address,
        court.phone,
        court.courtCount,
        court.courtCountStatus ?? null,
        court.venueType ?? null,
        court.feeInfo ? JSON.stringify(court.feeInfo) : null,
        court.latitude,
        court.longitude,
        court.facilities ?? [],
        court.hours ?? null,
        court.parking ?? null,
        court.source,
        court.sourceName ?? null,
        court.sourceUrl ?? null,
        court.reservationUrl ?? null,
        court.geocodingProvider ?? null,
        court.geocodingStatus ?? null,
        court.geocodingDisplayName ?? null,
        court.kakaoPlaceId ?? null,
        court.kakaoPlaceUrl ?? null,
        court.updatedAt
      ]
    );

    await client.query("DELETE FROM court_photos WHERE court_id = $1", [court.id]);

    for (const [index, photo] of photosFor(court).entries()) {
      await client.query(
        `
          INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
          VALUES ($1, $2, $3, $4, $5, $6, $7)
        `,
        [
          court.id,
          photo.url,
          photo.alt,
          photo.sourceName ?? null,
          photo.sourceUrl ?? null,
          Boolean(photo.isPrimary || index === 0),
          index
        ]
      );
    }
  }

  await client.query("COMMIT");
  console.log(`Seeded ${courts.length} badminton courts into PostgreSQL.`);
} catch (error) {
  await client.query("ROLLBACK");
  throw error;
} finally {
  await client.end();
}
