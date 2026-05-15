CREATE TABLE badminton_courts (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name VARCHAR(120) NOT NULL,
  region VARCHAR(30) NOT NULL CHECK (region IN ('seoul', 'gyeonggi')),
  address VARCHAR(255) NOT NULL,
  phone VARCHAR(40),
  court_count INTEGER NOT NULL CHECK (court_count >= 0),
  latitude NUMERIC(10, 7) NOT NULL,
  longitude NUMERIC(10, 7) NOT NULL,
  facilities JSONB NOT NULL DEFAULT '[]'::jsonb,
  hours VARCHAR(120),
  source VARCHAR(30) NOT NULL DEFAULT 'official',
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE INDEX idx_badminton_courts_region ON badminton_courts (region);
CREATE INDEX idx_badminton_courts_location ON badminton_courts (latitude, longitude);

CREATE TABLE court_reports (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  court_id UUID REFERENCES badminton_courts(id),
  report_type VARCHAR(30) NOT NULL CHECK (report_type IN ('new_court', 'update', 'closed', 'other')),
  name VARCHAR(120),
  address VARCHAR(255),
  phone VARCHAR(40),
  court_count INTEGER CHECK (court_count >= 0),
  message TEXT NOT NULL,
  reporter_email VARCHAR(255),
  status VARCHAR(30) NOT NULL DEFAULT 'pending' CHECK (status IN ('pending', 'reviewing', 'accepted', 'rejected')),
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);
