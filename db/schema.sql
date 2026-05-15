CREATE TABLE IF NOT EXISTS badminton_courts (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  region TEXT NOT NULL CHECK (region IN ('seoul', 'gyeonggi', 'incheon')),
  district TEXT,
  address TEXT NOT NULL,
  phone TEXT NOT NULL,
  court_count INTEGER NOT NULL DEFAULT 0 CHECK (court_count >= 0),
  court_count_status TEXT CHECK (court_count_status IN ('confirmed', 'unknown')),
  venue_type TEXT CHECK (venue_type IN ('indoor', 'outdoor', 'mixed', 'unknown')),
  fee_info JSONB,
  latitude DOUBLE PRECISION NOT NULL,
  longitude DOUBLE PRECISION NOT NULL,
  facilities TEXT[] NOT NULL DEFAULT ARRAY[]::TEXT[],
  hours TEXT,
  parking TEXT,
  source TEXT NOT NULL CHECK (source IN ('sample', 'official', 'public', 'kakao_local', 'user_report')),
  source_name TEXT,
  source_url TEXT,
  reservation_url TEXT,
  geocoding_provider TEXT,
  geocoding_status TEXT CHECK (geocoding_status IN ('matched', 'place_keyword_matched', 'not_found', 'error')),
  geocoding_display_name TEXT,
  kakao_place_id TEXT,
  kakao_place_url TEXT,
  updated_at TIMESTAMPTZ NOT NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE TABLE IF NOT EXISTS court_photos (
  id BIGSERIAL PRIMARY KEY,
  court_id TEXT NOT NULL REFERENCES badminton_courts(id) ON DELETE CASCADE,
  url TEXT NOT NULL,
  alt TEXT NOT NULL,
  source_name TEXT,
  source_url TEXT,
  is_primary BOOLEAN NOT NULL DEFAULT false,
  sort_order INTEGER NOT NULL DEFAULT 0,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE INDEX IF NOT EXISTS idx_badminton_courts_region ON badminton_courts(region);
CREATE INDEX IF NOT EXISTS idx_badminton_courts_venue_type ON badminton_courts(venue_type);
CREATE INDEX IF NOT EXISTS idx_badminton_courts_name ON badminton_courts(name);
CREATE INDEX IF NOT EXISTS idx_court_photos_court_id ON court_photos(court_id);
