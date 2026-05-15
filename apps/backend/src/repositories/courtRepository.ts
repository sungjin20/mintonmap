import { z } from "zod";
import { getPool } from "../db/postgres.js";
import type { BadmintonCourt, CourtFilters, CourtRegion } from "../types.js";

const courtSchema = z.object({
  id: z.string().min(1),
  name: z.string().min(1),
  region: z.enum(["seoul", "gyeonggi", "incheon"]),
  district: z.string().optional(),
  address: z.string().min(1),
  phone: z.string().min(1),
  courtCount: z.number().int().nonnegative(),
  courtCountStatus: z.enum(["confirmed", "unknown"]).optional(),
  venueType: z.enum(["indoor", "outdoor", "mixed", "unknown"]).optional(),
  feeInfo: z
    .object({
      status: z.enum(["known", "varies", "unknown"]),
      summary: z.string().min(1),
      dayPass: z.string().nullable().optional(),
      rental: z.string().nullable().optional(),
      sourceName: z.string().optional(),
      sourceUrl: z.string().url().optional(),
      updatedAt: z.string().optional()
    })
    .optional(),
  photos: z
    .array(
      z.object({
        url: z.string().min(1),
        alt: z.string().min(1),
        sourceName: z.string().optional(),
        sourceUrl: z.string().url().nullable().optional(),
        isPrimary: z.boolean().optional()
      })
    )
    .default([]),
  latitude: z.number(),
  longitude: z.number(),
  facilities: z.array(z.string()).default([]),
  hours: z.string().optional(),
  parking: z.string().nullable().optional(),
  source: z.enum(["sample", "official", "public", "kakao_local", "user_report"]),
  sourceName: z.string().optional(),
  sourceUrl: z.string().url().optional(),
  reservationUrl: z.string().url().nullable().optional(),
  geocodingProvider: z.string().optional(),
  geocodingStatus: z.enum(["matched", "place_keyword_matched", "not_found", "error"]).optional(),
  geocodingDisplayName: z.string().nullable().optional(),
  kakaoPlaceId: z.string().optional(),
  kakaoPlaceUrl: z.string().url().optional(),
  updatedAt: z.string().datetime()
});

const courtsSchema = z.array(courtSchema);

interface DbCourtRow {
  id: string;
  name: string;
  region: CourtRegion;
  district: string | null;
  address: string;
  phone: string;
  court_count: number;
  court_count_status: "confirmed" | "unknown" | null;
  venue_type: "indoor" | "outdoor" | "mixed" | "unknown" | null;
  fee_info: BadmintonCourt["feeInfo"] | null;
  latitude: number;
  longitude: number;
  facilities: string[] | null;
  hours: string | null;
  parking: string | null;
  source: BadmintonCourt["source"];
  source_name: string | null;
  source_url: string | null;
  reservation_url: string | null;
  geocoding_provider: string | null;
  geocoding_status: BadmintonCourt["geocodingStatus"] | null;
  geocoding_display_name: string | null;
  kakao_place_id: string | null;
  kakao_place_url: string | null;
  updated_at: Date | string;
  photos: BadmintonCourt["photos"];
}

export function isCourtRegion(value: unknown): value is CourtRegion {
  return value === "seoul" || value === "gyeonggi" || value === "incheon";
}

function rowToCourt(row: DbCourtRow): BadmintonCourt {
  return {
    id: row.id,
    name: row.name,
    region: row.region,
    district: row.district ?? undefined,
    address: row.address,
    phone: row.phone,
    courtCount: row.court_count,
    courtCountStatus: row.court_count_status ?? undefined,
    venueType: row.venue_type ?? undefined,
    feeInfo: row.fee_info ?? undefined,
    photos: row.photos ?? [],
    latitude: Number(row.latitude),
    longitude: Number(row.longitude),
    facilities: row.facilities ?? [],
    hours: row.hours ?? undefined,
    parking: row.parking,
    source: row.source,
    sourceName: row.source_name ?? undefined,
    sourceUrl: row.source_url ?? undefined,
    reservationUrl: row.reservation_url,
    geocodingProvider: row.geocoding_provider ?? undefined,
    geocodingStatus: row.geocoding_status ?? undefined,
    geocodingDisplayName: row.geocoding_display_name,
    kakaoPlaceId: row.kakao_place_id ?? undefined,
    kakaoPlaceUrl: row.kakao_place_url ?? undefined,
    updatedAt: row.updated_at instanceof Date ? row.updated_at.toISOString() : new Date(row.updated_at).toISOString()
  };
}

async function readCourtsFromPostgres(filters: CourtFilters = {}): Promise<BadmintonCourt[]> {
  const where: string[] = [];
  const values: string[] = [];

  if (filters.region) {
    values.push(filters.region);
    where.push(`c.region = $${values.length}`);
  }

  if (filters.q?.trim()) {
    values.push(`%${filters.q.trim()}%`);
    where.push(`(c.name ILIKE $${values.length} OR c.address ILIKE $${values.length} OR c.district ILIKE $${values.length})`);
  }

  const query = `
    SELECT
      c.*,
      COALESCE(
        json_agg(
          json_build_object(
            'url', p.url,
            'alt', p.alt,
            'sourceName', p.source_name,
            'sourceUrl', p.source_url,
            'isPrimary', p.is_primary
          )
          ORDER BY p.is_primary DESC, p.sort_order ASC, p.id ASC
        ) FILTER (WHERE p.id IS NOT NULL),
        '[]'::json
      ) AS photos
    FROM badminton_courts c
    LEFT JOIN court_photos p ON p.court_id = c.id
    ${where.length > 0 ? `WHERE ${where.join(" AND ")}` : ""}
    GROUP BY c.id
    ORDER BY
      CASE c.region WHEN 'seoul' THEN 0 WHEN 'gyeonggi' THEN 1 WHEN 'incheon' THEN 2 ELSE 9 END,
      c.district NULLS LAST,
      c.name ASC
  `;

  const result = await getPool().query<DbCourtRow>(query, values);
  return courtsSchema.parse(result.rows.map(rowToCourt));
}

export async function listCourts(filters: CourtFilters = {}): Promise<BadmintonCourt[]> {
  return readCourtsFromPostgres(filters);
}
