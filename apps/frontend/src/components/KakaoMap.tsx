import { useEffect, useRef, useState } from "react";
import { loadKakaoMaps } from "../lib/kakaoLoader";
import type { BadmintonCourt } from "../types/court";

interface KakaoMapProps {
  courts: BadmintonCourt[];
  selectedCourtId?: string;
  onSelectCourt: (court: BadmintonCourt) => void;
  onClearSelection: () => void;
}

const INITIAL_MAP_CENTER = {
  latitude: 37.481247,
  longitude: 126.952739
};

const INITIAL_MAP_LEVEL = 6;

function escapeHtml(value: string) {
  return value
    .replaceAll("&", "&amp;")
    .replaceAll("<", "&lt;")
    .replaceAll(">", "&gt;")
    .replaceAll("\"", "&quot;")
    .replaceAll("'", "&#039;");
}

function formatVenueType(court: BadmintonCourt) {
  const labels: Record<NonNullable<BadmintonCourt["venueType"]>, string> = {
    indoor: "실내",
    outdoor: "실외",
    mixed: "실내/실외",
    unknown: "확인 필요"
  };

  return labels[court.venueType ?? "unknown"];
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

function getInfoWindowContent(court: BadmintonCourt) {
  const courtCountText = court.courtCountStatus === "unknown" ? "확인 필요" : `${court.courtCount}면`;
  const siteUrl = getRelatedSiteUrl(court);
  const siteLink = siteUrl
    ? `<a href="${escapeHtml(siteUrl)}" target="_blank" rel="noreferrer">관련 사이트</a>`
    : "";

  return `
    <div class="mintonmap-infowindow">
      <div class="mintonmap-infowindow-head">
        <strong>${escapeHtml(court.name)}</strong>
        <button type="button" class="mintonmap-infowindow-close" data-court-popup-close aria-label="팝업 닫기">×</button>
      </div>
      <dl>
        <div><dt>주소</dt><dd>${escapeHtml(court.address)}</dd></div>
        <div><dt>전화</dt><dd>${escapeHtml(court.phone)}</dd></div>
        <div><dt>코트</dt><dd>${courtCountText}</dd></div>
        <div><dt>구분</dt><dd>${formatVenueType(court)}</dd></div>
        <div><dt>운영</dt><dd>${escapeHtml(formatOperatingInfo(court))}</dd></div>
        <div><dt>요금</dt><dd>${escapeHtml(formatFeeInfo(court))}</dd></div>
      </dl>
      ${siteLink}
    </div>
  `;
}

export function KakaoMap({ courts, selectedCourtId, onSelectCourt, onClearSelection }: KakaoMapProps) {
  const mapContainerRef = useRef<HTMLDivElement | null>(null);
  const mapRef = useRef<KakaoMapInstance | null>(null);
  const markerByCourtIdRef = useRef<Map<string, KakaoMarker>>(new Map());
  const courtByIdRef = useRef<Map<string, BadmintonCourt>>(new Map());
  const infoWindowRef = useRef<KakaoInfoWindow | null>(null);
  const [status, setStatus] = useState<"idle" | "missing-key" | "loading" | "ready" | "error">("idle");

  useEffect(() => {
    const handleInfoWindowClick = (event: MouseEvent) => {
      const target = event.target;

      if (target instanceof HTMLElement && target.closest("[data-court-popup-close]")) {
        onClearSelection();
      }
    };

    document.addEventListener("click", handleInfoWindowClick);

    return () => {
      document.removeEventListener("click", handleInfoWindowClick);
    };
  }, [onClearSelection]);

  useEffect(() => {
    const appKey = import.meta.env.VITE_KAKAO_MAP_APP_KEY;

    if (!appKey || appKey === "your_kakao_javascript_key_here") {
      setStatus("missing-key");
      return;
    }

    let cancelled = false;
    setStatus("loading");

    loadKakaoMaps(appKey)
      .then(() => {
        if (cancelled || !mapContainerRef.current || !window.kakao) {
          return;
        }

        const center = new window.kakao.maps.LatLng(INITIAL_MAP_CENTER.latitude, INITIAL_MAP_CENTER.longitude);
        mapRef.current = new window.kakao.maps.Map(mapContainerRef.current, {
          center,
          level: INITIAL_MAP_LEVEL
        });
        setStatus("ready");
      })
      .catch(() => {
        if (!cancelled) {
          setStatus("error");
        }
      });

    return () => {
      cancelled = true;
    };
  }, []);

  useEffect(() => {
    const map = mapRef.current;
    const kakao = window.kakao;

    if (!map || !kakao || status !== "ready") {
      return;
    }

    markerByCourtIdRef.current.forEach((marker) => marker.setMap(null));
    markerByCourtIdRef.current.clear();
    courtByIdRef.current = new Map(courts.map((court) => [court.id, court]));
    infoWindowRef.current?.close();

    if (courts.length === 0) {
      return;
    }

    courts.forEach((court) => {
      const position = new kakao.maps.LatLng(court.latitude, court.longitude);
      const marker = new kakao.maps.Marker({
        map,
        position,
        title: court.name
      });

      kakao.maps.event.addListener(marker, "click", () => {
        onSelectCourt(court);
      });

      markerByCourtIdRef.current.set(court.id, marker);
    });

    return () => {
      markerByCourtIdRef.current.forEach((marker) => marker.setMap(null));
      markerByCourtIdRef.current.clear();
      courtByIdRef.current.clear();
      infoWindowRef.current?.close();
    };
  }, [courts, onSelectCourt, status]);

  useEffect(() => {
    const map = mapRef.current;
    const kakao = window.kakao;

    if (!map || !kakao || status !== "ready") {
      return;
    }

    infoWindowRef.current?.close();
    infoWindowRef.current = null;

    if (!selectedCourtId) {
      return;
    }

    const marker = markerByCourtIdRef.current.get(selectedCourtId);
    const court = courtByIdRef.current.get(selectedCourtId);

    if (!marker || !court) {
      return;
    }

    const infoWindow = new kakao.maps.InfoWindow({
      content: getInfoWindowContent(court),
      removable: false
    });

    infoWindow.open(map, marker);
    map.panTo(marker.getPosition());
    infoWindowRef.current = infoWindow;
  }, [courts, selectedCourtId, status]);

  return (
    <section className="map-shell" aria-label="배드민턴장 지도">
      <div ref={mapContainerRef} className="map-canvas" />
      {status === "missing-key" && (
        <div className="map-overlay">
          <strong>카카오맵 앱 키가 필요합니다.</strong>
          <span>apps/frontend/.env에 VITE_KAKAO_MAP_APP_KEY를 설정하세요.</span>
        </div>
      )}
      {status === "loading" && (
        <div className="map-overlay">
          <strong>지도를 불러오는 중입니다.</strong>
          <span>카카오맵 SDK를 초기화하고 있습니다.</span>
        </div>
      )}
      {status === "error" && (
        <div className="map-overlay map-overlay-error">
          <strong>카카오맵을 불러오지 못했습니다.</strong>
          <span>앱 키, 도메인 등록, 네트워크 상태를 확인하세요.</span>
        </div>
      )}
    </section>
  );
}
