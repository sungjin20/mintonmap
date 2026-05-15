export type CourtRegion = "seoul" | "gyeonggi" | "incheon";
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
  courtCountStatus?: "confirmed" | "unknown";
  venueType?: CourtVenueType;
  feeInfo?: CourtFeeInfo;
  photos?: CourtPhoto[];
  latitude: number;
  longitude: number;
  facilities: string[];
  hours?: string;
  parking?: string | null;
  source: "sample" | "official" | "public" | "kakao_local" | "user_report";
  sourceName?: string;
  sourceUrl?: string;
  reservationUrl?: string | null;
  kakaoPlaceId?: string;
  kakaoPlaceUrl?: string;
  updatedAt: string;
}

export type RegionFilter = "all" | CourtRegion;
