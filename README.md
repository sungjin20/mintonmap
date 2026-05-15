# 민턴맵

서울/수도권/경기도 배드민턴 코트를 지도에서 탐색하는 MVP입니다.

## 기술 스택

- Frontend: React + TypeScript + Vite
- Map: Kakao Maps JavaScript SDK
- Backend: Node.js + Express
- DB: PostgreSQL
- Data seed: `db/seed.sql`
- Deployment target: Samsung Cloud Platform Virtual Server

## 실행

```bash
npm install
npm run dev
```

- Frontend: http://localhost:3000
- Backend: http://localhost:4000
- API: http://localhost:4000/api/courts

## 환경 변수

프론트엔드는 Kakao JavaScript 키가 필요합니다.

```bash
cp apps/frontend/.env.example apps/frontend/.env
```

백엔드는 PostgreSQL을 데이터 소스로 사용하므로 `DATABASE_URL` 설정이 필요합니다.

```bash
cp apps/backend/.env.example apps/backend/.env
```

예시:

```env
DATABASE_URL=postgres://mintonmap:mintonmap@localhost:5432/mintonmap
DATABASE_SSL=false
```

## PostgreSQL

로컬에 Docker가 있으면 다음으로 PostgreSQL을 띄울 수 있습니다.

```bash
docker compose up -d postgres
```

스키마 생성과 시드 적재:

```bash
npm run db:migrate
npm run db:seed
```

주요 테이블:

- `badminton_courts`: 배드민턴장 기본 정보, 좌표, 운영시간, 요금, 출처
- `court_photos`: 배드민턴장별 사진/커버 이미지

## 사진 데이터

현재 공식 데이터에서 시설별 첨부 사진이 제공되지 않는 항목은 `apps/frontend/public/court-covers/`의 기본 커버 이미지를 사용합니다. 실제 사진을 확보하면 `court_photos` 테이블에 URL, 대체 텍스트, 출처를 추가하면 됩니다.
