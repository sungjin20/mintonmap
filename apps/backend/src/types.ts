export type CourtRegion = "seoul" | "gyeonggi" | "incheon";

export type CourtSource = "sample" | "official" | "public" | "kakao_local" | "user_report";
export type CourtCountStatus = "confirmed" | "unknown";
export type CourtVenueType = "indoor" | "outdoor" | "mixed" | "unknown";
export type CourtFeeStatus = "known" | "varies" | "unknown";

export interface CourtFeeInfo {
  status: CourtFeeStatus;
  summary: string;
  dayPass?: string | null;
  rental?: string | null;
  sourceName?: string;
  sourceUrl?: string;
  updatedAt?: string;
}

export interface CourtPhoto {
  url: string;
  alt: string;
  sourceName?: string;
  sourceUrl?: string | null;
  isPrimary?: boolean;
}

export interface BadmintonCourt {
  id: string;
  name: string;
  region: CourtRegion;
  district?: string;
  address: string;
  phone: string;
  courtCount: number;
  courtCountStatus?: CourtCountStatus;
  venueType?: CourtVenueType;
  feeInfo?: CourtFeeInfo;
  photos?: CourtPhoto[];
  latitude: number;
  longitude: number;
  facilities: string[];
  hours?: string;
  parking?: string | null;
  source: CourtSource;
  sourceName?: string;
  sourceUrl?: string;
  reservationUrl?: string | null;
  geocodingProvider?: string;
  geocodingStatus?: "matched" | "place_keyword_matched" | "not_found" | "error";
  geocodingDisplayName?: string | null;
  kakaoPlaceId?: string;
  kakaoPlaceUrl?: string;
  updatedAt: string;
}

export interface CourtFilters {
  region?: CourtRegion;
  q?: string;
}
