BEGIN;

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-776-대치유수지체육공원', '대치유수지체육공원', 'seoul', '강남구',
  '서울특별시 강남구 역삼로107길 20-30', '02-2051-2285', 0,
  'unknown', 'outdoor', '{"status":"varies","summary":"운영 시설에 따라 이용 요금 상이","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=776","updatedAt":"2024-08-01T07:33:09.000Z"}'::jsonb,
  37.5023215318261, 127.067439347636, ARRAY['편의 시설 없음']::text[], '주중 07:00~21:00 / 주말 07:00~21:00',
  '주차장 없음 (예약자에 한해 노상 공영주차장 할인 도장 적용)', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=776', 'http://www.대치유수지.kr/?act=main', '서울시 생활체육포털',
  'matched', '서울특별시 강남구 역삼로107길 20-30', NULL,
  NULL, '2024-08-01T07:33:09.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-776-대치유수지체육공원';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-776-대치유수지체육공원', '/court-covers/outdoor.svg', '대치유수지체육공원 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1573-도담어린이공원배드민턴장', '도담어린이공원 배드민턴장', 'seoul', '강남구',
  '서울 강남구 세곡동 548', '02-3423-6262', 3,
  'confirmed', 'outdoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1573"}'::jsonb,
  37.467279896281, 127.098689042774, ARRAY[]::text[], '주중 00:00~24:00 / 주말 00:00~24:00',
  '별도의 주차 시설 없음', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1573', NULL, '서울시 생활체육포털',
  'matched', '서울 강남구 세곡동 548', NULL,
  NULL, '2025-09-26T02:08:36.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1573-도담어린이공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1573-도담어린이공원배드민턴장', '/court-covers/outdoor.svg', '도담어린이공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1379-매봉산실내배드민턴장', '매봉산실내배드민턴장', 'seoul', '강남구',
  '서울특별시 강남구 남부순환로 2711', '02-2176-0886', 4,
  'confirmed', 'indoor', '{"status":"known","summary":"(1시간 이용 기준) 평일 : 2,000원 / 주말 : 2,600원","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1379","updatedAt":"2025-02-04T02:15:35.000Z"}'::jsonb,
  37.4861377475079, 127.042415921069, ARRAY['샤워실', '탈의실', '옥상정원']::text[], '주중 06:00~22:00 / 주말 06:00~22:00 / .매주 월요일 및 공휴일 휴관',
  '주차 불가', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1379', 'https://life.gangnam.go.kr/fmcs/181', '서울시 생활체육포털',
  'matched', '서울특별시 강남구 남부순환로 2711', NULL,
  NULL, '2025-02-04T02:15:35.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1379-매봉산실내배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1379-매봉산실내배드민턴장', '/court-covers/indoor.svg', '매봉산실내배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1574-행복어린이공원배드민턴장', '행복어린이공원 배드민턴장', 'seoul', '강남구',
  '서울 강남구 세곡동 546', '02-3423-6262', 1,
  'confirmed', 'outdoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1574"}'::jsonb,
  37.4672653027646, 127.097163432383, ARRAY['음수대']::text[], '주중 00:00~24:00 / 주말 00:00~24:00',
  '별도의 주차 시설 없음', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1574', NULL, '서울시 생활체육포털',
  'matched', '서울 강남구 세곡동 546', NULL,
  NULL, '2025-09-26T02:14:23.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1574-행복어린이공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1574-행복어린이공원배드민턴장', '/court-covers/outdoor.svg', '행복어린이공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1493-동명근린공원배드민턴장', '동명근린공원 배드민턴장', 'seoul', '강동구',
  '서울특별시 강동구 아리수로78길 23', '02-3425-8820', 0,
  'unknown', 'outdoor', '{"status":"varies","summary":"운영 프로그램에 따라 이용 요금 상이","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1493","updatedAt":"2025-09-26T02:25:51.000Z"}'::jsonb,
  37.5611349654933, 127.164458877407, ARRAY['샤워실', '탈의실', '음수대']::text[], '주중 09:00~18:00 / 주말 09:00~18:00',
  '주차 무료 (12면) 주차 공간이 협소하므로 대중교통 이용', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1493', 'http://parks.seoul.go.kr/parks/detailView.do?pIdx=71', '서울시 생활체육포털',
  'matched', '서울특별시 강동구 아리수로78길 23', NULL,
  NULL, '2025-09-26T02:25:51.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1493-동명근린공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1493-동명근린공원배드민턴장', '/court-covers/outdoor.svg', '동명근린공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-807-샘터근린공원배드민턴장', '샘터근린공원 배드민턴장', 'seoul', '강동구',
  '서울특별시 강동구 동남로 990', '02-2045-7875', 5,
  'confirmed', 'outdoor', '{"status":"varies","summary":"운영 프로그램에 따라 이용 요금 상이","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=807","updatedAt":"2025-02-24T03:01:54.000Z"}'::jsonb,
  37.5621451216783, 127.157551026519, ARRAY['샤워실', '탈의실']::text[], '주중 06:00~22:00 / 주말 토요일 06:00~22:00, 일요일 06:00~22:00',
  '주차 무료 주차장이 협소하므로 대중교통 이용 권장', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=807', 'https://www.igangdong.or.kr/page/ch/ch_0701.asp', '서울시 생활체육포털',
  'matched', '서울특별시 강동구 동남로 990', NULL,
  NULL, '2025-02-24T03:01:54.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-807-샘터근린공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-807-샘터근린공원배드민턴장', '/court-covers/outdoor.svg', '샘터근린공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1561-성내하니공원배드민턴장', '성내하니공원 배드민턴장', 'seoul', '강동구',
  '서울특별시 강동구 성내로3가길 71', '02-3425-6440', 2,
  'confirmed', 'outdoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1561"}'::jsonb,
  37.5294517672494, 127.126539866277, ARRAY['화장실']::text[], '주중 00:00~24:00 / 주말 00:00~24:00',
  '주차 불가', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1561', NULL, '서울시 생활체육포털',
  'matched', '서울특별시 강동구 성내로3가길 71', NULL,
  NULL, '2021-12-28T00:09:10.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1561-성내하니공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1561-성내하니공원배드민턴장', '/court-covers/outdoor.svg', '성내하니공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1563-송림근린공원배드민턴장', '송림근린공원 배드민턴장', 'seoul', '강동구',
  '서울특별시 강동구 고덕로 지하253', '02-3425-6440', 2,
  'confirmed', 'outdoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1563"}'::jsonb,
  37.5550473189056, 127.15394941502, ARRAY['휴게시설']::text[], '주중 00:00~24:00 / 주말 00:00~24:00',
  '주차 불가', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1563', NULL, '서울시 생활체육포털',
  'matched', '서울특별시 강동구 고덕로 지하253', NULL,
  NULL, '2021-12-28T00:13:43.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1563-송림근린공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1563-송림근린공원배드민턴장', '/court-covers/outdoor.svg', '송림근린공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-813-일자산제1체육관', '일자산제1체육관', 'seoul', '강동구',
  '서울특별시 강동구 동남로 660', '02-2045-7860', 8,
  'confirmed', 'indoor', '{"status":"known","summary":"(이용시간 2시간 50분 기준) 평일 : 2,400원 주말 및 공휴일 : 3,100원","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=813","updatedAt":"2025-02-24T03:53:21.000Z"}'::jsonb,
  37.5330196344931, 127.151356340452, ARRAY['샤워실', '탈의실', '샤워실', '휴게실', '배드민턴용품점']::text[], '주중 06:00~21:50 / 주말 06:00~21:50',
  '주차 가능 (20면) 주차장이 협소하므로 대중교통 이용 권장', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=813', 'https://www.igangdong.or.kr/page/ch/ch_1001.asp', '서울시 생활체육포털',
  'matched', '서울특별시 강동구 동남로 660', NULL,
  NULL, '2025-02-24T03:53:21.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-813-일자산제1체육관';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-813-일자산제1체육관', '/court-covers/indoor.svg', '일자산제1체육관 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1531-솔밭근린공원배드민턴장', '솔밭근린공원 배드민턴장', 'seoul', '강북구',
  '서울특별시 강북구 삼양로 561', '02-901-6953', 1,
  'confirmed', 'outdoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1531"}'::jsonb,
  37.6530130524054, 127.012254108248, ARRAY['화장실', '음수대', '산책로']::text[], '주중 00:00~24:00 / 주말 00:00~24:00',
  '-', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1531', 'https://parks.seoul.go.kr/parks/detailView.do?pIdx=1001', '서울시 생활체육포털',
  'matched', '서울특별시 강북구 삼양로 561', NULL,
  NULL, '2026-04-08T00:49:54.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1531-솔밭근린공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1531-솔밭근린공원배드민턴장', '/court-covers/outdoor.svg', '솔밭근린공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-757-오동근린공원실내배드민턴장', '오동근린공원 실내배드민턴장', 'seoul', '강북구',
  '서울특별시 강북구 덕릉로42길 49', '02-944-2931', 8,
  'confirmed', 'indoor', '{"status":"known","summary":"일일이용권 : 1,000~2,600원 월정기권 : 20,000~40,000원","dayPass":"일일이용권 : 1,000~2,600원 월정기권 : 20,000~40,000원","rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=757","updatedAt":"2021-11-02T01:34:16.000Z"}'::jsonb,
  37.6330165371768, 127.032227973006, ARRAY['샤워실', '탈의실', '휴게실', '사물함']::text[], '주중 06:00~21:00 / 주말 매월 첫째 주 월요일, 신정 및 명절 연휴 휴관',
  '주차 가능 (15면) 회원은 강습시간 전후 1시간 이내 무료', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=757', 'https://www.gbcmc.or.kr/fmcs/83', '서울시 생활체육포털',
  'matched', '서울특별시 강북구 덕릉로42길 49', NULL,
  NULL, '2021-11-02T01:34:16.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-757-오동근린공원실내배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-757-오동근린공원실내배드민턴장', '/court-covers/indoor.svg', '오동근린공원 실내배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1376-강서다목적체육관', '강서다목적체육관', 'seoul', '강서구',
  '서울 강서구 등촌로13자길 20', '02-3662-9082', 5,
  'confirmed', 'indoor', '{"status":"varies","summary":"운영 프로그램에 따라 이용 요금 상이","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1376","updatedAt":"2025-09-26T04:26:20.000Z"}'::jsonb,
  37.5397048814533, 126.855852024845, ARRAY['샤워실', '탈의실']::text[], '주중 화요일~금요일 09:00~22:00 / 주말 09:00~22:00',
  '.', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1376', 'https://sport.gssi.or.kr/page/sisul/04/', '서울시 생활체육포털',
  'matched', '서울 강서구 등촌로13자길 20', NULL,
  NULL, '2025-09-26T04:26:20.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1376-강서다목적체육관';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1376-강서다목적체육관', '/court-covers/indoor.svg', '강서다목적체육관 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1633-구립방화배드민턴장', '구립 방화배드민턴장', 'seoul', '강서구',
  '서울특별시 강서구 금낭화로26가길 152-8', '02-2600-5427', 20,
  'confirmed', 'indoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1633"}'::jsonb,
  37.5853284869493, 126.811121378327, ARRAY['화장실', '샤워실']::text[], '주중 06:00~22:00 / 주말 06:00~22:00',
  '주차 가능', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1633', 'https://www.gangseo.seoul.kr/munhwa/mh040209', '서울시 생활체육포털',
  'matched', '서울특별시 강서구 금낭화로26가길 152-8', NULL,
  NULL, '2025-02-24T04:02:43.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1633-구립방화배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1633-구립방화배드민턴장', '/court-covers/indoor.svg', '구립 방화배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1548-까치산근린공원배드민턴장', '까치산근린공원 배드민턴장', 'seoul', '강서구',
  '서울특별시 강서구 까치산로2길 95', '02-2600-4185', 4,
  'confirmed', 'outdoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1548"}'::jsonb,
  37.5369391635005, 126.843935796254, ARRAY['화장실', '휴게시설']::text[], '주중 00:00~24:00 / 주말 00:00~24:00',
  '주차 시설 없음 인근 공영 주차장 이용 (유료)', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1548', NULL, '서울시 생활체육포털',
  'matched', '서울특별시 강서구 까치산로2길 95', NULL,
  NULL, '2024-10-02T07:14:43.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1548-까치산근린공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1548-까치산근린공원배드민턴장', '/court-covers/outdoor.svg', '까치산근린공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-693-마곡레포츠센터실내배드민턴장', '마곡레포츠센터 실내배드민턴장', 'seoul', '강서구',
  '서울특별시 강서구 양천로 251', '02-2063-3990', 14,
  'confirmed', 'indoor', '{"status":"known","summary":"배드민턴 맞춤반 - 성인 : 144,000원 - 청소년 : 126,000원 - 어린이 : 112,000원 (인근동/지역 할인 적용 가능)","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=693","updatedAt":"2025-09-26T04:10:36.000Z"}'::jsonb,
  37.5731554994777, 126.832148803205, ARRAY['샤워실', '탈의실', '체온조절실', '식당(구내매점)', '휴게실', '관람석 (총 650석)']::text[], '주중 06:00~22:00 / 주말 토요일 06:00~18:00 / 일요일 09:00~17:00',
  '주차면수 : 136면 (장애인 전용 6면, 전기차 충전 1면) - 주차요금 : 10분 당 200원 - 전기차 충전 시 1시간 무료 (초과시 50% 요금 적용) * 욀 회원 : 강습시간 외 1시간 무료 * 일 회원 : 이용시간 외 1시간 무료', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=693', 'https://sport.gssi.or.kr/page/sisul/06/', '서울시 생활체육포털',
  'matched', '서울특별시 강서구 양천로 251', NULL,
  NULL, '2025-09-26T04:10:36.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-693-마곡레포츠센터실내배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-693-마곡레포츠센터실내배드민턴장', '/court-covers/indoor.svg', '마곡레포츠센터 실내배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'kspo-12095-마곡실내배드민턴장', '마곡실내 배드민턴장', 'seoul', '강서구',
  '서울 강서구 마곡동 양천로 251', '02-2063-3990', 0,
  'unknown', 'indoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"국민체육진흥공단 외_어디서 운동할까","sourceUrl":"https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250","updatedAt":"2026-05-13T06:58:49.405Z"}'::jsonb,
  37.573145, 126.832147, ARRAY['구기체육관']::text[], '시설면적: - | 수용인원: - | 관람석: - | 휴무일: 신 정, 설 날, 추 석 당 일 휴 무',
  NULL, 'public', '국민체육진흥공단 외_어디서 운동할까',
  'https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250', 'https://gssi.or.kr/sports/sports_04_1.asp', 'KSPO public dataset',
  'matched', '서울 강서구 마곡동 양천로 251', NULL,
  NULL, '2026-05-13T06:41:16.180Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'kspo-12095-마곡실내배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'kspo-12095-마곡실내배드민턴장', '/court-covers/indoor.svg', '마곡실내 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1373-수명산다목적체육관', '수명산다목적체육관', 'seoul', '강서구',
  '서울특별시 강서구 강서로45길 131-11', '02-6229-6682', 0,
  'unknown', 'indoor', '{"status":"varies","summary":"운영 프로그램에 따라 이용 요금 상이","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1373","updatedAt":"2026-04-16T00:35:52.000Z"}'::jsonb,
  37.5509664250011, 126.829892923182, ARRAY['샤워실', '탈의실', '휴게실', '냉난방시설']::text[], '주중 화요일~금요일 06:00~20:50 / 주말 일요일 09:00~16:50',
  '주차 불가 대중교통 이용', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1373', 'https://sport.gssi.or.kr/page/sisul/08/', '서울시 생활체육포털',
  'matched', '서울특별시 강서구 강서로45길 131-11', NULL,
  NULL, '2026-04-16T00:35:52.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1373-수명산다목적체육관';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1373-수명산다목적체육관', '/court-covers/indoor.svg', '수명산다목적체육관 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1634-염창근린공원다목적체육관', '염창근린공원다목적체육관', 'seoul', '강서구',
  '서울특별시 강서구 양천로63길 42-21', '02-6346-7684', 3,
  'confirmed', 'indoor', '{"status":"varies","summary":"운영 프로그램에 따라 이용 요금 상이","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1634","updatedAt":"2025-09-26T05:34:02.000Z"}'::jsonb,
  37.5579471868876, 126.867125655029, ARRAY['샤워실', '탈의실', '휴게실', '장애인화장실']::text[], '주중 화 ~ 금: 07:00~21:50 / 주말 토: 07:00~21:50 일: 09:00~19:50',
  '5대', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1634', 'https://sport.gssi.or.kr/page/sisul/13/', '서울시 생활체육포털',
  'matched', '서울특별시 강서구 양천로63길 42-21', NULL,
  NULL, '2025-09-26T05:34:02.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1634-염창근린공원다목적체육관';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1634-염창근린공원다목적체육관', '/court-covers/indoor.svg', '염창근린공원다목적체육관 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1545-우장산근린공원배드민턴장', '우장산근린공원 배드민턴장', 'seoul', '강서구',
  '서울특별시 강서구 우장산로 72-1', '02-2600-4185', 0,
  'unknown', 'outdoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1545"}'::jsonb,
  37.5526661608486, 126.843444333696, ARRAY['화장실', '휴게실']::text[], '주중 00:00~24:00 / 주말 00:00~24:00',
  '주차 시설이 협소하므로 대중교통 이용', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1545', NULL, '서울시 생활체육포털',
  'matched', '서울특별시 강서구 우장산로 72-1', NULL,
  NULL, '2024-10-02T07:21:42.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1545-우장산근린공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1545-우장산근린공원배드민턴장', '/court-covers/outdoor.svg', '우장산근린공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1375-화곡배수지다목적체육관', '화곡배수지다목적체육관', 'seoul', '강서구',
  '서울특별시 강서구 초록마을로15길 81', '02-2604-7286', 6,
  'confirmed', 'indoor', '{"status":"varies","summary":"운영 프로그램에 따라 이용 요금 상이","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1375","updatedAt":"2025-02-24T04:10:48.000Z"}'::jsonb,
  37.5422239160133, 126.855353600559, ARRAY['샤워실', '탈의실']::text[], '주중 화~토 06:00~21:00 / 주말 일요일 07:00~21:00',
  '주차장없음(공원주차장 이용)', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1375', 'https://sport.gssi.or.kr/page/sisul/03/', '서울시 생활체육포털',
  'matched', '서울특별시 강서구 초록마을로15길 81', NULL,
  NULL, '2025-02-24T04:10:48.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1375-화곡배수지다목적체육관';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1375-화곡배수지다목적체육관', '/court-covers/indoor.svg', '화곡배수지다목적체육관 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1557-황금내근린공원배드민턴장', '황금내근린공원 배드민턴장', 'seoul', '강서구',
  '서울특별시 강서구 허준로 221-40', '02-2600-4186', 0,
  'unknown', 'outdoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1557"}'::jsonb,
  37.5617834316012, 126.86410229267, ARRAY['화장실', '휴게시설']::text[], '주중 00:00~24:00 / 주말 00:00~24:00',
  '황금내공원길 거주자우선주차장 이용', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1557', NULL, '서울시 생활체육포털',
  'matched', '서울특별시 강서구 허준로 221-40', NULL,
  NULL, '2024-10-02T07:23:54.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1557-황금내근린공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1557-황금내근린공원배드민턴장', '/court-covers/outdoor.svg', '황금내근린공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-727-국사봉체육관', '국사봉체육관', 'seoul', '관악구',
  '서울특별시 관악구 국회단지길 144', '02-2081-2693', 10,
  'confirmed', 'indoor', '{"status":"known","summary":"평일 : 2,200원 주말 및 공휴일 : 2,800원","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=727","updatedAt":"2025-09-26T05:41:47.000Z"}'::jsonb,
  37.4918791816925, 126.941428070107, ARRAY['샤워실', '탈의실', '휴게실', '관람석']::text[], '주중 06:00~22:00 / 주말 06:00~22:00 / 신정, 설, 추석 연휴 휴관',
  '주차 가능 (거주자 17면, 고객 14면, 장애인 전용 1면)', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=727', 'https://booking.gwanakgongdan.or.kr/booking/1558', '서울시 생활체육포털',
  'matched', '서울특별시 관악구 국회단지길 144', NULL,
  NULL, '2025-09-26T05:41:47.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-727-국사봉체육관';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-727-국사봉체육관', '/court-covers/indoor.svg', '국사봉체육관 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-728-난우공원배드민턴장', '난우공원 배드민턴장', 'seoul', '관악구',
  '서울특별시 관악구 미성동 산 124-6', '02-855-7708', 2,
  'confirmed', 'outdoor', '{"status":"known","summary":"무료","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=728","updatedAt":"2021-12-20T02:23:16.000Z"}'::jsonb,
  37.477582160935, 126.922356766305, ARRAY[]::text[], '주중 00:00~24:00 / 주말 00:00~24:00',
  '주차 불가', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=728', 'http://www.gwanak.go.kr/site/gwanak/gis/Gis_View.do?gubun=CULTURE&mtIdx=MT00002407', '서울시 생활체육포털',
  'matched', '서울특별시 관악구 미성동 산 124-6', NULL,
  NULL, '2021-12-20T02:23:16.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-728-난우공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-728-난우공원배드민턴장', '/court-covers/outdoor.svg', '난우공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-734-미성체육관', '미성체육관', 'seoul', '관악구',
  '서울특별시 관악구 난우16길 37', '02-2015-2765', 8,
  'confirmed', 'indoor', '{"status":"varies","summary":"운영 프로그램별 이용 요금 상이","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=734","updatedAt":"2025-09-26T05:42:37.000Z"}'::jsonb,
  37.4778617197503, 126.919360939368, ARRAY['샤워실', '탈의실', '스포츠용품점', '매점']::text[], '주중 06:00~22:00 / 주말 06:00~22:00 / 신정, 설날, 추석 연휴 휴관',
  '주차 가능 (15면) 주차장이 협소하므로 대중교통 이용', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=734', 'https://booking.gwanakgongdan.or.kr/booking/1561', '서울시 생활체육포털',
  'matched', '서울특별시 관악구 난우16길 37', NULL,
  NULL, '2025-09-26T05:42:37.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-734-미성체육관';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-734-미성체육관', '/court-covers/indoor.svg', '미성체육관 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1378-선우체육관', '선우체육관', 'seoul', '관악구',
  '서울특별시 관악구 문성로16다길 133-70', '02-2015-2772', 4,
  'confirmed', 'indoor', '{"status":"varies","summary":"운영 프로그램별 이용 요금 상이","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1378","updatedAt":"2025-09-26T05:43:58.000Z"}'::jsonb,
  37.4674327752862, 126.91261164171, ARRAY['샤워실', '탈의실', '휴게실']::text[], '주중 06:00~22:00 / 주말 06:00~22:00',
  '부설 주차장 없음 진입로 초입에 있는 민방위교육장 공영주차장에 주차 (요금 별도)', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1378', 'https://booking.gwanakgongdan.or.kr/booking/1570', '서울시 생활체육포털',
  'matched', '서울특별시 관악구 문성로16다길 133-70', NULL,
  NULL, '2025-09-26T05:43:58.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1378-선우체육관';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1378-선우체육관', '/court-covers/indoor.svg', '선우체육관 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1582-장군봉근린공원배드민턴장', '장군봉근린공원 배드민턴장', 'seoul', '관악구',
  '서울특별시 관악구 장군봉길 92-40', '02-879-6528', 0,
  'unknown', 'outdoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1582"}'::jsonb,
  37.4797321127839, 126.936978277413, ARRAY['화장실', '휴게시설', '음수대']::text[], '주중 00:00~24:00 / 주말 00:00~24:00',
  '주차 가능', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1582', NULL, '서울시 생활체육포털',
  'matched', '서울특별시 관악구 장군봉길 92-40', NULL,
  NULL, '2021-12-28T02:15:54.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1582-장군봉근린공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1582-장군봉근린공원배드민턴장', '/court-covers/outdoor.svg', '장군봉근린공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-740-장군봉체육관', '장군봉체육관', 'seoul', '관악구',
  '서울특별시 관악구 남부순환로194길 81-12', '02-2015-2771', 5,
  'confirmed', 'indoor', '{"status":"varies","summary":"운영 프로그램별 이용 요금 상이","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=740","updatedAt":"2025-02-24T04:16:52.000Z"}'::jsonb,
  37.4814669786738, 126.934770648085, ARRAY['휴게실', '샤워실', '탈의실']::text[], '주중 06:00~22:00 / 주말 06:00~22:00 / 신정, 설날, 추석 연휴 휴관',
  '주차 불가', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=740', 'https://booking.gwanakgongdan.or.kr/booking/1567', '서울시 생활체육포털',
  'matched', '서울특별시 관악구 남부순환로194길 81-12', NULL,
  NULL, '2025-02-24T04:16:52.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-740-장군봉체육관';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-740-장군봉체육관', '/court-covers/indoor.svg', '장군봉체육관 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-741-청룡산체육관', '청룡산체육관', 'seoul', '관악구',
  '서울특별시 관악구 관악로 5길 91-41', '02-2015-2770', 4,
  'confirmed', 'indoor', '{"status":"varies","summary":"운영 프로그램별 이용 요금 상이","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=741","updatedAt":"2025-02-24T04:18:20.000Z"}'::jsonb,
  37.4741323710565, 126.949415834538, ARRAY['샤워실', '탈의실', '휴게실']::text[], '주중 06:00~22:00 / 주말 06:00~22:00 / 신정, 설날, 추석 연휴 휴관',
  '주차 불가 * 청룡산체육관 도보 15분 거리에 있는 관악구청 주차장에 주말 3시간 무료 주차 가능', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=741', 'https://booking.gwanakgongdan.or.kr/booking/1564', '서울시 생활체육포털',
  'matched', '서울특별시 관악구 관악로 5길 91-41', NULL,
  NULL, '2025-02-24T04:18:20.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-741-청룡산체육관';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-741-청룡산체육관', '/court-covers/indoor.svg', '청룡산체육관 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-743-광장동실내배드민턴장', '광장동 실내배드민턴장', 'seoul', '광진구',
  '서울특별시 광진구 천호대로140길 40', '02-458-9062', 6,
  'confirmed', 'indoor', '{"status":"varies","summary":"운영 프로그램 별 이용 요금 상이","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=743","updatedAt":"2025-02-24T04:18:42.000Z"}'::jsonb,
  37.5444252783139, 127.100195713772, ARRAY['샤워실', '탈의실']::text[], '주중 06:00~21:50 (월~토요일) / 주말 06:00~19:30(일요일 및 공휴일)',
  '주차 가능 (28대) 회원 : 3시간 무료 / 비회원 : 10분당 500원', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=743', 'https://booking.gwangjin.or.kr/fmcs/51', '서울시 생활체육포털',
  'matched', '서울특별시 광진구 천호대로140길 40', NULL,
  NULL, '2025-02-24T04:18:42.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-743-광장동실내배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-743-광장동실내배드민턴장', '/court-covers/indoor.svg', '광장동 실내배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-708-뚝섬한강공원배드민턴장', '뚝섬한강공원 배드민턴장', 'seoul', '광진구',
  '서울특별시 광진구 강변북로 2273', '02-3780-0521~4', 5,
  'confirmed', 'outdoor', '{"status":"known","summary":"2,000원 / 2시간 * 월정액 : 30,000원","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=708","updatedAt":"2025-02-04T02:11:17.000Z"}'::jsonb,
  37.5293645718995, 127.073978164616, ARRAY['화장실', '음수대', '그늘막', '매점', '자연학습장', '장미원', '어린이놀이터']::text[], '주중 4월~9월 / 06:00~20:00 10월~다음 해 3월 / 07:00~17:00 / 주말 4월~9월 / 06:00~20:00 10월~다음 해 3월 / 07:00~17:00',
  '뚝섬1~4주차장 이용 (총 661면) 최초 30분 1,000원, 초과 10분당 200원', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=708', 'http://hangang.seoul.go.kr/archives/46661', '서울시 생활체육포털',
  'matched', '서울특별시 광진구 강변북로 2273', NULL,
  NULL, '2025-02-04T02:11:17.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-708-뚝섬한강공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-708-뚝섬한강공원배드민턴장', '/court-covers/outdoor.svg', '뚝섬한강공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1691-중랑천체육공원배드민턴장', '중랑천 체육공원 배드민턴장', 'seoul', '광진구',
  '서울특별시 광진구 서울시 광진구 중곡동 485-7', '02-458-9062', 0,
  'unknown', 'outdoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1691"}'::jsonb,
  37.5671078582065, 127.076790238683, ARRAY[]::text[], '주중 연중무휴 / 주말 연중무휴',
  '주차불가', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1691', 'https://www.gwangjin.or.kr/web/main.do', '서울시 생활체육포털',
  'matched', '서울특별시 광진구 서울시 광진구 중곡동 485-7', NULL,
  NULL, '2025-09-26T06:48:13.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1691-중랑천체육공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1691-중랑천체육공원배드민턴장', '/court-covers/outdoor.svg', '중랑천 체육공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1488-고척근린공원배드민턴장', '고척근린공원 배드민턴장', 'seoul', '구로구',
  '서울특별시 구로구 고척로45길 1', '02-2619-6640', 2,
  'confirmed', 'outdoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1488"}'::jsonb,
  37.5040807877227, 126.852779538004, ARRAY['화장실', '음수대', '그늘막']::text[], '주중 00:00~24:00 / 주말 00:00~24:00',
  '구로구민체육센터 / 고척도서관 / 근린공원둘레 주차장 이용', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1488', 'https://www.guro.go.kr/www/contents.do?key=2996', '서울시 생활체육포털',
  'matched', '서울특별시 구로구 고척로45길 1', NULL,
  NULL, '2021-12-09T02:22:34.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1488-고척근린공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1488-고척근린공원배드민턴장', '/court-covers/outdoor.svg', '고척근린공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-646-구로누리배드민턴장', '구로누리배드민턴장', 'seoul', '구로구',
  '서울특별시 구로구 새말로 18길 39', '02-2066-3002', 7,
  'confirmed', 'outdoor', '{"status":"varies","summary":"월 정기권 (3시간 기준) : 39,000원 일일 입장권 (2시간 기준) : 평일 2,800원 / 주말 3,000원 강습 프로그램 : 64,000원~96,000원","dayPass":"일일 입장권 (2시간 기준) : 평일 2,800원 / 주말 3,000원 강습 프로그램 : 64,000원~96,000원","rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=646","updatedAt":"2025-09-26T08:03:53.000Z"}'::jsonb,
  37.5047065936263, 126.89283148669, ARRAY['샤워실', '탈의실', '배드민턴용품점']::text[], '주중 06:00~22:00 / 주말 10:00~18:00 / 일요일 및 공휴일 휴관',
  '주차 가능 (20면) 주차장이 협소하므로 가급적 대중교통 이용', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=646', 'https://www.guro.go.kr/www/contents.do?key=2943', '서울시 생활체육포털',
  'matched', '서울특별시 구로구 새말로 18길 39', NULL,
  NULL, '2025-09-26T08:03:53.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-646-구로누리배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-646-구로누리배드민턴장', '/court-covers/outdoor.svg', '구로누리배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-665-오류고가하부배드민턴장', '오류고가 하부 배드민턴장', 'seoul', '구로구',
  '서울특별시 구로구 경인로 89', '02-2617-3005', 10,
  'confirmed', 'outdoor', '{"status":"known","summary":"- 배드민턴 강습 : 64,000~96,000원 - 일일이용 : 1,500~2,000원 * 배드민턴 강습 참여 시, 이용료 별도","dayPass":"일일이용 : 1,500~2,000원 * 배드민턴 강습 참여 시, 이용료 별도","rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=665","updatedAt":"2024-10-02T07:43:35.000Z"}'::jsonb,
  37.49174484485, 126.83203986488, ARRAY['샤워실', '탈의실']::text[], '주중 06:00~22:00 / 주말 토요일 10:00~18:00 / 일요일 및 공휴일 휴관',
  '주차 가능', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=665', 'https://sportsclub.sports.or.kr/club/seoul-guro', '서울시 생활체육포털',
  'matched', '서울특별시 구로구 경인로 89', NULL,
  NULL, '2024-10-02T07:43:35.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-665-오류고가하부배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-665-오류고가하부배드민턴장', '/court-covers/outdoor.svg', '오류고가 하부 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1575-독산근린공원배드민턴장', '독산근린공원 배드민턴장', 'seoul', '금천구',
  '서울특별시 금천구 범안로 1096', '02-2627-1655', 5,
  'confirmed', 'outdoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1575"}'::jsonb,
  37.4632736059783, 126.88493439804, ARRAY['화장실', '휴게시설']::text[], '주중 00:00~24:00 / 주말 00:00~24:00',
  '하안동상업지역 제1노상공영주차장 이용 30분 600원, 1시간 1,000원', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1575', NULL, '서울시 생활체육포털',
  'matched', '서울특별시 금천구 범안로 1096', NULL,
  NULL, '2026-05-08T02:37:43.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1575-독산근린공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1575-독산근린공원배드민턴장', '/court-covers/outdoor.svg', '독산근린공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-673-독산배드민턴체육관', '독산배드민턴체육관', 'seoul', '금천구',
  '서울특별시 금천구 독산로54길 102-82', '070-8670-1823', 9,
  'confirmed', 'indoor', '{"status":"known","summary":"일일이용 : 평일 : 3,000원 / 주말 : 3,900원 (1인 3시간 기준) 월정액 : 44,000원","dayPass":"일일이용 : 평일 : 3,000원 / 주말 : 3,900원 (1인 3시간 기준) 월정액 : 44,000원","rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=673","updatedAt":"2026-05-08T02:39:11.000Z"}'::jsonb,
  37.4673654682019, 126.909969061396, ARRAY['탈의실']::text[], '주중 06:00~21:00 / 주말 07:00~19:00',
  '주차 가능', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=673', 'https://b.gfmc.kr/index.php', '서울시 생활체육포털',
  'matched', '서울특별시 금천구 독산로54길 102-82', NULL,
  NULL, '2026-05-08T02:39:11.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-673-독산배드민턴체육관';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-673-독산배드민턴체육관', '/court-covers/indoor.svg', '독산배드민턴체육관 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1715-갈말근린공원배드민턴장', '갈말근린공원 배드민턴장', 'seoul', '노원구',
  '서울특별시 노원구 상계동 654', '02-2116-0843', 0,
  'unknown', 'outdoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1715"}'::jsonb,
  37.6657598600883, 127.054196659038, ARRAY[]::text[], '주중 00:00~24:00 / 주말 00:00~24:00',
  NULL, 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1715', 'https://www.nowon.kr/www/user/bbs/BD_selectBbsList.do?q_bbsCode=1095&q_clCode=1', '서울시 생활체육포털',
  'matched', '서울특별시 노원구 상계동 654', NULL,
  NULL, '2025-02-24T06:07:23.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1715-갈말근린공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1715-갈말근린공원배드민턴장', '/court-covers/outdoor.svg', '갈말근린공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1717-갈울근린공원배드민턴장', '갈울근린공원 배드민턴장', 'seoul', '노원구',
  '서울특별시 노원구 상계동 644', '02-2116-0843', 0,
  'unknown', 'outdoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1717"}'::jsonb,
  37.6668223794557, 127.061035709127, ARRAY[]::text[], '주중 00:00~24:00 / 주말 00:00~24:00',
  NULL, 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1717', 'https://www.nowon.kr/www/user/bbs/BD_selectBbsList.do?q_bbsCode=1095&q_clCode=1', '서울시 생활체육포털',
  'matched', '서울특별시 노원구 상계동 644', NULL,
  NULL, '2025-02-24T06:22:33.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1717-갈울근린공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1717-갈울근린공원배드민턴장', '/court-covers/outdoor.svg', '갈울근린공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-845-당고개배드민턴장', '당고개배드민턴장', 'seoul', '노원구',
  '서울특별시 노원구 상계로 273', '02-2289-6864', 7,
  'confirmed', 'outdoor', '{"status":"known","summary":"평일 : 성인 2,000원 / 청소년 1,500원 주말 : 성인 2,600원 / 청소년 1,900원","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=845","updatedAt":"2025-02-24T05:11:35.000Z"}'::jsonb,
  37.6687941123957, 127.075889743358, ARRAY['샤워실', '탈의실', '휴게실', '락커룸', '스포츠용품점']::text[], '주중 06:00~22:00 / 주말 06:00~22:00',
  '주차 가능(42면) ※ 4시간 무료주차, 초과시 5분당 150원', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=845', 'https://www.nowonsc.kr/fmcs/92', '서울시 생활체육포털',
  'matched', '서울특별시 노원구 상계로 273', NULL,
  NULL, '2025-02-24T05:11:35.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-845-당고개배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-845-당고개배드민턴장', '/court-covers/outdoor.svg', '당고개배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1709-당고개지구공원배드민턴장', '당고개지구공원 배드민턴장', 'seoul', '노원구',
  '서울특별시 노원구 상계동 113-2', '02-2116-0843', 0,
  'unknown', 'outdoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1709"}'::jsonb,
  37.6690792158155, 127.077088777403, ARRAY[]::text[], '주중 00:00~24:00 / 주말 00:00~24:00',
  NULL, 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1709', 'https://www.nowon.kr/www/user/bbs/BD_selectBbsList.do?q_bbsCode=1095&q_clCode=1', '서울시 생활체육포털',
  'matched', '서울특별시 노원구 상계동 113-2', NULL,
  NULL, '2025-09-26T08:31:41.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1709-당고개지구공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1709-당고개지구공원배드민턴장', '/court-covers/outdoor.svg', '당고개지구공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1711-마들체육공원배드민턴장', '마들체육공원 배드민턴장', 'seoul', '노원구',
  '서울특별시 노원구 상계동 770-2', '02-2116-0843', 0,
  'unknown', 'outdoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1711"}'::jsonb,
  37.6441600064637, 127.058299587221, ARRAY[]::text[], '주중 00:00~24:00 / 주말 00:00~24:00',
  NULL, 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1711', 'https://www.nowon.kr/www/user/bbs/BD_selectBbsList.do?q_bbsCode=1095&q_clCode=1', '서울시 생활체육포털',
  'matched', '서울특별시 노원구 상계동 770-2', NULL,
  NULL, '2025-02-24T06:02:05.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1711-마들체육공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1711-마들체육공원배드민턴장', '/court-covers/outdoor.svg', '마들체육공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1724-불암산근린공원배드민턴장', '불암산 근린공원 배드민턴장', 'seoul', '노원구',
  '서울특별시 노원구 중계동 산26', '02-2116-0843', 0,
  'unknown', 'outdoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1724"}'::jsonb,
  37.6618871007459, 127.079453548656, ARRAY[]::text[], '주중 00:00~24:00 / 주말 00:00~24:00',
  NULL, 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1724', NULL, '서울시 생활체육포털',
  'matched', '서울특별시 노원구 중계동 산26', NULL,
  NULL, '2025-09-26T08:46:32.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1724-불암산근린공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1724-불암산근린공원배드민턴장', '/court-covers/outdoor.svg', '불암산 근린공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-852-불암산배드민턴장', '불암산배드민턴장', 'seoul', '노원구',
  '서울특별시 노원구 중계로 36', '02-2289-6856', 13,
  'confirmed', 'outdoor', '{"status":"known","summary":"평일 : 성인 2,000원 / 청소년 1,500원 주말 : 성인 2,600원 / 청소년 1,900원","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=852","updatedAt":"2025-09-26T08:47:09.000Z"}'::jsonb,
  37.6387792338381, 127.083240333141, ARRAY['샤워실', '탈의실', '관중석(300석)', '스포츠용품점']::text[], '주중 06:00~22:00 / 주말 06:00~22:00',
  '주차 가능 (85면)', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=852', 'https://www.nowonsc.kr/fmcs/90', '서울시 생활체육포털',
  'matched', '서울특별시 노원구 중계로 36', NULL,
  NULL, '2025-09-26T08:47:09.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-852-불암산배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-852-불암산배드민턴장', '/court-covers/outdoor.svg', '불암산배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1727-비둘기어린이공원배드민턴장', '비둘기어린이공원 배드민턴장', 'seoul', '노원구',
  '서울특별시 노원구 공릉동 708-1', '02-2116-0843', 0,
  'unknown', 'outdoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1727"}'::jsonb,
  37.6300188406658, 127.069187363223, ARRAY[]::text[], '주중 00:00~24:00 / 주말 00:00~24:00',
  NULL, 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1727', 'https://www.nowon.kr/www/user/bbs/BD_selectBbsList.do?q_bbsCode=1095&q_clCode=1', '서울시 생활체육포털',
  'matched', '서울특별시 노원구 공릉동 708-1', NULL,
  NULL, '2025-02-24T06:33:14.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1727-비둘기어린이공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1727-비둘기어린이공원배드민턴장', '/court-covers/outdoor.svg', '비둘기어린이공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1716-상계근린공원배드민턴장', '상계근린공원 배드민턴장', 'seoul', '노원구',
  '서울특별시 노원구 상계동 620', '02-2116-0843', 0,
  'unknown', 'outdoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1716"}'::jsonb,
  37.6686290614896, 127.050264880761, ARRAY[]::text[], '주중 00:00~24:00 / 주말 00:00~24:00',
  NULL, 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1716', 'https://www.nowon.kr/www/user/bbs/BD_selectBbsList.do?q_bbsCode=1095&q_clCode=1', '서울시 생활체육포털',
  'matched', '서울특별시 노원구 상계동 620', NULL,
  NULL, '2025-09-26T08:49:17.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1716-상계근린공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1716-상계근린공원배드민턴장', '/court-covers/outdoor.svg', '상계근린공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1728-영축산근린공원배드민턴장', '영축산근린공원 배드민턴장', 'seoul', '노원구',
  '서울특별시 노원구 월계동 산131-4', '02-2116-0843', 0,
  'unknown', 'outdoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1728"}'::jsonb,
  37.6220113969929, 127.054616507752, ARRAY[]::text[], '주중 00:00~24:00 / 주말 00:00~24:00',
  NULL, 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1728', NULL, '서울시 생활체육포털',
  'matched', '서울특별시 노원구 월계동 산131-4', NULL,
  NULL, '2025-09-26T08:54:50.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1728-영축산근린공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1728-영축산근린공원배드민턴장', '/court-covers/outdoor.svg', '영축산근린공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1720-온수근린공원배드민턴장', '온수근린공원 배드민턴장', 'seoul', '노원구',
  '서울특별시 노원구 상계동686', '02-2116-0843', 0,
  'unknown', 'outdoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1720"}'::jsonb,
  37.6609196529014, 127.064167260893, ARRAY[]::text[], '주중 00:00~24:00 / 주말 00:00~24:00',
  NULL, 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1720', 'https://www.nowon.kr/www/user/bbs/BD_selectBbsList.do?q_bbsCode=1095&q_clCode=1', '서울시 생활체육포털',
  'matched', '서울특별시 노원구 상계동686', NULL,
  NULL, '2025-02-24T06:25:00.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1720-온수근린공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1720-온수근린공원배드민턴장', '/court-covers/outdoor.svg', '온수근린공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1710-원터근린공원배드민턴장', '원터근린공원 배드민턴장', 'seoul', '노원구',
  '서울특별시 노원구 상계동 753-2', '02-2116-0843', 0,
  'unknown', 'outdoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1710"}'::jsonb,
  37.6507770138786, 127.065176807244, ARRAY[]::text[], '주중 00:00~24:00 / 주말 00:00~24:00',
  NULL, 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1710', 'https://www.nowon.kr/www/user/bbs/BD_selectBbsList.do?q_bbsCode=1095&q_clCode=1', '서울시 생활체육포털',
  'matched', '서울특별시 노원구 상계동 753-2', NULL,
  NULL, '2025-02-24T05:59:37.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1710-원터근린공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1710-원터근린공원배드민턴장', '/court-covers/outdoor.svg', '원터근린공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1056-월계배드민턴장', '월계배드민턴장', 'seoul', '노원구',
  '서울특별시 노원구 마들로 5가길 113', '02-2289-6863', 10,
  'confirmed', 'outdoor', '{"status":"known","summary":"평일 : 성인 2,000원 / 청소년 1,500원 주말 및 공휴일 : 성인 2,600원 / 청소년 1,900원","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1056","updatedAt":"2025-02-24T05:35:21.000Z"}'::jsonb,
  37.6383625282481, 127.051739237091, ARRAY['샤워실', '탈의실', '스포츠용품점']::text[], '주중 06:00~22:00 / 주말 06:00~22:00',
  '주차 불가 (공영주차장 이용바람)', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1056', 'https://www.nowonsc.kr/fmcs/91', '서울시 생활체육포털',
  'matched', '서울특별시 노원구 마들로 5가길 113', NULL,
  NULL, '2025-02-24T05:35:21.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1056-월계배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1056-월계배드민턴장', '/court-covers/outdoor.svg', '월계배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1536-한내근린공원배드민턴장', '한내근린공원 배드민턴장', 'seoul', '노원구',
  '서울특별시 노원구 마들로 86', '02-2116-0843', 4,
  'confirmed', 'outdoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1536"}'::jsonb,
  37.6235895372548, 127.068799548743, ARRAY[]::text[], '주중 00:00~24:00 / 주말 00:00~24:00',
  '주차 불가', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1536', 'https://www.nowon.kr/www/user/bbs/BD_selectBbsList.do?q_bbsCode=1095&q_clCode=1', '서울시 생활체육포털',
  'matched', '서울특별시 노원구 마들로 86', NULL,
  NULL, '2025-02-24T05:47:01.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1536-한내근린공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1536-한내근린공원배드민턴장', '/court-covers/outdoor.svg', '한내근린공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1069-다락원체육공원', '다락원체육공원', 'seoul', '도봉구',
  '서울특별시 도봉구 창포원로 45', '02-901-5199', 1,
  'confirmed', 'outdoor', '{"status":"varies","summary":"운영 프로그램 별 이용 요금 상이","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1069","updatedAt":"2026-04-08T05:17:39.000Z"}'::jsonb,
  37.6915496739459, 127.047011719588, ARRAY['샤워실', '탈의실', '매점', '스포츠용품점']::text[], '주중 06:00~22:00 / 주말 명절 연휴 및 근로자의 날 휴장 (축구장 제외)',
  '주차 가능 (63면)', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1069', 'https://yeyak.dobongsiseol.or.kr/rent/guide.php?c_id=05&page_info=guide&n_type=rent&c_ox=0', '서울시 생활체육포털',
  'matched', '서울특별시 도봉구 창포원로 45', NULL,
  NULL, '2026-04-08T05:17:39.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1069-다락원체육공원';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1069-다락원체육공원', '/court-covers/outdoor.svg', '다락원체육공원 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1078-쌍문근린공원', '쌍문근린공원', 'seoul', '도봉구',
  '서울특별시 도봉구 쌍문동 산 80-1', '02-2091-3754', 0,
  'unknown', 'outdoor', '{"status":"known","summary":"무료","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1078","updatedAt":"2021-12-08T02:07:05.000Z"}'::jsonb,
  37.654384484683, 127.028993778466, ARRAY['화장실', '정자', '약수터']::text[], '주중 00:00~24:00 / 주말 00:00~24:00',
  '주차 불가', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1078', 'http://tour.dobong.go.kr/Contents.asp?code=10003483', '서울시 생활체육포털',
  'matched', '서울특별시 도봉구 쌍문동 산 80-1', NULL,
  NULL, '2021-12-08T02:07:05.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1078-쌍문근린공원';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1078-쌍문근린공원', '/court-covers/outdoor.svg', '쌍문근린공원 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1532-월천근린공원배드민턴장', '월천근린공원 배드민턴장', 'seoul', '도봉구',
  '서울특별시 도봉구 노해로70길 86', '02-2091-3756', 0,
  'unknown', 'outdoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1532"}'::jsonb,
  37.6473676201421, 127.051268323413, ARRAY['화장실', '음수대']::text[], '주중 00:00~24:00 / 주말 00:00~24:00',
  '-', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1532', 'https://parks.seoul.go.kr/parks/detailView.do?pIdx=1006', '서울시 생활체육포털',
  'matched', '서울특별시 도봉구 노해로70길 86', NULL,
  NULL, '2026-04-08T06:14:05.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1532-월천근린공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1532-월천근린공원배드민턴장', '/court-covers/outdoor.svg', '월천근린공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1082-창동배드민턴장', '창동배드민턴장', 'seoul', '도봉구',
  '서울특별시 도봉구 노해로 69길 132', '02-901-5300', 14,
  'confirmed', 'outdoor', '{"status":"varies","summary":"연령층에 따라 이용 요금 상이 * 정기권 있음","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1082","updatedAt":"2023-04-21T02:35:17.000Z"}'::jsonb,
  37.6581173975205, 127.05070532949, ARRAY['화장실', '샤워실', '탈의실']::text[], '주중 06:00~22:00 / 주말 06:00~22:00 / 첫째 주 일요일 및 명절 휴장',
  '무료 주차 (42면)', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1082', 'https://www.dobongsiseol.or.kr/', '서울시 생활체육포털',
  'matched', '서울특별시 도봉구 노해로 69길 132', NULL,
  NULL, '2023-04-21T02:35:17.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1082-창동배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1082-창동배드민턴장', '/court-covers/outdoor.svg', '창동배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1090-초안산배드민턴장', '초안산배드민턴장', 'seoul', '도봉구',
  '서울특별시 도봉구 덕릉로 63길 76-10', '02-901-5125', 6,
  'confirmed', 'outdoor', '{"status":"known","summary":"평일 일일 : 성인 2,300원 / 청소년 1,700원 / 어린이 1,200원 주말 일일 : 성인 2,800원 / 청소년 2,200원 / 어린이 1,500원 월 정기권 : 45,000원 월 강습료 : 주 3회 137,500원 / 주 2회 100,000원","dayPass":"일일 : 성인 2,300원 / 청소년 1,700원 / 어린이 1,200원 주말 일일 : 성인 2,800원 / 청소년 2,200원 / 어린이 1,500원 월 정기권 : 45,000원 월 강습료 : 주 3회 137,500원 / 주 2회 100,000원","rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1090","updatedAt":"2026-03-19T06:58:33.000Z"}'::jsonb,
  37.6444854406675, 127.040952907754, ARRAY['샤워실', '탈의실']::text[], '주중 1부(06:09:00)/2부(10:00~13:00)/3부(14:00~17:00)/4부(18:00~22:00) / 주말 명절 연휴 및 근로자의 날 / 매월 마지막 주 화요일 휴장',
  '주차 가능 (11면)', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1090', 'https://www.dobongsiseol.or.kr/contents/culture5.html?menu1=3&menu2=1&menu3=2', '서울시 생활체육포털',
  'matched', '서울특별시 도봉구 덕릉로 63길 76-10', NULL,
  NULL, '2026-03-19T06:58:33.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1090-초안산배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1090-초안산배드민턴장', '/court-covers/outdoor.svg', '초안산배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1522-장안근린공원배드민턴장', '장안근린공원 배드민턴장', 'seoul', '동대문구',
  '서울특별시 동대문구 장한로 191', '02-2127-4775', 3,
  'confirmed', 'outdoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1522"}'::jsonb,
  37.5771652926379, 127.070902636146, ARRAY['화장실', '벤치', '정자']::text[], '주중 00:00~24:00 / 주말 00:00~24:00',
  '"주차 가능 장안동 근린공원 지하주차장 이용 1시간 당 1,000원"', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1522', NULL, '서울시 생활체육포털',
  'matched', '서울특별시 동대문구 장한로 191', NULL,
  NULL, '2025-02-24T07:57:42.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1522-장안근린공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1522-장안근린공원배드민턴장', '/court-covers/outdoor.svg', '장안근린공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-875-노량진근린공원배드민턴장', '노량진근린공원 배드민턴장', 'seoul', '동작구',
  '서울 동작구 여의대방로36길 71', '02-820-9845', 2,
  'confirmed', 'outdoor', '{"status":"known","summary":"무료","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=875","updatedAt":"2025-09-29T02:47:53.000Z"}'::jsonb,
  37.5077517549189, 126.92673614059, ARRAY['화장실', '음수대']::text[], '주중 00:00~24:00 / 주말 00:00~24:00',
  '주차 불가', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=875', 'https://parks.seoul.go.kr/parks/detailView.do?pIdx=57', '서울시 생활체육포털',
  'matched', '서울 동작구 여의대방로36길 71', NULL,
  NULL, '2025-09-29T02:47:53.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-875-노량진근린공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-875-노량진근린공원배드민턴장', '/court-covers/outdoor.svg', '노량진근린공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1653-송학대무브스포츠파크송학대공원다목적구장', '송학대 무브 스포츠 파크(송학대공원 다목적구장)', 'seoul', '동작구',
  '서울시 동작구 노량진동 325-2', '02-820-1114', 2,
  'confirmed', 'mixed', '{"status":"known","summary":"전화문의","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1653","updatedAt":"2025-09-29T04:41:31.000Z"}'::jsonb,
  37.5088191983272, 126.944079541083, ARRAY[]::text[], '주중 전화문의 / 주말 전화문의',
  '전화문의', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1653', 'https://www.dongjak.go.kr/portal/bbs/B0000686/view.do?nttId=10009116&menuNo=200272&pageIndex=3', '서울시 생활체육포털',
  'matched', '서울시 동작구 노량진동 325-2', NULL,
  NULL, '2025-09-29T04:41:31.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1653-송학대무브스포츠파크송학대공원다목적구장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1653-송학대무브스포츠파크송학대공원다목적구장', '/court-covers/mixed.svg', '송학대 무브 스포츠 파크(송학대공원 다목적구장) 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-mapo-mangwon-badminton', '망원동 배드민턴장', 'seoul', '마포구',
  '서울특별시 마포구 동교로1길 73', '02-300-5073', 0,
  'unknown', 'outdoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=910"}'::jsonb,
  37.5535497, 126.9000221, ARRAY[]::text[], '주중 05:00-22:00 / 주말 동절기 1시간 늦게 오픈',
  '주차 불가', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=910', NULL, 'OpenStreetMap fallback after Kakao not_found',
  'matched', '서울특별시 마포구 동교로1길 73', NULL,
  NULL, '2026-05-13T00:00:00.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-mapo-mangwon-badminton';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-mapo-mangwon-badminton', '/court-covers/outdoor.svg', '망원동 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-918-와우산배드민턴장', '와우산배드민턴장', 'seoul', '마포구',
  '서울특별시 마포구 와우산로30길 87', '02-6958-7126', 9,
  'confirmed', 'outdoor', '{"status":"known","summary":"무료","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=918","updatedAt":"2025-09-29T05:05:35.000Z"}'::jsonb,
  37.5519833465549, 126.929839956877, ARRAY['휴게실']::text[], '주중 07:00-22:00 / 주말 07:00-22:00',
  '주차 불가', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=918', 'https://mapogym.or.kr/215', '서울시 생활체육포털',
  'matched', '서울특별시 마포구 와우산로30길 87', NULL,
  NULL, '2025-09-29T05:05:35.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-918-와우산배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-918-와우산배드민턴장', '/court-covers/outdoor.svg', '와우산배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-928-궁동체육관', '궁동체육관', 'seoul', '서대문구',
  '서울특별시 서대문구 연희로11마길 86-47', '02-360-8694', 5,
  'confirmed', 'indoor', '{"status":"varies","summary":"운영 프로그램에 따라 이용 요금 상이","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=928","updatedAt":"2025-02-04T01:47:16.000Z"}'::jsonb,
  37.5713036811257, 126.925281266123, ARRAY['샤워실', '탈의실', '휴게실', '개인사물함']::text[], '주중 06:00~22:00 / 주말 06:00~22:00 / 매주 월요일 및 신정, 설연휴, 추석연휴 휴관',
  '주차 시설 없음 대중교통 이용 권장', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=928', 'https://sscmc.or.kr/page/sports/sub4_2.php', '서울시 생활체육포털',
  'matched', '서울특별시 서대문구 연희로11마길 86-47', NULL,
  NULL, '2025-02-04T01:47:16.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-928-궁동체육관';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-928-궁동체육관', '/court-covers/indoor.svg', '궁동체육관 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-716-금화배드민턴장', '금화배드민턴장', 'seoul', '서대문구',
  '서울특별시 서대문구 봉원동 산3-8', '02-330-1411', 5,
  'confirmed', 'outdoor', '{"status":"known","summary":"입장료 2,000원","dayPass":"입장료 2,000원","rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=716","updatedAt":"2025-02-24T08:00:21.000Z"}'::jsonb,
  37.5699475183485, 126.94735785064, ARRAY[]::text[], '주중 06:00~22:00 / 주말 06:00~22:00',
  '주차공간 없음 (노면 주차 또는 도보 이용)', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=716', 'https://www.sdm.go.kr/culture/culture/sub4030.do', '서울시 생활체육포털',
  'matched', '서울특별시 서대문구 봉원동 산3-8', NULL,
  NULL, '2025-02-24T08:00:21.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-716-금화배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-716-금화배드민턴장', '/court-covers/outdoor.svg', '금화배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1521-인왕산도시자연공원', '인왕산도시자연공원', 'seoul', '서대문구',
  '서울특별시 서대문구 봉원사길 75-66', '02-2148-2832', 0,
  'unknown', 'outdoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1521"}'::jsonb,
  37.5713299834075, 126.946110914111, ARRAY[]::text[], '주중 00:00~24:00 / 주말 00:00~24:00',
  '-', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1521', 'https://parks.seoul.go.kr/parks/detailView.do?pIdx=110', '서울시 생활체육포털',
  'matched', '서울특별시 서대문구 봉원사길 75-66', NULL,
  NULL, '2025-09-29T05:21:57.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1521-인왕산도시자연공원';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1521-인왕산도시자연공원', '/court-covers/outdoor.svg', '인왕산도시자연공원 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1049-홍제배드민턴장', '홍제배드민턴장', 'seoul', '서대문구',
  '서울특별시 서대문구 홍제동 280-9', '02-330-1411', 6,
  'confirmed', 'outdoor', '{"status":"varies","summary":"운영 프로그램에 따라 이용 요금 상이","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1049","updatedAt":"2025-09-29T05:22:17.000Z"}'::jsonb,
  37.5950197037966, 126.949351895598, ARRAY['샤워실', '탈의실', '휴게실', '개인사물함']::text[], '주중 06:00~22:00 / 주말 06:00~22:00 / 매주 월요일 및 신정, 설연휴, 추석연휴 휴관',
  '주차 시설 없음 대중교통 이용 권장', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1049', 'https://www.sscmc.or.kr/page/sports/sub4_3.php', '서울시 생활체육포털',
  'matched', '서울특별시 서대문구 홍제동 280-9', NULL,
  NULL, '2025-09-29T05:22:17.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1049-홍제배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1049-홍제배드민턴장', '/court-covers/outdoor.svg', '홍제배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-998-도구머리공원배드민턴장', '도구머리공원 배드민턴장', 'seoul', '서초구',
  '서울 서초구 방배동 산75-6', '02-2155-6881', 0,
  'unknown', 'outdoor', '{"status":"known","summary":"무료","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=998","updatedAt":"2025-09-29T05:38:56.000Z"}'::jsonb,
  37.4797748576027, 126.988576957327, ARRAY['화장실', '정자', '음수대']::text[], '주중 05:00~21:00 / 주말 05:00~21:00',
  '주차 불가', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=998', 'https://www.seocho.go.kr/site/seocho/04/10405021300002015070704.jsp', '서울시 생활체육포털',
  'matched', '서울 서초구 방배동 산75-6', NULL,
  NULL, '2025-09-29T05:38:56.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-998-도구머리공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-998-도구머리공원배드민턴장', '/court-covers/outdoor.svg', '도구머리공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1658-말죽거리근린공원배드민턴장', '말죽거리근린공원 배드민턴장', 'seoul', '서초구',
  '서울특별시 서초구 바우뫼로21길 34', '02-2155-6870', 5,
  'confirmed', 'outdoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1658"}'::jsonb,
  37.4770047477157, 127.035034036033, ARRAY[]::text[], '주중 전화문의 / 주말 전화문의',
  NULL, 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1658', 'https://www.seocho.go.kr/site/seocho/04/10405021300002015070704.jsp', '서울시 생활체육포털',
  'matched', '서울특별시 서초구 바우뫼로21길 34', NULL,
  NULL, '2025-09-29T05:47:19.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1658-말죽거리근린공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1658-말죽거리근린공원배드민턴장', '/court-covers/outdoor.svg', '말죽거리근린공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1586-명주근린공원배드민턴장', '명주근린공원 배드민턴장', 'seoul', '서초구',
  '서울 서초구 잠원동 50-4', '02-2155-6860', 0,
  'unknown', 'outdoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1586"}'::jsonb,
  37.5172083691673, 127.015149117809, ARRAY['화장실', '휴게시설']::text[], '주중 00:00~24:00 / 주말 00:00~24:00',
  '별도의 주차시설 없음', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1586', NULL, '서울시 생활체육포털',
  'matched', '서울 서초구 잠원동 50-4', NULL,
  NULL, '2025-09-29T05:48:45.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1586-명주근린공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1586-명주근린공원배드민턴장', '/court-covers/outdoor.svg', '명주근린공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1462-반포종합운동장배드민턴장', '반포종합운동장 배드민턴장', 'seoul', '서초구',
  '서울특별시 서초구 신반포로16길 30', '02-2155-6216', 5,
  'confirmed', 'mixed', '{"status":"known","summary":"(1시간 기준) 평일 : 1,000원 주말 및 공휴일 : 1,500원","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1462","updatedAt":"2026-05-08T01:31:07.000Z"}'::jsonb,
  37.5001654101747, 126.995840102191, ARRAY['화장실', '샤워실', '음수대', '조명']::text[], '주중 07:00~22:00 / 주말 07:00~22:00',
  '주차 가능(74면)최초 10분 무료, 초과 10분당 150원', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1462', 'https://www.seocho.go.kr/sports/fmcs/147', '서울시 생활체육포털',
  'matched', '서울특별시 서초구 신반포로16길 30', NULL,
  NULL, '2026-05-08T01:31:07.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1462-반포종합운동장배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1462-반포종합운동장배드민턴장', '/court-covers/mixed.svg', '반포종합운동장 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-993-반포한강공원배드민턴장', '반포한강공원 배드민턴장', 'seoul', '서초구',
  '서울특별시 서초구 신반포로11길 40', '02-3780-0541', 8,
  'confirmed', 'outdoor', '{"status":"known","summary":"(2시간 기준) 2,000원 * 월 정기권 : 30,000원","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=993","updatedAt":"2021-11-30T01:59:45.000Z"}'::jsonb,
  37.5076939718271, 126.992730984132, ARRAY['화장실', '음수대', '그늘막', '매점']::text[], '주중 06:00~20:00 / 주말 06:00~20:00',
  '반포1~3주차장 이용 (총 635면) 최초 30분 1,000원, 초과 10분당 200원', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=993', 'https://hangang.seoul.go.kr/archives/46727', '서울시 생활체육포털',
  'matched', '서울특별시 서초구 신반포로11길 40', NULL,
  NULL, '2021-11-30T01:59:45.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-993-반포한강공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-993-반포한강공원배드민턴장', '/court-covers/outdoor.svg', '반포한강공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1657-방배근린공원배드민턴장', '방배근린공원 배드민턴장', 'seoul', '서초구',
  '서울특별시 서초구 방배로 지하80', '02-2155-6878', 3,
  'confirmed', 'outdoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1657"}'::jsonb,
  37.4814364876589, 126.997694899327, ARRAY[]::text[], '주중 전화문의 / 주말 전화문의',
  '전화문의', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1657', 'https://www.seocho.go.kr/site/seocho/04/10405021300002015070704.jsp', '서울시 생활체육포털',
  'matched', '서울특별시 서초구 방배로 지하80', NULL,
  NULL, '2024-08-13T06:07:21.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1657-방배근린공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1657-방배근린공원배드민턴장', '/court-covers/outdoor.svg', '방배근린공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1000-서리풀근린공원서리풀배드민턴장', '서리풀근린공원 서리풀배드민턴장', 'seoul', '서초구',
  '서울특별시 서초구 서초3동 산156-24', '02-2155-6882', 2,
  'confirmed', 'outdoor', '{"status":"known","summary":"무료","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1000","updatedAt":"2021-12-22T01:39:58.000Z"}'::jsonb,
  37.4842277372444, 127.001367079118, ARRAY['화장실', '식수대']::text[], '주중 06:00~22:00 / 주말 06:00~22:00',
  '주차 불가', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1000', 'https://www.seocho.go.kr/site/seocho/04/10405021300002015070704.jsp', '서울시 생활체육포털',
  'matched', '서울특별시 서초구 서초3동 산156-24', NULL,
  NULL, '2021-12-22T01:39:58.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1000-서리풀근린공원서리풀배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1000-서리풀근린공원서리풀배드민턴장', '/court-covers/outdoor.svg', '서리풀근린공원 서리풀배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1025-금호스포츠센터', '금호스포츠센터', 'seoul', '성동구',
  '서울특별시 성동구 금호로 20', '02-2204-7675', 12,
  'confirmed', 'indoor', '{"status":"varies","summary":"운영 프로그램에 따라 이용 요금 상이","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1025","updatedAt":"2026-05-08T01:58:14.000Z"}'::jsonb,
  37.5461598550224, 127.02530434672, ARRAY['샤워실', '탈의실', '개인사물함', '스포츠용품점']::text[], '주중 06:00~22:00 / 주말 06:00~22:00 / 둘째 주, 넷째 주 일요일 및 신정, 구정, 추석 연휴 휴관',
  '주차 가능 (약 50면) 회원 : 1,000원 비회원 : 5분당 250원', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1025', 'https://sports.happysd.or.kr/fmcs/123', '서울시 생활체육포털',
  'matched', '서울특별시 성동구 금호로 20', NULL,
  NULL, '2026-05-08T01:58:14.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1025-금호스포츠센터';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1025-금호스포츠센터', '/court-covers/indoor.svg', '금호스포츠센터 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1028-대현산체육관', '대현산체육관', 'seoul', '성동구',
  '서울특별시 성동구 독서당로 63길 44', '02-2204-7680', 6,
  'confirmed', 'indoor', '{"status":"known","summary":"(2시간 기준) 평일 : 2,500원 주말 및 공휴일 : 3,000원 1개월 : 36,000원 1코트대관 : 15,000원/1시간","dayPass":null,"rental":"대관 : 15,000원/1시간","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1028","updatedAt":"2026-05-08T02:00:05.000Z"}'::jsonb,
  37.5539610177582, 127.030093216664, ARRAY['샤워실', '탈의실', '개인사물함']::text[], '주중 06:00~22:00 / 주말 06:00~22:00 / 매월 둘째 주, 넷째 주 월요일 및 신정, 설날 ·추석 연휴, 근로자의날 휴관',
  '인근의 응봉동 공영주차장 이용 가급적 대중교통 이용', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1028', 'https://sports.happysd.or.kr/fmcs/146', '서울시 생활체육포털',
  'matched', '서울특별시 성동구 독서당로 63길 44', NULL,
  NULL, '2026-05-08T02:00:05.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1028-대현산체육관';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1028-대현산체육관', '/court-covers/indoor.svg', '대현산체육관 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'kspo-13287-중랑물재생센터배드민턴장', '중랑물재생센터 배드민턴장', 'seoul', '성동구',
  '서울 성동구 용답동 자동차시장3길 64', '02-2211-2517', 0,
  'unknown', 'indoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"국민체육진흥공단 외_어디서 운동할까","sourceUrl":"https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250","updatedAt":"2026-05-13T06:58:49.405Z"}'::jsonb,
  37.553172, 127.062061, ARRAY['구기체육관']::text[], '시설면적: - | 수용인원: - | 관람석: - | 휴무일: 평일사용은 불가',
  NULL, 'public', '국민체육진흥공단 외_어디서 운동할까',
  'https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250', 'https://jstc.seoul.go.kr/preengage/preengage02.html', 'KSPO public dataset',
  'matched', '서울 성동구 용답동 자동차시장3길 64', NULL,
  NULL, '2026-05-13T06:41:16.180Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'kspo-13287-중랑물재생센터배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'kspo-13287-중랑물재생센터배드민턴장', '/court-covers/indoor.svg', '중랑물재생센터 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-892-중랑물재생센터배드민턴장', '중랑물재생센터 배드민턴장', 'seoul', '성동구',
  '서울특별시 성동구 자동차시장3길 64', '02-2211-2568', 3,
  'confirmed', 'indoor', '{"status":"known","summary":"무료","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=892","updatedAt":"2025-09-29T09:03:11.000Z"}'::jsonb,
  37.5604666954517, 127.060364943935, ARRAY['화장실']::text[], '주중 09:00~18:00 / 주말 09:00~18:00',
  '평일 : 10분 당 300원 주말 : 3시간 무료, 이후 10분당 300원', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=892', 'https://yeyak.seoul.go.kr/web/reservation/selectReservView.do?rsv_svc_id=S241119102926452994', '서울시 생활체육포털',
  'matched', '서울특별시 성동구 자동차시장3길 64', NULL,
  NULL, '2025-09-29T09:03:11.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-892-중랑물재생센터배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-892-중랑물재생센터배드민턴장', '/court-covers/indoor.svg', '중랑물재생센터 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1528-삼선어린이공원배드민턴장', '삼선어린이공원 배드민턴장', 'seoul', '성북구',
  '서울 성북구 삼선교로4길 147', '02-2241-3114', 1,
  'confirmed', 'outdoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1528"}'::jsonb,
  37.5817991362279, 127.009194726219, ARRAY['화장실', '벤치', '의자']::text[], '주중 00:00~24:00 / 주말 00:00~24:00',
  '-', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1528', NULL, '서울시 생활체육포털',
  'matched', '서울 성북구 삼선교로4길 147', NULL,
  NULL, '2025-09-30T00:16:55.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1528-삼선어린이공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1528-삼선어린이공원배드민턴장', '/court-covers/outdoor.svg', '삼선어린이공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-seongbuk-community-sports', '성북구민체육센터', 'seoul', '성북구',
  '서울특별시 성북구 화랑로13길 144', '02-2241-0651', 0,
  'unknown', 'indoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=938"}'::jsonb,
  37.6085494620429, 127.042324971736, ARRAY['샤워실', '탈의실', '휴게실', '매점']::text[], '주중 05:30-22:00 / 토요일 05:30-17:00 / 일요일 휴관 / 공휴일 09:00-17:00',
  '주차 가능 40면', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=938', 'https://www.gongdan.go.kr/portal/main/contents.do?menuNo=400116', 'Kakao Local API',
  'matched', '서울 성북구 화랑로13길 144', NULL,
  NULL, '2026-05-13T00:00:00.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-seongbuk-community-sports';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-seongbuk-community-sports', '/court-covers/indoor.svg', '성북구민체육센터 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-939-월곡배드민턴장', '월곡배드민턴장', 'seoul', '성북구',
  '서울특별시 성북구 화랑로13길 130', '02-2241-0661', 9,
  'confirmed', 'outdoor', '{"status":"varies","summary":"운영 프로그램에 따라 이용 요금 상이","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=939","updatedAt":"2021-11-15T01:48:32.000Z"}'::jsonb,
  37.6083183874576, 127.041990969735, ARRAY['샤워실', '탈의실', '관람석', '배드민턴용품샵']::text[], '주중 06:00~21:30 / 주말 토요일 08:30~21:30, 일요일 08:30~20:30 / 공휴일 08:30~20:30',
  '주차 공간이 협소하므로 대중교통 이용', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=939', 'https://www.gongdan.go.kr/portal/main/contents.do?menuNo=400116', '서울시 생활체육포털',
  'matched', '서울특별시 성북구 화랑로13길 130', NULL,
  NULL, '2021-11-15T01:48:32.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-939-월곡배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-939-월곡배드민턴장', '/court-covers/outdoor.svg', '월곡배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1568-두댐이공원배드민턴장', '두댐이공원 배드민턴장', 'seoul', '송파구',
  '서울 송파구 문정동 2', '02-2147-3404', 5,
  'confirmed', 'outdoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1568"}'::jsonb,
  37.490303023395, 127.132242086936, ARRAY['화장실', '휴게시설']::text[], '주중 00:00~24:00 / 주말 00:00~24:00',
  '주차장없음', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1568', NULL, '서울시 생활체육포털',
  'matched', '서울 송파구 문정동 2', NULL,
  NULL, '2025-09-30T00:25:30.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1568-두댐이공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1568-두댐이공원배드민턴장', '/court-covers/outdoor.svg', '두댐이공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1572-소리공원배드민턴장', '소리공원 배드민턴장', 'seoul', '송파구',
  '서울특별시 송파구 법원로5길 3', '02-2147-3380', 1,
  'confirmed', 'outdoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1572"}'::jsonb,
  37.4825761984407, 127.120852040102, ARRAY['화장실', '휴게시설']::text[], '주중 00:00~24:00 / 주말 00:00~24:00',
  '주차장 없음', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1572', NULL, '서울시 생활체육포털',
  'matched', '서울특별시 송파구 법원로5길 3', NULL,
  NULL, '2025-09-30T00:52:15.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1572-소리공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1572-소리공원배드민턴장', '/court-covers/outdoor.svg', '소리공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1569-송이공원배드민턴장', '송이공원 배드민턴장', 'seoul', '송파구',
  '서울 송파구 송파동 169', '02-2147-3380', 5,
  'confirmed', 'outdoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1569"}'::jsonb,
  37.5013006525828, 127.118898248048, ARRAY['화장실']::text[], '주중 00:00~24:00 / 주말 00:00~24:00',
  '주차장 없음', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1569', NULL, '서울시 생활체육포털',
  'matched', '서울 송파구 송파동 169', NULL,
  NULL, '2025-09-30T01:20:10.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1569-송이공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1569-송이공원배드민턴장', '/court-covers/outdoor.svg', '송이공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1677-송파1동배드민턴장', '송파1동배드민턴장', 'seoul', '송파구',
  '송파구 송파동 95-45', '02-2147-5133', 1,
  'confirmed', 'outdoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1677"}'::jsonb,
  37.5032000894683, 127.110903451126, ARRAY[]::text[], '주중 06:00~22:00 / 주말 06:00~22:00',
  '주차장 없음', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1677', 'https://www.songpa.go.kr/culture/contents.do?key=5415&', '서울시 생활체육포털',
  'matched', '송파구 송파동 95-45', NULL,
  NULL, '2025-09-30T01:28:02.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1677-송파1동배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1677-송파1동배드민턴장', '/court-covers/outdoor.svg', '송파1동배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'kspo-10544-송파구배드민턴체육관', '송파구배드민턴체육관', 'seoul', '송파구',
  '서울 송파구 거여동 오금로 479', '02-403-2839', 0,
  'unknown', 'indoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"국민체육진흥공단 외_어디서 운동할까","sourceUrl":"https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250","updatedAt":"2026-05-13T06:58:49.405Z"}'::jsonb,
  37.494262, 127.142523, ARRAY['구기체육관']::text[], '시설면적: - | 수용인원: - | 관람석: - | 휴무일: 매달 둘째, 넷째 월요일',
  NULL, 'public', '국민체육진흥공단 외_어디서 운동할까',
  'https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250', 'https://songpagongdan.or.kr/sports/sports02.asp', 'KSPO public dataset',
  'matched', '서울 송파구 거여동 오금로 479', NULL,
  NULL, '2026-05-13T06:41:16.180Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'kspo-10544-송파구배드민턴체육관';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'kspo-10544-송파구배드민턴체육관', '/court-covers/indoor.svg', '송파구배드민턴체육관 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-971-송파구배드민턴체육관', '송파구배드민턴체육관', 'seoul', '송파구',
  '서울특별시 송파구 문정로 176', '02-403-2839', 8,
  'confirmed', 'indoor', '{"status":"known","summary":"평일 : 2,500원, 주말 및 휴일 : 3,200원, 월 회원 : 43,000원","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=971","updatedAt":"2024-10-16T07:33:22.000Z"}'::jsonb,
  37.4937114782595, 127.138269948586, ARRAY['사무실', '락카룸', '샤워장']::text[], '주중 06:00~22:00 / 주말 06:00~22:00 / 매월 둘째 주 월요일, 넷째 주 월요일, 매년 1월 1일, 설연휴, 어린이날(5월 5일), 석가탄신일, 추석연휴, 성탄절(12월 25일) 휴관',
  '주차무료 (15면)', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=971', 'http://www.songpagongdan.or.kr/sports/sports02.asp', '서울시 생활체육포털',
  'matched', '서울특별시 송파구 문정로 176', NULL,
  NULL, '2024-10-16T07:33:22.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-971-송파구배드민턴체육관';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-971-송파구배드민턴체육관', '/court-covers/indoor.svg', '송파구배드민턴체육관 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-978-송파아우름체육센터', '송파아우름체육센터', 'seoul', '송파구',
  '서울 송파구 거여동 11-2', '02-2147-5134', 4,
  'confirmed', 'indoor', '{"status":"known","summary":"무료(라켓볼장만 유료)/개방","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=978","updatedAt":"2025-09-30T01:43:35.000Z"}'::jsonb,
  37.4980405662653, 127.141144674992, ARRAY['화장실']::text[], '주중 09:00~18:00 / 주말 09:00~18:00 / 공휴일 휴관',
  '주차장없음', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=978', 'https://www.songpa.go.kr/culture/contents.do?key=5403&', '서울시 생활체육포털',
  'matched', '서울 송파구 거여동 11-2', NULL,
  NULL, '2025-09-30T01:43:35.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-978-송파아우름체육센터';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-978-송파아우름체육센터', '/court-covers/indoor.svg', '송파아우름체육센터 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1605-잠실2동배드민턴장', '잠실2동배드민턴장', 'seoul', '송파구',
  '서울 송파구 잠실동 16', '02-2147-5130', 2,
  'confirmed', 'outdoor', '{"status":"known","summary":"무료/개방","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1605","updatedAt":"2025-09-30T01:56:33.000Z"}'::jsonb,
  37.5165076352683, 127.081496181992, ARRAY[]::text[], '주중 06:00~22:00 / 주말 06:00~22:00',
  '주차장 없음', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1605', 'https://www.songpa.go.kr/culture/contents.do?key=5416&', '서울시 생활체육포털',
  'matched', '서울 송파구 잠실동 16', NULL,
  NULL, '2025-09-30T01:56:33.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1605-잠실2동배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1605-잠실2동배드민턴장', '/court-covers/outdoor.svg', '잠실2동배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1673-잠실6동체육시설', '잠실6동체육시설', 'seoul', '송파구',
  '서울특별시 송파구 신천동 9', '02-2147-5130', 1,
  'confirmed', 'outdoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1673"}'::jsonb,
  37.5207726287441, 127.098945877706, ARRAY[]::text[], '주중 06:00~22:00 / 주말 06:00~22:00',
  '주차장 없음', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1673', 'https://www.songpa.go.kr/culture/contents.do?key=5409&', '서울시 생활체육포털',
  'matched', '서울특별시 송파구 신천동 9', NULL,
  NULL, '2025-09-30T01:59:38.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1673-잠실6동체육시설';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1673-잠실6동체육시설', '/court-covers/outdoor.svg', '잠실6동체육시설 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1678-잠실7동배드민턴장', '잠실7동배드민턴장', 'seoul', '송파구',
  '서울특별시 송파구 잠실동 139', '02-2147-5130', 3,
  'confirmed', 'outdoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1678"}'::jsonb,
  37.5036062654985, 127.074789758052, ARRAY[]::text[], '주중 06:00~20:00 / 주말 06:00~20:00',
  '주차장 없음', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1678', 'https://www.songpa.go.kr/culture/contents.do?key=5417&', '서울시 생활체육포털',
  'matched', '서울특별시 송파구 잠실동 139', NULL,
  NULL, '2025-09-30T01:59:56.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1678-잠실7동배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1678-잠실7동배드민턴장', '/court-covers/outdoor.svg', '잠실7동배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1668-탄천유수지체육시설', '탄천유수지체육시설', 'seoul', '송파구',
  '서울특별시 송파구 삼학사로2길 49', '02-448-7330', 1,
  'confirmed', 'indoor', '{"status":"known","summary":"홈페이지 참조","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1668","updatedAt":"2025-09-30T02:04:22.000Z"}'::jsonb,
  37.4964128421672, 127.100499169589, ARRAY[]::text[], '주중 08:00~20:00 / 주말 08:00~20:00',
  '전화문의', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1668', 'https://www.songpa.go.kr/culture/contents.do?key=5401&', '서울시 생활체육포털',
  'matched', '서울특별시 송파구 삼학사로2길 49', NULL,
  NULL, '2025-09-30T02:04:22.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1668-탄천유수지체육시설';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1668-탄천유수지체육시설', '/court-covers/indoor.svg', '탄천유수지체육시설 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-956-풍납배드민턴장', '풍납배드민턴장', 'seoul', '송파구',
  '서울특별시 송파구 풍납동 310-17', '02-2147-5134', 4,
  'confirmed', 'outdoor', '{"status":"known","summary":"무료","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=956","updatedAt":"2025-09-30T02:04:43.000Z"}'::jsonb,
  37.5306579940802, 127.11030974081, ARRAY['벤치']::text[], '주중 06:00~22:00 / 주말 06:00~22:00',
  '주차장 없음', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=956', 'https://www.songpa.go.kr/culture/contents.do?key=5410&', '서울시 생활체육포털',
  'matched', '서울특별시 송파구 풍납동 310-17', NULL,
  NULL, '2025-09-30T02:04:43.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-956-풍납배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-956-풍납배드민턴장', '/court-covers/outdoor.svg', '풍납배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-957-계남다목적체육관', '계남다목적체육관', 'seoul', '양천구',
  '서울특별시 양천구 신정로 273-5', '02-2606-9301', 15,
  'confirmed', 'indoor', '{"status":"varies","summary":"운영 프로그램에 따라 이용 요금 상이","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=957","updatedAt":"2023-02-21T05:14:41.000Z"}'::jsonb,
  37.5130860710944, 126.850498648014, ARRAY['샤워실', '탈의실', '스포츠용품샵']::text[], '주중 06:00~22:00 / 주말 09:00~18:00 / 공휴일 휴관',
  '주차 가능 (103면)', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=957', 'https://www.ycs.or.kr/fmcs/29', '서울시 생활체육포털',
  'matched', '서울특별시 양천구 신정로 273-5', NULL,
  NULL, '2023-02-21T05:14:41.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-957-계남다목적체육관';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-957-계남다목적체육관', '/court-covers/indoor.svg', '계남다목적체육관 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1541-오솔길실버공원배드민턴장', '오솔길실버공원 배드민턴장', 'seoul', '양천구',
  '서울특별시 양천구 남부순환로72길 16', '02-2620-4569', 2,
  'confirmed', 'outdoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1541"}'::jsonb,
  37.5202141129769, 126.836057101063, ARRAY['화장실', '휴게시설']::text[], '주중 00:00~24:00 / 주말 00:00~24:00',
  '공원 내 주차시설 없음 인근 해맞이 공영주차장 이용 (유료)', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1541', NULL, '서울시 생활체육포털',
  'matched', '서울특별시 양천구 남부순환로72길 16', NULL,
  NULL, '2025-02-24T08:29:39.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1541-오솔길실버공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1541-오솔길실버공원배드민턴장', '/court-covers/outdoor.svg', '오솔길실버공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1539-용왕산배드민턴장', '용왕산 배드민턴장', 'seoul', '양천구',
  '서울특별시 양천구 용왕정길 41', '010-4322-2706', 4,
  'confirmed', 'outdoor', '{"status":"known","summary":"(2시간 기준) 성인 : 2,000원 청소년 : 1,500원 어린이 : 1,000원 * 전용 사용료 별도","dayPass":null,"rental":"전용 사용료 별도","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1539","updatedAt":"2026-04-10T02:22:03.000Z"}'::jsonb,
  37.5440848007305, 126.877720626836, ARRAY['화장실', '휴게시설', '음수대']::text[], '주중 06:00~22:00 / 주말 06:00~22:00',
  '주차시설 없음', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1539', 'https://www.ycs.or.kr/fmcs/57', '서울시 생활체육포털',
  'matched', '서울특별시 양천구 용왕정길 41', NULL,
  NULL, '2026-04-10T02:22:03.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1539-용왕산배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1539-용왕산배드민턴장', '/court-covers/outdoor.svg', '용왕산 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1245-대림체육공원배드민턴장', '대림체육공원 배드민턴장', 'seoul', '영등포구',
  '서울 영등포구 가마산로31길 16', '010-2640-8895', 2,
  'confirmed', 'outdoor', '{"status":"known","summary":"무료","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1245","updatedAt":"2025-09-30T02:11:55.000Z"}'::jsonb,
  37.4996702140855, 126.893996830112, ARRAY['스탠드', '화장실', '그늘막']::text[], '주중 06:00-22:00 / 주말 ※ 시설 문의 요망',
  '대림운동장 공영주차장 이용', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1245', 'https://www.ydp.go.kr/www/contents.do?key=2919&', '서울시 생활체육포털',
  'matched', '서울 영등포구 가마산로31길 16', NULL,
  NULL, '2025-09-30T02:11:55.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1245-대림체육공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1245-대림체육공원배드민턴장', '/court-covers/outdoor.svg', '대림체육공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1579-신길근린공원배드민턴장', '신길근린공원 배드민턴장', 'seoul', '영등포구',
  '서울특별시 영등포구 도림로80길 8', '02-2670-3754', 0,
  'unknown', 'outdoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1579"}'::jsonb,
  37.5018925770655, 126.905614387963, ARRAY['화장실', '휴게시설', '음수대']::text[], '주중 00:00~24:00 / 주말 00:00~24:00',
  NULL, 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1579', NULL, '서울시 생활체육포털',
  'matched', '서울특별시 영등포구 도림로80길 8', NULL,
  NULL, '2025-09-30T02:12:36.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1579-신길근린공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1579-신길근린공원배드민턴장', '/court-covers/outdoor.svg', '신길근린공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1641-영등포다목적배드민턴체육관', '영등포 다목적배드민턴 체육관', 'seoul', '영등포구',
  '서울특별시 영등포구 도신로15길 5', '02-2630-2981', 50,
  'confirmed', 'indoor', '{"status":"known","summary":"배드민턴 체육경기 (2시간 단위, 매월 둘째주 일요일) : 170,000 일회입장 성인: 3,000 청소년 : 2,000 어린이 : 1,500","dayPass":"일회입장 성인: 3,000 청소년 : 2,000 어린이 : 1,500","rental":"체육경기 (2시간 단위, 매월 둘째주 일요일) : 170,000 일회입장 성인: 3,000 청소년 : 2,000 어린이 : 1,500","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1641","updatedAt":"2025-09-30T02:21:11.000Z"}'::jsonb,
  37.5059713075436, 126.898200164851, ARRAY[]::text[], '주중 06:00 ~ 21:40 / 주말 07:00 ~ 17:30',
  '배드민턴 체육관 및 클라이밍 경기장 이용회원은 4시간 무료주차가 가능합니다.(1일 1회만 가능, 중복 무료주차 불가) 출차 시 반드시 배드민턴 체육관 2층 고객만족센터에서 이용 확인을 받으시기 바랍니다. 추가내용 홈페이지 참', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1641', 'https://www.y-sisul.or.kr/ydps/menu/general/management_07_01.mir', '서울시 생활체육포털',
  'matched', '서울특별시 영등포구 도신로15길 5', NULL,
  NULL, '2025-09-30T02:21:11.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1641-영등포다목적배드민턴체육관';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1641-영등포다목적배드민턴체육관', '/court-covers/indoor.svg', '영등포 다목적배드민턴 체육관 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1576-영등포공원배드민턴장', '영등포공원 배드민턴장', 'seoul', '영등포구',
  '서울특별시 영등포구 신길로 275', '02-2670-3764', 5,
  'confirmed', 'outdoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1576"}'::jsonb,
  37.5161266236525, 126.912126417071, ARRAY['화장실', '휴게시설', '음수대']::text[], '주중 08:00~20:00 / 주말 08:00~20:00',
  '영등포공원 공영주차장 이용', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1576', 'https://parks.seoul.go.kr/parks/detailView.do?pIdx=24', '서울시 생활체육포털',
  'matched', '서울특별시 영등포구 신길로 275', NULL,
  NULL, '2025-09-30T02:27:27.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1576-영등포공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1576-영등포공원배드민턴장', '/court-covers/outdoor.svg', '영등포공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1394-원효로다목적체육관', '원효로다목적체육관', 'seoul', '용산구',
  '서울특별시 용산구 원효로3가 51-26', '02-704-2205', 6,
  'confirmed', 'indoor', '{"status":"varies","summary":"대관 시간 및 형태에 따라 이용 요금 상이","dayPass":null,"rental":"대관 시간 및 형태에 따라 이용 요금 상이","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1394","updatedAt":"2025-09-30T02:29:50.000Z"}'::jsonb,
  37.5330676756862, 126.957147950336, ARRAY['샤워실', '탈의실']::text[], '주중 화요일~금요일 06:00~22:00 / 주말 토요일 06:00~22:00 / 일요일 06:00~18:00',
  '".주차 가능 (8면 : 일반 4대, 경차 3대, 장애인 1대) 주차장이 협소하므로 대중교통 이용 권장"', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1394', 'https://www.yong-san.or.kr/site/main/content/culture_02', '서울시 생활체육포털',
  'matched', '서울특별시 용산구 원효로3가 51-26', NULL,
  NULL, '2025-09-30T02:29:50.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1394-원효로다목적체육관';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1394-원효로다목적체육관', '/court-covers/indoor.svg', '원효로다목적체육관 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1437-이촌한강공원배드민턴장', '이촌한강공원 배드민턴장', 'seoul', '용산구',
  '서울특별시 용산구 이촌로72길 62', '02-3780-0551~4', 10,
  'confirmed', 'outdoor', '{"status":"known","summary":"2,000원 / 2시간 *월 정액 : 30,000원","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1437","updatedAt":"2025-02-04T03:05:10.000Z"}'::jsonb,
  37.517820588578, 126.970850893942, ARRAY['샤워실', '탈의실', '화장실', '음수대', '그늘막', '매점', '어린이놀이터', '자연학습장']::text[], '주중 4월~9월 / 06:00~20:00 10월~다음 해 3월 / 07:00~17:00 / 주말 4월~9월 / 06:00~20:00 10월~다음 해 3월 / 07:00~17:00',
  '이촌1~4주차장 이용 (총 335면) 최초 30분 1,000원, 초과 10분당 200원', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1437', 'https://hangang.seoul.go.kr/archives/46695', '서울시 생활체육포털',
  'matched', '서울특별시 용산구 이촌로72길 62', NULL,
  NULL, '2025-02-04T03:05:10.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1437-이촌한강공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1437-이촌한강공원배드민턴장', '/court-covers/outdoor.svg', '이촌한강공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1530-효창근린공원배드민턴장', '효창근린공원 배드민턴장', 'seoul', '용산구',
  '서울특별시 용산구 효창원로 177-18', '02-2199-7607', 1,
  'confirmed', 'outdoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1530"}'::jsonb,
  37.544957405495, 126.962290943049, ARRAY['화장실', '음수대', '매점']::text[], '주중 00:00~24:00 / 주말 00:00~24:00',
  '주차 가능', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1530', 'https://hyochangpark.com/intro', '서울시 생활체육포털',
  'matched', '서울특별시 용산구 효창원로 177-18', NULL,
  NULL, '2025-09-30T02:33:04.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1530-효창근린공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1530-효창근린공원배드민턴장', '/court-covers/outdoor.svg', '효창근린공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1135-백련근린공원백련실내배드민턴장', '백련근린공원 백련실내배드민턴장', 'seoul', '은평구',
  '서울특별시 은평구 백련산로 4길 26', '02-350-5357', 4,
  'confirmed', 'indoor', '{"status":"varies","summary":"운영 프로그램에 따라 이용 요금 상이","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1135","updatedAt":"2025-09-30T02:33:18.000Z"}'::jsonb,
  37.5942918751946, 126.92654392517, ARRAY['샤워실', '탈의실', '휴게실', '락커룸', '주차장']::text[], '주중 06:00~22:00 / 주말 토요일 06:00~22:00, 일요일 및 공휴일 07:00~16:00',
  '무료', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1135', 'https://www.efmc.or.kr/fmcs/506', '서울시 생활체육포털',
  'matched', '서울특별시 은평구 백련산로 4길 26', NULL,
  NULL, '2025-09-30T02:33:18.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1135-백련근린공원백련실내배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1135-백련근린공원백련실내배드민턴장', '/court-covers/indoor.svg', '백련근린공원 백련실내배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1144-은평구생활체육광장배드민턴장', '은평구생활체육광장 배드민턴장', 'seoul', '은평구',
  '서울특별시 은평구 증산로5길 35-27', '02-351-6554', 3,
  'confirmed', 'indoor', '{"status":"known","summary":"무료","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1144","updatedAt":"2025-09-30T02:34:49.000Z"}'::jsonb,
  37.5838153929282, 126.904939878075, ARRAY['화장실']::text[], '주중 09:00~22:00 / 주말 09:00~22:00',
  '무료', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1144', 'https://www.ep.go.kr/www/contents.do?key=1426', '서울시 생활체육포털',
  'matched', '서울특별시 은평구 증산로5길 35-27', NULL,
  NULL, '2025-09-30T02:34:49.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1144-은평구생활체육광장배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1144-은평구생활체육광장배드민턴장', '/court-covers/indoor.svg', '은평구생활체육광장 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1199-무악배드민턴장', '무악배드민턴장', 'seoul', '종로구',
  '서울특별시 종로구 통일로18가길 46', '02-2148-1892', 0,
  'unknown', 'outdoor', '{"status":"known","summary":"무료","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1199","updatedAt":"2021-12-01T01:49:09.000Z"}'::jsonb,
  37.5778668023282, 126.958394513267, ARRAY['화장실', '휴게실']::text[], '주중 06:00~22:00 / 주말 06:00~22:00',
  '주차 불가', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1199', 'https://www.culture.go.kr/space/athleticsView.do?seq=11', '서울시 생활체육포털',
  'matched', '서울특별시 종로구 통일로18가길 46', NULL,
  NULL, '2021-12-01T01:49:09.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1199-무악배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1199-무악배드민턴장', '/court-covers/outdoor.svg', '무악배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1201-숭인근린공원', '숭인근린공원', 'seoul', '종로구',
  '서울특별시 종로구 동망산길 150', '02-2148-2843', 0,
  'unknown', 'outdoor', '{"status":"known","summary":"무료","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1201","updatedAt":"2025-09-30T02:40:21.000Z"}'::jsonb,
  37.5775612632202, 127.018162562509, ARRAY['화장실', '음수대', '놀이터', '쉼터']::text[], '주중 00:00~24:00 / 주말 00:00~24:00',
  '주차 불가', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1201', 'http://parks.seoul.go.kr/parks/detailView.do?pIdx=1376', '서울시 생활체육포털',
  'matched', '서울특별시 종로구 동망산길 150', NULL,
  NULL, '2025-09-30T02:40:21.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1201-숭인근린공원';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1201-숭인근린공원', '/court-covers/outdoor.svg', '숭인근린공원 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1203-올림픽기념국민생활관수영장', '올림픽기념국민생활관 수영장', 'seoul', '종로구',
  '서울특별시 종로구 성균관로 91', '02-745-6701', 0,
  'unknown', 'outdoor', '{"status":"varies","summary":"운영 프로그램에 따라 이용 요금 상이","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1203","updatedAt":"2021-11-05T00:44:36.000Z"}'::jsonb,
  37.5904605532487, 126.998798555145, ARRAY['샤워실', '탈의실', '체온조절실', '개인사물함']::text[], '주중 09:00~20:00 / 주말 주말 10:00~15:00, 공휴일 휴무',
  '- 회원 : 프로그램 이용시간 +1시간 무료, 이후 5분당 400원 - 비회원 : 5분당 400원', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1203', 'http://www.ijongno.co.kr/m/program/listPgm/11/01', '서울시 생활체육포털',
  'matched', '서울특별시 종로구 성균관로 91', NULL,
  NULL, '2021-11-05T00:44:36.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1203-올림픽기념국민생활관수영장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1203-올림픽기념국민생활관수영장', '/court-covers/outdoor.svg', '올림픽기념국민생활관 수영장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1204-와룡근린공원배드민턴장', '와룡근린공원 배드민턴장', 'seoul', '종로구',
  '서울특별시 종로구 와룡공원길 192', '02-2148-2842', 4,
  'confirmed', 'outdoor', '{"status":"known","summary":"무료","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1204","updatedAt":"2025-09-30T02:41:12.000Z"}'::jsonb,
  37.5911688666848, 126.990123964035, ARRAY['화장실', '벤치']::text[], '주중 06:00~22:00 / 주말 06:00~22:00',
  '주차 불가', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1204', 'https://parks.seoul.go.kr/parks/detailView.do?pIdx=94&tabTarget=1/', '서울시 생활체육포털',
  'matched', '서울특별시 종로구 와룡공원길 192', NULL,
  NULL, '2025-09-30T02:41:12.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1204-와룡근린공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1204-와룡근린공원배드민턴장', '/court-covers/outdoor.svg', '와룡근린공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1205-인왕배드민턴장', '인왕배드민턴장', 'seoul', '종로구',
  '서울특별시 종로구 누상동 산1-38', '02-2148-2832', 4,
  'confirmed', 'outdoor', '{"status":"known","summary":"입회비 : 30,000원 남성회원 : 13,000원 여성회원 : 10,000원","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1205","updatedAt":"2025-09-30T02:41:25.000Z"}'::jsonb,
  37.5787679638682, 126.964418522843, ARRAY['화장실', '벤치']::text[], '주중 06:00~21:30 / 주말 06:00~21:30',
  '주차 가능', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1205', NULL, '서울시 생활체육포털',
  'matched', '서울특별시 종로구 누상동 산1-38', NULL,
  NULL, '2025-09-30T02:41:25.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1205-인왕배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1205-인왕배드민턴장', '/court-covers/outdoor.svg', '인왕배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1208-종로구민회관수영장', '종로구민회관 수영장', 'seoul', '종로구',
  '서울특별시 종로구 지봉로5길 7-5', '02-6048-1318', 0,
  'unknown', 'outdoor', '{"status":"varies","summary":"운영 프로그램에 따라 이용 요금 상이","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1208","updatedAt":"2025-09-30T02:42:30.000Z"}'::jsonb,
  37.5735002829862, 127.01436607091, ARRAY['샤워실', '탈의실', '의무실']::text[], '주중 07:00~21:00 / 주말 주말 09:00~17:00 / 공휴일 휴관',
  '- 회원 : 프로그램 이용시간 +1시간 무료, 이후 5분당 400원 - 비회원 : 5분당 400원', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1208', 'https://www.ijongno.co.kr/fmcs/32', '서울시 생활체육포털',
  'matched', '서울특별시 종로구 지봉로5길 7-5', NULL,
  NULL, '2025-09-30T02:42:30.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1208-종로구민회관수영장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1208-종로구민회관수영장', '/court-covers/outdoor.svg', '종로구민회관 수영장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1364-종로문화체육센터수영장', '종로문화체육센터 수영장', 'seoul', '종로구',
  '서울특별시 종로구 인왕산로1길 21', '02-6048-1347', 0,
  'unknown', 'indoor', '{"status":"varies","summary":"운영 프로그램에 따라 이용 요금 상이","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1364","updatedAt":"2025-09-30T02:42:49.000Z"}'::jsonb,
  37.5742098160357, 126.964661018954, ARRAY['샤워실', '탈의실', '체온조절실']::text[], '주중 07:00~21:00 / 주말 주말 09:00~17:00 / 공휴일 휴관',
  '- 회원 : 프로그램 이용시간 +1시간 무료, 이후 5분당 400원 - 비회원 : 5분당 400원', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1364', 'https://www.ijongno.co.kr/fmcs/44', '서울시 생활체육포털',
  'matched', '서울특별시 종로구 인왕산로1길 21', NULL,
  NULL, '2025-09-30T02:42:49.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1364-종로문화체육센터수영장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1364-종로문화체육센터수영장', '/court-covers/indoor.svg', '종로문화체육센터 수영장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1210-중앙배드민턴장', '중앙배드민턴장', 'seoul', '종로구',
  '서울특별시 종로구 사직동 산1-9', '2148-3072', 0,
  'unknown', 'outdoor', '{"status":"known","summary":"무료","dayPass":null,"rental":null,"sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1210","updatedAt":"2021-04-20T13:14:20.000Z"}'::jsonb,
  37.5770457155804, 126.965642080739, ARRAY['벤치', '수도']::text[], '주중 06:00-22:00 / 주말 -',
  '주차 불가', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1210', NULL, '서울시 생활체육포털',
  'matched', '서울특별시 종로구 사직동 산1-9', NULL,
  NULL, '2021-04-20T13:14:20.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1210-중앙배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1210-중앙배드민턴장', '/court-covers/outdoor.svg', '중앙배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-sports-1525-응봉근린공원배드민턴장', '응봉근린공원 배드민턴장', 'seoul', '중구',
  '서울특별시 성동구 독서당로63길 85', '02-2293-7646', 1,
  'confirmed', 'outdoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1525"}'::jsonb,
  37.5537419317778, 127.02734952944, ARRAY['화장실', '음수대', '피크닉 테이블']::text[], '주중 00:00~24:00 / 주말 00:00~24:00',
  '-', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1525', 'https://parks.seoul.go.kr/parks/detailView.do?pIdx=17', '서울시 생활체육포털',
  'matched', '서울특별시 성동구 독서당로63길 85', NULL,
  NULL, '2025-09-30T02:45:05.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-sports-1525-응봉근린공원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-sports-1525-응봉근린공원배드민턴장', '/court-covers/outdoor.svg', '응봉근린공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'seoul-junggu-hunryeonwon-gym', '훈련원공원종합체육관', 'seoul', '중구',
  '서울특별시 중구 을지로 227', '02-2280-8397', 0,
  'unknown', 'indoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"서울시 생활체육포털","sourceUrl":"https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1177"}'::jsonb,
  37.5669291250632, 127.004389310038, ARRAY['샤워실', '탈의실', '개인사물함', '관람석']::text[], '주중 06:00-22:00 / 주말·공휴일 06:00-22:00',
  '5분당 400원', 'official', '서울시 생활체육포털',
  'https://sports.seoul.go.kr/main/facilities/facilities_view.do?ft_idx=1177', 'https://www.e-junggu.or.kr/fmcs/301', 'Kakao Local API',
  'matched', '서울 중구 을지로 227', NULL,
  NULL, '2026-05-13T00:00:00.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'seoul-junggu-hunryeonwon-gym';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'seoul-junggu-hunryeonwon-gym', '/court-covers/indoor.svg', '훈련원공원종합체육관 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'gyeonggi-gapyeong-hanseokbong', '한석봉체육관', 'gyeonggi', '가평군',
  '경기도 가평군 가평읍 문화로 131', '031-8078-8310', 12,
  'confirmed', 'indoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"가평군시설관리공단","sourceUrl":"https://www.gpfmc.or.kr/page/selectPage.do?muNo=500"}'::jsonb,
  37.8254310813271, 127.506125214946, ARRAY['배드민턴 코트', '클라이밍', '샤워실', '락커룸']::text[], '평일 06:00-22:00 / 토요일 06:00-18:00 / 일요일·공휴일 휴관',
  NULL, 'official', '가평군시설관리공단',
  'https://www.gpfmc.or.kr/page/selectPage.do?muNo=500', 'https://www.gpfmc.or.kr/page/selectPage.do?muNo=500', 'Kakao Local API',
  'matched', '경기 가평군 가평읍 문화로 131', NULL,
  NULL, '2026-05-13T00:00:00.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'gyeonggi-gapyeong-hanseokbong';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'gyeonggi-gapyeong-hanseokbong', '/court-covers/indoor.svg', '한석봉체육관 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'kspo-17431-가좌배드민턴경기장', '가좌배드민턴 경기장', 'gyeonggi', '고양시',
  '경기 고양시 일산서구 가좌동 가좌3로 43', '031-966-0114', 0,
  'unknown', 'indoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"국민체육진흥공단 외_어디서 운동할까","sourceUrl":"https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250","updatedAt":"2026-05-13T06:58:49.405Z"}'::jsonb,
  37.679854, 126.797527, ARRAY['구기체육관']::text[], '시설면적: - | 수용인원: - | 관람석: - | 휴무일: 무휴',
  NULL, 'public', '국민체육진흥공단 외_어디서 운동할까',
  'https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250', 'https://cafe.daum.net/bdmtgg', 'KSPO public dataset',
  'matched', '경기 고양시 일산서구 가좌동 가좌3로 43', NULL,
  NULL, '2026-05-13T06:41:16.180Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'kspo-17431-가좌배드민턴경기장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'kspo-17431-가좌배드민턴경기장', '/court-covers/indoor.svg', '가좌배드민턴 경기장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'kspo-15361-고양근린공원실내배드민턴장', '고양 근린공원실내 배드민턴장', 'gyeonggi', '고양시',
  '경기 고양시 덕양구 고양동 동헌로 440-4', '확인 필요', 0,
  'unknown', 'indoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"국민체육진흥공단 외_어디서 운동할까","sourceUrl":"https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250","updatedAt":"2026-05-13T06:58:49.405Z"}'::jsonb,
  37.70592, 126.900642, ARRAY['구기체육관']::text[], '시설면적: - | 수용인원: - | 관람석: - | 휴무일: 연중무휴',
  NULL, 'public', '국민체육진흥공단 외_어디서 운동할까',
  'https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250', 'https://cafe.daum.net/goyangbadminton', 'KSPO public dataset',
  'matched', '경기 고양시 덕양구 고양동 동헌로 440-4', NULL,
  NULL, '2026-05-13T06:41:16.180Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'kspo-15361-고양근린공원실내배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'kspo-15361-고양근린공원실내배드민턴장', '/court-covers/indoor.svg', '고양 근린공원실내 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'kspo-15419-대화배드민턴경기장', '대화배드민턴 경기장', 'gyeonggi', '고양시',
  '경기 고양시 일산서구 대화동 대화로 168', '031-966-0114', 0,
  'unknown', 'indoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"국민체육진흥공단 외_어디서 운동할까","sourceUrl":"https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250","updatedAt":"2026-05-13T06:58:49.405Z"}'::jsonb,
  37.671539, 126.738444, ARRAY['구기체육관']::text[], '시설면적: - | 수용인원: - | 관람석: - | 휴무일: 연중무휴',
  NULL, 'public', '국민체육진흥공단 외_어디서 운동할까',
  'https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250', 'https://cafe.daum.net/hotbloodbadminton', 'KSPO public dataset',
  'matched', '경기 고양시 일산서구 대화동 대화로 168', NULL,
  NULL, '2026-05-13T06:41:16.180Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'kspo-15419-대화배드민턴경기장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'kspo-15419-대화배드민턴경기장', '/court-covers/indoor.svg', '대화배드민턴 경기장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'kspo-11777-마상배드민턴장', '마상배드민턴장', 'gyeonggi', '고양시',
  '경기 고양시 덕양구 주교동 원당로69번길 46', '031-929-4800', 0,
  'unknown', 'indoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"국민체육진흥공단 외_어디서 운동할까","sourceUrl":"https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250","updatedAt":"2026-05-13T06:58:49.405Z"}'::jsonb,
  37.660149, 126.833017, ARRAY['구기체육관']::text[], '시설면적: - | 수용인원: - | 관람석: - | 휴무일: 연중무휴',
  NULL, 'public', '국민체육진흥공단 외_어디서 운동할까',
  'https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250', 'https://www.gys.or.kr/', 'KSPO public dataset',
  'matched', '경기 고양시 덕양구 주교동 원당로69번길 46', NULL,
  NULL, '2026-05-13T06:41:16.180Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'kspo-11777-마상배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'kspo-11777-마상배드민턴장', '/court-covers/indoor.svg', '마상배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'kspo-10093-백석배드민턴장', '백석 배드민턴장', 'gyeonggi', '고양시',
  '경기 고양시 일산동구 백석동 일산로 134', '031-909-9900', 0,
  'unknown', 'indoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"국민체육진흥공단 외_어디서 운동할까","sourceUrl":"https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250","updatedAt":"2026-05-13T06:58:49.405Z"}'::jsonb,
  37.648901, 126.793731, ARRAY['구기체육관']::text[], '시설면적: - | 수용인원: - | 관람석: - | 휴무일: 매월 첫째, 셋째 일요일',
  NULL, 'public', '국민체육진흥공단 외_어디서 운동할까',
  'https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250', 'https://cafe.naver.com/kc2006.cafe', 'KSPO public dataset',
  'matched', '경기 고양시 일산동구 백석동 일산로 134', NULL,
  NULL, '2026-05-13T06:41:16.180Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'kspo-10093-백석배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'kspo-10093-백석배드민턴장', '/court-covers/indoor.svg', '백석 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'kspo-15331-성라2배드민턴경기장', '성라2배드민턴 경기장', 'gyeonggi', '고양시',
  '경기 고양시 덕양구 성사동 어울림로 33', '031-966-7879', 0,
  'unknown', 'indoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"국민체육진흥공단 외_어디서 운동할까","sourceUrl":"https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250","updatedAt":"2026-05-13T06:58:49.405Z"}'::jsonb,
  37.64906, 126.835761, ARRAY['구기체육관']::text[], '시설면적: - | 수용인원: - | 관람석: - | 휴무일: 연중무휴',
  NULL, 'public', '국민체육진흥공단 외_어디서 운동할까',
  'https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250', 'https://cafe.daum.net/goyangminton/', 'KSPO public dataset',
  'matched', '경기 고양시 덕양구 성사동 어울림로 33', NULL,
  NULL, '2026-05-13T06:41:16.180Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'kspo-15331-성라2배드민턴경기장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'kspo-15331-성라2배드민턴경기장', '/court-covers/indoor.svg', '성라2배드민턴 경기장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'kspo-11838-식골배드민턴장', '식골 배드민턴장', 'gyeonggi', '고양시',
  '경기 고양시 일산동구 풍동 숲속마을로 108', '031-8075-2326', 0,
  'unknown', 'indoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"국민체육진흥공단 외_어디서 운동할까","sourceUrl":"https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250","updatedAt":"2026-05-13T06:58:49.405Z"}'::jsonb,
  37.670732, 126.797125, ARRAY['구기체육관']::text[], '시설면적: - | 수용인원: - | 관람석: - | 휴무일: 연중무휴',
  NULL, 'public', '국민체육진흥공단 외_어디서 운동할까',
  'https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250', NULL, 'KSPO public dataset',
  'matched', '경기 고양시 일산동구 풍동 숲속마을로 108', NULL,
  NULL, '2026-05-13T06:41:16.180Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'kspo-11838-식골배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'kspo-11838-식골배드민턴장', '/court-covers/indoor.svg', '식골 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'kspo-15669-정발산배드민턴경기장', '정발산배드민턴 경기장', 'gyeonggi', '고양시',
  '경기 고양시 일산동구 마두동', '확인 필요', 0,
  'unknown', 'indoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"국민체육진흥공단 외_어디서 운동할까","sourceUrl":"https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250","updatedAt":"2026-05-13T06:58:49.405Z"}'::jsonb,
  37.537247, 127.181603, ARRAY['구기체육관']::text[], '시설면적: - | 수용인원: - | 관람석: - | 휴무일: 연중무휴',
  NULL, 'public', '국민체육진흥공단 외_어디서 운동할까',
  'https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250', NULL, 'KSPO public dataset',
  'matched', '경기 고양시 일산동구 마두동', NULL,
  NULL, '2026-05-13T06:41:16.180Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'kspo-15669-정발산배드민턴경기장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'kspo-15669-정발산배드민턴경기장', '/court-covers/indoor.svg', '정발산배드민턴 경기장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'kspo-17943-중산배드민턴장', '중산배드민턴장', 'gyeonggi', '고양시',
  '경기 고양시 일산동구 중산동 중산로 217', '확인 필요', 0,
  'unknown', 'indoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"국민체육진흥공단 외_어디서 운동할까","sourceUrl":"https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250","updatedAt":"2026-05-13T06:58:49.405Z"}'::jsonb,
  37.691503, 126.779898, ARRAY['구기체육관']::text[], '시설면적: - | 수용인원: - | 관람석: - | 휴무일: 무휴',
  NULL, 'public', '국민체육진흥공단 외_어디서 운동할까',
  'https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250', 'https://cafe.daum.net/jungsanb/', 'KSPO public dataset',
  'matched', '경기 고양시 일산동구 중산동 중산로 217', NULL,
  NULL, '2026-05-13T06:41:16.180Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'kspo-17943-중산배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'kspo-17943-중산배드민턴장', '/court-covers/indoor.svg', '중산배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'kspo-15756-구리실내배드민턴장', '구리 실내배드민턴장', 'gyeonggi', '구리시',
  '경기 구리시 교문동 체육관로113번길 8', '031-550-2518', 0,
  'unknown', 'indoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"국민체육진흥공단 외_어디서 운동할까","sourceUrl":"https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250","updatedAt":"2026-05-13T06:58:49.405Z"}'::jsonb,
  37.594788, 127.136355, ARRAY['구기체육관']::text[], '시설면적: - | 수용인원: - | 관람석: - | 휴무일: 연중무휴',
  NULL, 'public', '국민체육진흥공단 외_어디서 운동할까',
  'https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250', 'https://www.guri.go.kr', 'KSPO public dataset',
  'matched', '경기 구리시 교문동 체육관로113번길 8', NULL,
  NULL, '2026-05-13T06:41:16.180Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'kspo-15756-구리실내배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'kspo-15756-구리실내배드민턴장', '/court-covers/indoor.svg', '구리 실내배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'kspo-17950-경찰서배드민턴장', '경찰서 배드민턴장', 'gyeonggi', '군포시',
  '경기 군포시 금정동 산본로324번길 16', '031-390-0731', 0,
  'unknown', 'indoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"국민체육진흥공단 외_어디서 운동할까","sourceUrl":"https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250","updatedAt":"2026-05-13T06:58:49.405Z"}'::jsonb,
  37.360559, 126.937076, ARRAY[]::text[], '시설면적: - | 수용인원: - | 관람석: - | 휴무일:',
  NULL, 'public', '국민체육진흥공단 외_어디서 운동할까',
  'https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250', NULL, 'KSPO public dataset',
  'matched', '경기 군포시 금정동 산본로324번길 16', NULL,
  NULL, '2026-05-13T06:41:16.180Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'kspo-17950-경찰서배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'kspo-17950-경찰서배드민턴장', '/court-covers/indoor.svg', '경찰서 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'kspo-10210-군포제3체육관배드민턴전용', '군포 제3 체육관(배드민턴전용)', 'gyeonggi', '군포시',
  '경기 군포시 금정동 산본로 265', '031-390-7677', 0,
  'unknown', 'indoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"국민체육진흥공단 외_어디서 운동할까","sourceUrl":"https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250","updatedAt":"2026-05-13T06:58:49.405Z"}'::jsonb,
  37.354836, 126.937736, ARRAY['구기체육관']::text[], '시설면적: - | 수용인원: - | 관람석: - | 휴무일: 첫째,셋째 월요일',
  NULL, 'public', '국민체육진흥공단 외_어디서 운동할까',
  'https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250', 'https://www.gunpocs.or.kr', 'KSPO public dataset',
  'matched', '경기 군포시 금정동 산본로 265', NULL,
  NULL, '2026-05-13T06:41:16.180Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'kspo-10210-군포제3체육관배드민턴전용';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'kspo-10210-군포제3체육관배드민턴전용', '/court-covers/indoor.svg', '군포 제3 체육관(배드민턴전용) 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'kspo-15457-묵현리배드민턴장', '묵현리배드민턴장', 'gyeonggi', '남양주시',
  '경기 남양주시 화도읍 묵현로 92', '확인 필요', 0,
  'unknown', 'indoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"국민체육진흥공단 외_어디서 운동할까","sourceUrl":"https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250","updatedAt":"2026-05-13T06:58:49.405Z"}'::jsonb,
  37.663959, 127.292615, ARRAY[]::text[], '시설면적: - | 수용인원: - | 관람석: - | 휴무일:',
  NULL, 'public', '국민체육진흥공단 외_어디서 운동할까',
  'https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250', NULL, 'KSPO public dataset',
  'matched', '경기 남양주시 화도읍 묵현로 92', NULL,
  NULL, '2026-05-13T06:41:16.180Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'kspo-15457-묵현리배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'kspo-15457-묵현리배드민턴장', '/court-covers/indoor.svg', '묵현리배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'kspo-12212-송천리배드민턴장', '송천리배드민턴장', 'gyeonggi', '남양주시',
  '경기 남양주시 수동면 소래비로416번길 168-16', '확인 필요', 0,
  'unknown', 'indoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"국민체육진흥공단 외_어디서 운동할까","sourceUrl":"https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250","updatedAt":"2026-05-13T06:58:49.405Z"}'::jsonb,
  37.693439, 127.341087, ARRAY[]::text[], '시설면적: - | 수용인원: - | 관람석: - | 휴무일:',
  NULL, 'public', '국민체육진흥공단 외_어디서 운동할까',
  'https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250', NULL, 'KSPO public dataset',
  'matched', '경기 남양주시 수동면 소래비로416번길 168-16', NULL,
  NULL, '2026-05-13T06:41:16.180Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'kspo-12212-송천리배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'kspo-12212-송천리배드민턴장', '/court-covers/indoor.svg', '송천리배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'kspo-11932-이패동배드민턴장', '이패동배드민턴장', 'gyeonggi', '남양주시',
  '경기 남양주시 이패동 홍유릉로 134', '확인 필요', 0,
  'unknown', 'indoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"국민체육진흥공단 외_어디서 운동할까","sourceUrl":"https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250","updatedAt":"2026-05-13T06:58:49.405Z"}'::jsonb,
  37.614667, 127.197979, ARRAY[]::text[], '시설면적: - | 수용인원: - | 관람석: - | 휴무일:',
  NULL, 'public', '국민체육진흥공단 외_어디서 운동할까',
  'https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250', NULL, 'KSPO public dataset',
  'matched', '경기 남양주시 이패동 홍유릉로 134', NULL,
  NULL, '2026-05-13T06:41:16.180Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'kspo-11932-이패동배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'kspo-11932-이패동배드민턴장', '/court-covers/indoor.svg', '이패동배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'kspo-16014-퇴계원배드민턴장', '퇴계원배드민턴장', 'gyeonggi', '남양주시',
  '경기 남양주시 퇴계원면 퇴계원로59번길 41-39', '확인 필요', 0,
  'unknown', 'indoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"국민체육진흥공단 외_어디서 운동할까","sourceUrl":"https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250","updatedAt":"2026-05-13T06:58:49.405Z"}'::jsonb,
  37.65489, 127.14039, ARRAY[]::text[], '시설면적: - | 수용인원: - | 관람석: - | 휴무일:',
  NULL, 'public', '국민체육진흥공단 외_어디서 운동할까',
  'https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250', NULL, 'KSPO public dataset',
  'matched', '경기 남양주시 퇴계원면 퇴계원로59번길 41-39', NULL,
  NULL, '2026-05-13T06:41:16.180Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'kspo-16014-퇴계원배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'kspo-16014-퇴계원배드민턴장', '/court-covers/indoor.svg', '퇴계원배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'kspo-11848-동두천배드민턴전용구장', '동두천 배드민턴 전용구장', 'gyeonggi', '동두천시',
  '경기 동두천시 생연동 정장로 135-32', '031-866-8669', 0,
  'unknown', 'indoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"국민체육진흥공단 외_어디서 운동할까","sourceUrl":"https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250","updatedAt":"2026-05-13T06:58:49.405Z"}'::jsonb,
  37.905937, 127.06203, ARRAY['구기체육관']::text[], '시설면적: - | 수용인원: - | 관람석: - | 휴무일: 연중무휴',
  NULL, 'public', '국민체육진흥공단 외_어디서 운동할까',
  'https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250', NULL, 'KSPO public dataset',
  'matched', '경기 동두천시 생연동 정장로 135-32', NULL,
  NULL, '2026-05-13T06:41:16.180Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'kspo-11848-동두천배드민턴전용구장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'kspo-11848-동두천배드민턴전용구장', '/court-covers/indoor.svg', '동두천 배드민턴 전용구장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'gyeonggi-bucheon-badminton-gym', '부천 배드민턴 전용체육관', 'gyeonggi', '부천시',
  '경기도 부천시 소사구 은성로2번길 6', '032-340-5380', 9,
  'confirmed', 'indoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"부천도시공사","sourceUrl":"https://www.best.or.kr/fmcs/246"}'::jsonb,
  37.4751886578904, 126.79042311583, ARRAY['배드민턴장', '휴게실', '탈의실', '샤워실', '주차장']::text[], '평일 06:00-22:00 / 토요일 06:00-20:00 / 일요일·공휴일 07:00-19:00',
  '주차장', 'official', '부천도시공사',
  'https://www.best.or.kr/fmcs/246', 'https://www.best.or.kr/fmcs/246', 'Kakao Local API',
  'matched', '경기 부천시 소사구 은성로2번길 6', NULL,
  NULL, '2026-05-13T00:00:00.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'gyeonggi-bucheon-badminton-gym';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'gyeonggi-bucheon-badminton-gym', '/court-covers/indoor.svg', '부천 배드민턴 전용체육관 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'kspo-11627-수원시실내배드민턴전용경기장', '수원시 실내배드민턴전용경기장', 'gyeonggi', '수원시',
  '경기 수원시 장안구 송죽동', '031-255-6222', 0,
  'unknown', 'indoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"국민체육진흥공단 외_어디서 운동할까","sourceUrl":"https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250","updatedAt":"2026-05-13T06:58:49.405Z"}'::jsonb,
  37.306414, 127.004777, ARRAY['구기체육관']::text[], '시설면적: - | 수용인원: - | 관람석: - | 휴무일: 무휴',
  NULL, 'public', '국민체육진흥공단 외_어디서 운동할까',
  'https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250', NULL, 'KSPO public dataset',
  'matched', '경기 수원시 장안구 송죽동', NULL,
  NULL, '2026-05-13T06:41:16.180Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'kspo-11627-수원시실내배드민턴전용경기장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'kspo-11627-수원시실내배드민턴전용경기장', '/court-covers/indoor.svg', '수원시 실내배드민턴전용경기장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'kspo-13699-와동배드민턴경기장', '와동배드민턴 경기장', 'gyeonggi', '안산시',
  '경기 안산시 단원구 와동 순환로 416', '031-487-4901', 0,
  'unknown', 'indoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"국민체육진흥공단 외_어디서 운동할까","sourceUrl":"https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250","updatedAt":"2026-05-13T06:58:49.405Z"}'::jsonb,
  37.343626, 126.834984, ARRAY['구기체육관']::text[], '시설면적: - | 수용인원: - | 관람석: - | 휴무일: 매월 2/4주 월요일(월요일 기준 둘째/넷째)',
  NULL, 'public', '국민체육진흥공단 외_어디서 운동할까',
  'https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250', 'https://www.ansancs.net:81/index.jsp', 'KSPO public dataset',
  'matched', '경기 안산시 단원구 와동 순환로 416', NULL,
  NULL, '2026-05-13T06:41:16.180Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'kspo-13699-와동배드민턴경기장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'kspo-13699-와동배드민턴경기장', '/court-covers/indoor.svg', '와동배드민턴 경기장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'gyeonggi-ansan-wadong-badminton', '와동배드민턴전용경기장', 'gyeonggi', '안산시',
  '경기도 안산시 단원구 순환로 416', '031-487-4901', 10,
  'confirmed', 'indoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"디지털안산문화대전","sourceUrl":"https://ansan.grandculture.net/ansan/toc/GC02501274"}'::jsonb,
  37.3436090114577, 126.834815465266, ARRAY['배드민턴 코트', '관람석', '화장실', '탈의실', '주차장']::text[], '06:00-22:00',
  '주차 가능 98대', 'public', '디지털안산문화대전',
  'https://ansan.grandculture.net/ansan/toc/GC02501274', NULL, 'Kakao Local API',
  'matched', '경기 안산시 단원구 순환로 416', NULL,
  NULL, '2026-05-13T00:00:00.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'gyeonggi-ansan-wadong-badminton';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'gyeonggi-ansan-wadong-badminton', '/court-covers/indoor.svg', '와동배드민턴전용경기장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'gyeonggi-anseong-seoanseong-sports', '서안성체육센터', 'gyeonggi', '안성시',
  '경기도 안성시 공도읍 용머리큰길 20', '070-4271-7020', 4,
  'confirmed', 'indoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"안성시시설관리공단","sourceUrl":"https://www.asmcs.or.kr/content.html?md=1129"}'::jsonb,
  37.0080117286728, 127.167655091425, ARRAY['배드민턴 코트']::text[], '06:00-21:00',
  NULL, 'official', '안성시시설관리공단',
  'https://www.asmcs.or.kr/content.html?md=1129', 'https://www.asmcs.or.kr/content.html?md=1129', 'Kakao Local API',
  'matched', '경기 안성시 공도읍 용머리큰길 20', NULL,
  NULL, '2026-05-13T00:00:00.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'gyeonggi-anseong-seoanseong-sports';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'gyeonggi-anseong-seoanseong-sports', '/court-covers/indoor.svg', '서안성체육센터 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'gyeonggi-anseong-anseongmatchum', '안성맞춤공감센터 배드민턴장', 'gyeonggi', '안성시',
  '경기도 안성시 장기로 107', '031-678-6855', 3,
  'confirmed', 'indoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"경기공유서비스","sourceUrl":"https://share.gg.go.kr/facilityListO/view?eshare=1&facilityId=F0143&instiCode=1230001"}'::jsonb,
  37.0043542110189, 127.274492398588, ARRAY['실내 배드민턴장']::text[], '월-목 10:00-22:00 / 금·토·일·공휴일 휴관',
  NULL, 'official', '경기공유서비스',
  'https://share.gg.go.kr/facilityListO/view?eshare=1&facilityId=F0143&instiCode=1230001', 'https://share.gg.go.kr/facilityListO/view?eshare=1&facilityId=F0143&instiCode=1230001', 'Kakao Local API',
  'matched', '경기 안성시 장기로 107', NULL,
  NULL, '2026-05-13T00:00:00.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'gyeonggi-anseong-anseongmatchum';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'gyeonggi-anseong-anseongmatchum', '/court-covers/indoor.svg', '안성맞춤공감센터 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'gyeonggi-anseong-toemi-park', '퇴미공원 배드민턴장', 'gyeonggi', '안성시',
  '경기도 안성시 공도읍 만정리 879', '031-678-6867', 4,
  'confirmed', 'outdoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"경기공유서비스","sourceUrl":"https://share.gg.go.kr/facilityListO/view?eshare=1&facilityId=F0069&instiCode=1230001"}'::jsonb,
  36.9992264584678, 127.179070912839, ARRAY['야외 배드민턴장']::text[], '06:00-21:00',
  NULL, 'official', '경기공유서비스',
  'https://share.gg.go.kr/facilityListO/view?eshare=1&facilityId=F0069&instiCode=1230001', 'https://share.gg.go.kr/facilityListO/view?eshare=1&facilityId=F0069&instiCode=1230001', 'Kakao Local API',
  'matched', '경기 안성시 공도읍 공도로 116-84', NULL,
  NULL, '2026-05-13T00:00:00.000Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'gyeonggi-anseong-toemi-park';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'gyeonggi-anseong-toemi-park', '/court-covers/outdoor.svg', '퇴미공원 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'kspo-10083-선암리동네체육시설배드민턴장', '선암리 동네체육시설 배드민턴장', 'gyeonggi', '양주시',
  '경기 양주시 은현면 화합로941번길 336', '031-8082-7542', 0,
  'unknown', 'mixed', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"국민체육진흥공단 외_어디서 운동할까","sourceUrl":"https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250","updatedAt":"2026-05-13T06:58:49.405Z"}'::jsonb,
  37.861814, 127.028537, ARRAY['간이운동장']::text[], '시설면적: - | 수용인원: - | 관람석: - | 휴무일: 무휴',
  NULL, 'public', '국민체육진흥공단 외_어디서 운동할까',
  'https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250', NULL, 'KSPO public dataset',
  'matched', '경기 양주시 은현면 화합로941번길 336', NULL,
  NULL, '2026-05-13T06:41:16.180Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'kspo-10083-선암리동네체육시설배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'kspo-10083-선암리동네체육시설배드민턴장', '/court-covers/mixed.svg', '선암리 동네체육시설 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'kspo-11811-운암리동네체육시설배드민턴장', '운암리 동네체육시설 배드민턴장', 'gyeonggi', '양주시',
  '경기 양주시 은현면 화합로691번길 172', '031-8082-7542', 0,
  'unknown', 'mixed', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"국민체육진흥공단 외_어디서 운동할까","sourceUrl":"https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250","updatedAt":"2026-05-13T06:58:49.405Z"}'::jsonb,
  37.873089, 127.01253, ARRAY['간이운동장']::text[], '시설면적: - | 수용인원: - | 관람석: - | 휴무일: 무휴',
  NULL, 'public', '국민체육진흥공단 외_어디서 운동할까',
  'https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250', NULL, 'KSPO public dataset',
  'matched', '경기 양주시 은현면 화합로691번길 172', NULL,
  NULL, '2026-05-13T06:41:16.180Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'kspo-11811-운암리동네체육시설배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'kspo-11811-운암리동네체육시설배드민턴장', '/court-covers/mixed.svg', '운암리 동네체육시설 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'kspo-10336-일영리배드민턴장', '일영리 배드민턴장', 'gyeonggi', '양주시',
  '경기 양주시 장흥면 일영로703번길 4-9', '031-8082-7640', 0,
  'unknown', 'indoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"국민체육진흥공단 외_어디서 운동할까","sourceUrl":"https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250","updatedAt":"2026-05-13T06:58:49.405Z"}'::jsonb,
  37.705455, 126.930912, ARRAY['간이운동장']::text[], '시설면적: - | 수용인원: - | 관람석: - | 휴무일: 무휴',
  NULL, 'public', '국민체육진흥공단 외_어디서 운동할까',
  'https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250', NULL, 'KSPO public dataset',
  'matched', '경기 양주시 장흥면 일영로703번길 4-9', NULL,
  NULL, '2026-05-13T06:41:16.180Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'kspo-10336-일영리배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'kspo-10336-일영리배드민턴장', '/court-covers/indoor.svg', '일영리 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'kspo-11957-양평배드민턴장', '양평 배드민턴장', 'gyeonggi', '양평군',
  '경기 양평군 양평읍 창대리', '031-770-3005', 0,
  'unknown', 'indoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"국민체육진흥공단 외_어디서 운동할까","sourceUrl":"https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250","updatedAt":"2026-05-13T06:58:49.405Z"}'::jsonb,
  37.477616, 127.506294, ARRAY['구기체육관']::text[], '시설면적: - | 수용인원: - | 관람석: - | 휴무일: 무휴',
  NULL, 'public', '국민체육진흥공단 외_어디서 운동할까',
  'https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250', NULL, 'KSPO public dataset',
  'matched', '경기 양평군 양평읍 창대리', NULL,
  NULL, '2026-05-13T06:41:16.180Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'kspo-11957-양평배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'kspo-11957-양평배드민턴장', '/court-covers/indoor.svg', '양평 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'kspo-16461-무등리배드민턴장', '무등리배드민턴장', 'gyeonggi', '연천군',
  '경기 연천군 왕징면 왕산로78번길 34-20', '031-839-2717', 0,
  'unknown', 'indoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"국민체육진흥공단 외_어디서 운동할까","sourceUrl":"https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250","updatedAt":"2026-05-13T06:58:49.405Z"}'::jsonb,
  38.060235, 127.012295, ARRAY[]::text[], '시설면적: - | 수용인원: - | 관람석: - | 휴무일:',
  NULL, 'public', '국민체육진흥공단 외_어디서 운동할까',
  'https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250', NULL, 'KSPO public dataset',
  'matched', '경기 연천군 왕징면 왕산로78번길 34-20', NULL,
  NULL, '2026-05-13T06:41:16.180Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'kspo-16461-무등리배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'kspo-16461-무등리배드민턴장', '/court-covers/indoor.svg', '무등리배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'kspo-10949-백학배드민턴장', '백학 배드민턴장', 'gyeonggi', '연천군',
  '경기 연천군 백학면 청정로 534', '031-839-2735', 0,
  'unknown', 'indoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"국민체육진흥공단 외_어디서 운동할까","sourceUrl":"https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250","updatedAt":"2026-05-13T06:58:49.405Z"}'::jsonb,
  38.029557, 126.917013, ARRAY[]::text[], '시설면적: - | 수용인원: - | 관람석: - | 휴무일:',
  NULL, 'public', '국민체육진흥공단 외_어디서 운동할까',
  'https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250', NULL, 'KSPO public dataset',
  'matched', '경기 연천군 백학면 청정로 534', NULL,
  NULL, '2026-05-13T06:41:16.180Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'kspo-10949-백학배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'kspo-10949-백학배드민턴장', '/court-covers/indoor.svg', '백학 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'kspo-16863-삼곶리배드민턴장', '삼곶리배드민턴장', 'gyeonggi', '연천군',
  '경기 연천군 중면 군중로 361-22', '확인 필요', 0,
  'unknown', 'indoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"국민체육진흥공단 외_어디서 운동할까","sourceUrl":"https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250","updatedAt":"2026-05-13T06:58:49.405Z"}'::jsonb,
  38.135198, 127.023908, ARRAY[]::text[], '시설면적: - | 수용인원: - | 관람석: - | 휴무일:',
  NULL, 'public', '국민체육진흥공단 외_어디서 운동할까',
  'https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250', NULL, 'KSPO public dataset',
  'matched', '경기 연천군 중면 군중로 361-22', NULL,
  NULL, '2026-05-13T06:41:16.180Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'kspo-16863-삼곶리배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'kspo-16863-삼곶리배드민턴장', '/court-covers/indoor.svg', '삼곶리배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'kspo-11118-청산배드민턴장', '청산배드민턴장', 'gyeonggi', '연천군',
  '경기 연천군 청산면 아우라지길 16-1', '031-839-2664', 0,
  'unknown', 'indoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"국민체육진흥공단 외_어디서 운동할까","sourceUrl":"https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250","updatedAt":"2026-05-13T06:58:49.405Z"}'::jsonb,
  38.031716, 127.109323, ARRAY[]::text[], '시설면적: - | 수용인원: - | 관람석: - | 휴무일:',
  NULL, 'public', '국민체육진흥공단 외_어디서 운동할까',
  'https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250', NULL, 'KSPO public dataset',
  'matched', '경기 연천군 청산면 아우라지길 16-1', NULL,
  NULL, '2026-05-13T06:41:16.180Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'kspo-11118-청산배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'kspo-11118-청산배드민턴장', '/court-covers/indoor.svg', '청산배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'kspo-14443-초대배드민턴장', '초대배드민턴장', 'gyeonggi', '연천군',
  '경기 연천군 청산면 초대로106번길 125', '031-839-2664', 0,
  'unknown', 'indoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"국민체육진흥공단 외_어디서 운동할까","sourceUrl":"https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250","updatedAt":"2026-05-13T06:58:49.405Z"}'::jsonb,
  37.997861, 127.084977, ARRAY[]::text[], '시설면적: - | 수용인원: - | 관람석: - | 휴무일:',
  NULL, 'public', '국민체육진흥공단 외_어디서 운동할까',
  'https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250', NULL, 'KSPO public dataset',
  'matched', '경기 연천군 청산면 초대로106번길 125', NULL,
  NULL, '2026-05-13T06:41:16.180Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'kspo-14443-초대배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'kspo-14443-초대배드민턴장', '/court-covers/indoor.svg', '초대배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'kspo-16017-오산시실내배드민턴장', '오산시 실내 배드민턴장', 'gyeonggi', '오산시',
  '경기 오산시 오산동 오산천로 52', '031-370-3146', 0,
  'unknown', 'indoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"국민체육진흥공단 외_어디서 운동할까","sourceUrl":"https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250","updatedAt":"2026-05-13T06:58:49.405Z"}'::jsonb,
  37.163283, 127.051319, ARRAY['구기체육관']::text[], '시설면적: - | 수용인원: - | 관람석: - | 휴무일: 연중무휴',
  NULL, 'public', '국민체육진흥공단 외_어디서 운동할까',
  'https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250', NULL, 'KSPO public dataset',
  'matched', '경기 오산시 오산동 오산천로 52', NULL,
  NULL, '2026-05-13T06:41:16.180Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'kspo-16017-오산시실내배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'kspo-16017-오산시실내배드민턴장', '/court-covers/indoor.svg', '오산시 실내 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);

INSERT INTO badminton_courts (
  id, name, region, district, address, phone, court_count, court_count_status, venue_type,
  fee_info, latitude, longitude, facilities, hours, parking, source, source_name, source_url,
  reservation_url, geocoding_provider, geocoding_status, geocoding_display_name,
  kakao_place_id, kakao_place_url, updated_at
) VALUES (
  'kspo-17467-추동배드민턴장', '추동 배드민턴장', 'gyeonggi', '의정부시',
  '경기도 의정부시 능곡로26번길 28-40', '031-853-9005', 0,
  'unknown', 'indoor', '{"status":"unknown","summary":"요금 확인 필요","sourceName":"국민체육진흥공단 외_어디서 운동할까","sourceUrl":"https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250","updatedAt":"2026-05-13T06:58:49.405Z"}'::jsonb,
  37.737973, 127.061971, ARRAY['구기체육관']::text[], '시설면적: - | 수용인원: - | 관람석: - | 휴무일: (공휴일) 06:00 ~ 20:00',
  NULL, 'public', '국민체육진흥공단 외_어디서 운동할까',
  'https://www.culture.go.kr/data/filedat/filedatDtl.do?category=I&dataType=BATCH&fileDataNo=00000000000000000250', 'https://gsports.siseol.or.kr/etc/chudong_intro.aspx', 'KSPO public dataset',
  'matched', '경기도 의정부시 능곡로26번길 28-40', NULL,
  NULL, '2026-05-13T06:41:16.180Z'
) ON CONFLICT (id) DO UPDATE SET
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
  updated_at = EXCLUDED.updated_at;
DELETE FROM court_photos WHERE court_id = 'kspo-17467-추동배드민턴장';

INSERT INTO court_photos (court_id, url, alt, source_name, source_url, is_primary, sort_order)
VALUES (
  'kspo-17467-추동배드민턴장', '/court-covers/indoor.svg', '추동 배드민턴장 대표 이미지', '민턴맵 기본 커버',
  NULL, true, 0
);
COMMIT;
