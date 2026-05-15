# 민턴맵 실제 데이터 수집 메모

수집일: 2026-05-13

## 범위

- 서울: 85곳
- 경기: 6곳
- 총 91곳

## 수집 원칙

- 지도 검색 결과를 그대로 긁어 DB화하지 않고, 공개/공식 시설 안내 페이지를 기준으로 입력했다.
- 코트 수가 명시된 경우 `courtCountStatus: "confirmed"`로 표시했다.
- 코트 수가 명확하지 않은 경우 `courtCount: 0`, `courtCountStatus: "unknown"`으로 표시했다.
- 기존 seed 데이터 일부는 Kakao Local 주소 검색으로 좌표를 재검증했다.
- 서울시 생활체육포털 import 데이터는 포털이 제공하는 위도/경도를 우선 사용한다.
- Kakao Local keyword import는 `scripts/import-kakao-local-courts.mjs`에 구현했다. 현재 JavaScript 키의 호출 제한에 걸리면 제한 해제 후 재실행해야 한다.

## 주요 출처

- 서울시 생활체육포털: https://sports.seoul.go.kr/main/facilities/facilities.do
- Kakao Local API: https://developers.kakao.com/docs/latest/ko/local/dev-guide
- 안성시시설관리공단: https://www.asmcs.or.kr/
- 경기공유서비스: https://share.gg.go.kr/
- 가평군시설관리공단: https://www.gpfmc.or.kr/
- 부천도시공사: https://www.best.or.kr/
- 디지털안산문화대전: https://ansan.grandculture.net/

각 시설별 상세 URL은 `data/courts.seed.json`과 `data/courts.json`의 `sourceUrl` 필드에 들어 있다.

## 다음 정리 대상

- Kakao Local API 호출 제한 해제 또는 REST 키 확보 후 전체 좌표 재검증
- 공공데이터포털/공유누리 인증키 확보 후 자동 수집 파이프라인 추가
- 사용자 제보로 코트 수가 `unknown`인 시설 보강
- 운영시간/요금/예약 URL의 정기 갱신 정책 추가
