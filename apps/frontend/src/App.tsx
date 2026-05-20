import { useCallback, useEffect, useMemo, useState } from "react";
import { fetchCourts } from "./api/courts";
import { KakaoMap } from "./components/KakaoMap";
import type { BadmintonCourt, CourtVenueType, RegionFilter } from "./types/court";

type VenueFilter = "all" | CourtVenueType;
type QuickFilter = "reservable" | "knownFee" | "parking" | "confirmedCount" | "openAllDay";

const regionLabels: Record<RegionFilter, string> = {
  all: "전체",
  seoul: "서울",
  gyeonggi: "경기",
  incheon: "인천"
};

const venueLabels: Record<VenueFilter, string> = {
  all: "전체",
  indoor: "실내",
  outdoor: "실외",
  mixed: "실내/실외",
  unknown: "확인 필요"
};

const quickFilterLabels: Record<QuickFilter, string> = {
  reservable: "예약 링크",
  knownFee: "요금 확인",
  parking: "주차 가능",
  confirmedCount: "코트 수 확인",
  openAllDay: "상시 개방"
};

function formatCourtCount(court: BadmintonCourt) {
  return court.courtCountStatus === "unknown" ? "코트 확인 필요" : `${court.courtCount}면`;
}

function formatVenueType(court: BadmintonCourt) {
  return venueLabels[court.venueType ?? "unknown"];
}

function normalizeDisplay(value?: string | null) {
  return value?.replace(/\s+/g, " ").trim() || "";
}

function formatOperatingInfo(court: BadmintonCourt) {
  const hours = normalizeDisplay(court.hours);

  if (!hours) {
    return "운영시간 확인 필요";
  }

  const holiday = hours.match(/휴무일:\s*([^|]+)/)?.[1]?.trim();

  if (hours.includes("시설면적") && holiday) {
    return `휴무일 ${holiday || "확인 필요"}`;
  }

  if (hours.includes("시설면적")) {
    return "운영시간 확인 필요";
  }

  return hours;
}

function formatFeeInfo(court: BadmintonCourt) {
  return normalizeDisplay(court.feeInfo?.summary) || "요금 확인 필요";
}

function getRelatedSiteUrl(court: BadmintonCourt) {
  const url =
    court.reservationUrl ||
    court.kakaoPlaceUrl ||
    (court.sourceName === "국민체육진흥공단 외_어디서 운동할까" ? undefined : court.sourceUrl);

  if (!url || !/^https?:\/\//i.test(url)) {
    return undefined;
  }

  return url;
}

function getPrimaryPhoto(court: BadmintonCourt) {
  return court.photos?.find((photo) => photo.isPrimary) || court.photos?.[0];
}

function getPhoneHref(court: BadmintonCourt) {
  if (!/\d/.test(court.phone)) {
    return undefined;
  }

  return `tel:${court.phone.replace(/[^\d+]/g, "")}`;
}

function getHighlight(court: BadmintonCourt) {
  if (court.feeInfo?.status === "known") return "요금 확인";
  if (/00:00~24:00/.test(court.hours ?? "")) return "상시 개방";
  if (court.venueType === "indoor") return "실내 코트";
  return "방문 확인";
}

function hasParking(court: BadmintonCourt) {
  const parking = normalizeDisplay(court.parking);

  if (!parking || parking === "-" || /불가|없음|별도의 주차 시설 없음/.test(parking)) {
    return false;
  }

  return /주차 가능|주차장|주차 무료|주차면수|주차 공간/.test(parking);
}

function isOpenAllDay(court: BadmintonCourt) {
  return /00:00~24:00/.test(court.hours ?? "");
}

function matchesQuickFilter(court: BadmintonCourt, filter: QuickFilter) {
  if (filter === "reservable") return Boolean(getRelatedSiteUrl(court));
  if (filter === "knownFee") return court.feeInfo?.status === "known";
  if (filter === "parking") return hasParking(court);
  if (filter === "confirmedCount") return court.courtCountStatus !== "unknown" && court.courtCount > 0;
  if (filter === "openAllDay") return isOpenAllDay(court);

  return true;
}

function App() {
  const [courts, setCourts] = useState<BadmintonCourt[]>([]);
  const [selectedCourtId, setSelectedCourtId] = useState<string>();
  const [regionFilter, setRegionFilter] = useState<RegionFilter>("all");
  const [venueFilter, setVenueFilter] = useState<VenueFilter>("all");
  const [quickFilters, setQuickFilters] = useState<QuickFilter[]>([]);
  const [searchTerm, setSearchTerm] = useState("");
  const [isLoading, setIsLoading] = useState(true);
  const [error, setError] = useState<string>();

  useEffect(() => {
    fetchCourts()
      .then((loadedCourts) => {
        setCourts(loadedCourts);
      })
      .catch((unknownError) => {
        setError(unknownError instanceof Error ? unknownError.message : "코트 데이터를 불러오지 못했습니다.");
      })
      .finally(() => setIsLoading(false));
  }, []);

  const counts = useMemo(
    () => ({
      total: courts.length,
      seoul: courts.filter((court) => court.region === "seoul").length,
      gyeonggi: courts.filter((court) => court.region === "gyeonggi").length,
      incheon: courts.filter((court) => court.region === "incheon").length,
      indoor: courts.filter((court) => court.venueType === "indoor").length,
      outdoor: courts.filter((court) => court.venueType === "outdoor").length,
      knownFee: courts.filter((court) => court.feeInfo?.status === "known").length,
      reservable: courts.filter((court) => getRelatedSiteUrl(court)).length,
      parking: courts.filter(hasParking).length,
      confirmedCount: courts.filter((court) => court.courtCountStatus !== "unknown" && court.courtCount > 0).length,
      openAllDay: courts.filter(isOpenAllDay).length
    }),
    [courts]
  );

  const visibleRegions = useMemo<RegionFilter[]>(
    () => (counts.incheon > 0 ? ["all", "seoul", "gyeonggi", "incheon"] : ["all", "seoul", "gyeonggi"]),
    [counts.incheon]
  );

  const filteredCourts = useMemo(() => {
    const normalizedSearch = searchTerm.trim().toLowerCase();

    return courts.filter((court) => {
      const matchesRegion = regionFilter === "all" || court.region === regionFilter;
      const matchesVenue = venueFilter === "all" || court.venueType === venueFilter;
      const matchesQuickFilters = quickFilters.every((filter) => matchesQuickFilter(court, filter));
      const matchesSearch =
        !normalizedSearch ||
        court.name.toLowerCase().includes(normalizedSearch) ||
        court.address.toLowerCase().includes(normalizedSearch) ||
        court.district?.toLowerCase().includes(normalizedSearch);

      return matchesRegion && matchesVenue && matchesQuickFilters && matchesSearch;
    });
  }, [courts, quickFilters, regionFilter, searchTerm, venueFilter]);

  const selectedCourt = selectedCourtId
    ? filteredCourts.find((court) => court.id === selectedCourtId)
    : undefined;
  const selectedSiteUrl = selectedCourt ? getRelatedSiteUrl(selectedCourt) : undefined;
  const selectedPhoneHref = selectedCourt ? getPhoneHref(selectedCourt) : undefined;
  const selectedPhoto = selectedCourt ? getPrimaryPhoto(selectedCourt) : undefined;

  const handleSelectCourt = useCallback((court: BadmintonCourt) => {
    setSelectedCourtId((currentCourtId) => (currentCourtId === court.id ? undefined : court.id));
  }, []);

  const handleClearSelection = useCallback(() => {
    setSelectedCourtId(undefined);
  }, []);

  const handleToggleQuickFilter = useCallback((filter: QuickFilter) => {
    setQuickFilters((currentFilters) =>
      currentFilters.includes(filter)
        ? currentFilters.filter((currentFilter) => currentFilter !== filter)
        : [...currentFilters, filter]
    );
  }, []);

  const handleResetFilters = useCallback(() => {
    setRegionFilter("all");
    setVenueFilter("all");
    setQuickFilters([]);
    setSearchTerm("");
  }, []);

  useEffect(() => {
    if (selectedCourtId && !filteredCourts.some((court) => court.id === selectedCourtId)) {
      setSelectedCourtId(undefined);
    }
  }, [filteredCourts, selectedCourtId]);

  return (
    <main className="app-shell">
      <aside className="sidebar" aria-label="배드민턴장 탐색">
        <header className="brand-block">
          <img className="brand-mark" src="/app-icon.png" alt="" />
          <div>
            <p className="eyebrow">Badminton court stays</p>
            <h1>민턴맵</h1>
            <p>오늘 바로 칠 수 있는 서울·경기 배드민턴장을 요금, 운영정보, 지도와 함께 찾습니다.</p>
          </div>
        </header>

        <section className="search-panel" aria-label="검색과 필터">
          <label htmlFor="court-search">어디서 칠까요?</label>
          <input
            id="court-search"
            value={searchTerm}
            onChange={(event) => setSearchTerm(event.target.value)}
            placeholder="동네, 체육관명, 주소 검색"
          />

          <div className="chip-row" role="group" aria-label="지역 필터">
            {visibleRegions.map((region) => (
              <button
                key={region}
                type="button"
                className={regionFilter === region ? "chip active" : "chip"}
                onClick={() => setRegionFilter(region)}
              >
                {regionLabels[region]}
              </button>
            ))}
          </div>

          <div className="chip-row" role="group" aria-label="실내 실외 필터">
            {(["all", "indoor", "outdoor", "mixed"] as VenueFilter[]).map((venue) => (
              <button
                key={venue}
                type="button"
                className={venueFilter === venue ? "chip active" : "chip"}
                onClick={() => setVenueFilter(venue)}
              >
                {venueLabels[venue]}
              </button>
            ))}
          </div>

          <div className="quick-filter-block">
            <div className="filter-heading">
              <span>빠른 조건</span>
              {(searchTerm || regionFilter !== "all" || venueFilter !== "all" || quickFilters.length > 0) && (
                <button type="button" className="reset-filter" onClick={handleResetFilters}>
                  초기화
                </button>
              )}
            </div>
            <div className="chip-row" role="group" aria-label="빠른 조건 필터">
              {(["reservable", "knownFee", "parking", "confirmedCount", "openAllDay"] as QuickFilter[]).map(
                (filter) => (
                  <button
                    key={filter}
                    type="button"
                    className={quickFilters.includes(filter) ? "chip active" : "chip"}
                    onClick={() => handleToggleQuickFilter(filter)}
                  >
                    {quickFilterLabels[filter]}
                    <span>{counts[filter]}</span>
                  </button>
                )
              )}
            </div>
          </div>
        </section>

        <section className="stats-grid" aria-label="등록 코트 현황">
          <div>
            <span>{counts.total}</span>
            <small>전체</small>
          </div>
          <div>
            <span>{counts.indoor}</span>
            <small>실내</small>
          </div>
          <div>
            <span>{counts.knownFee}</span>
            <small>요금 확인</small>
          </div>
        </section>

        <section className="court-list" aria-label="배드민턴장 목록">
          <div className="section-heading">
            <div>
              <p className="eyebrow">Recommended courts</p>
              <h2>체육관 목록</h2>
            </div>
            <span>{filteredCourts.length}곳</span>
          </div>

          {isLoading && <p className="state-text">데이터를 불러오는 중입니다.</p>}
          {error && <p className="state-text error-text">{error}</p>}
          {!isLoading && !error && filteredCourts.length === 0 && (
            <p className="state-text">조건에 맞는 코트가 없습니다.</p>
          )}

          <div className="court-list-items">
            {filteredCourts.map((court) => (
              <button
                key={court.id}
                type="button"
                aria-pressed={court.id === selectedCourt?.id}
                className={court.id === selectedCourt?.id ? "court-card active" : "court-card"}
                onClick={() => handleSelectCourt(court)}
              >
                <span className={`court-card-media media-${court.venueType ?? "unknown"}`}>
                  {getPrimaryPhoto(court) && <img src={getPrimaryPhoto(court)?.url} alt="" loading="lazy" />}
                  <span>{court.district || regionLabels[court.region]}</span>
                  <strong>{getHighlight(court)}</strong>
                </span>
                <span className="court-card-body">
                  <span className="court-card-header">
                    <strong>{court.name}</strong>
                    <span className={`venue-badge venue-${court.venueType ?? "unknown"}`}>
                      {formatVenueType(court)}
                    </span>
                  </span>
                  <span className="court-address">{court.address}</span>
                  <span className="court-meta-grid">
                    <span>
                      <small>운영</small>
                      <strong>{formatOperatingInfo(court)}</strong>
                    </span>
                    <span>
                      <small>요금</small>
                      <strong>{formatFeeInfo(court)}</strong>
                    </span>
                  </span>
                  <span className="court-card-footer">
                    <span>{formatCourtCount(court)}</span>
                    <span>{court.phone}</span>
                  </span>
                </span>
              </button>
            ))}
          </div>
        </section>
      </aside>

      <section className="workspace">
        <div className="workspace-header">
          <div>
            <p className="eyebrow">Map view</p>
            <h2>{selectedCourt ? selectedCourt.name : "배드민턴장 지도"}</h2>
          </div>
          {selectedCourt && (
            <div className="selected-summary">
              <span>{regionLabels[selectedCourt.region]}</span>
              <span>{formatVenueType(selectedCourt)}</span>
              <strong>{formatCourtCount(selectedCourt)}</strong>
            </div>
          )}
        </div>

        <div className="map-stage">
          <KakaoMap
            courts={filteredCourts}
            selectedCourtId={selectedCourt?.id}
            onSelectCourt={handleSelectCourt}
            onClearSelection={handleClearSelection}
          />

          {selectedCourt && (
            <aside className="selected-court-panel" aria-label="선택한 배드민턴장 정보">
              {selectedPhoto && <img className="selected-court-photo" src={selectedPhoto.url} alt={selectedPhoto.alt} />}
              <div className="selected-court-kicker">{getHighlight(selectedCourt)}</div>
              <h3>{selectedCourt.name}</h3>
              <p>{selectedCourt.address}</p>
              <dl>
                <div>
                  <dt>운영/휴무</dt>
                  <dd>{formatOperatingInfo(selectedCourt)}</dd>
                </div>
                <div>
                  <dt>요금</dt>
                  <dd>{formatFeeInfo(selectedCourt)}</dd>
                </div>
                <div>
                  <dt>문의</dt>
                  <dd>{selectedCourt.phone}</dd>
                </div>
              </dl>
              <div className="selected-actions">
                {selectedSiteUrl && (
                  <a className="primary-action" href={selectedSiteUrl} target="_blank" rel="noreferrer">
                    예약/사이트
                  </a>
                )}
                {selectedPhoneHref && (
                  <a className="secondary-action" href={selectedPhoneHref}>
                    전화하기
                  </a>
                )}
              </div>
            </aside>
          )}
        </div>
      </section>
    </main>
  );
}

export default App;
