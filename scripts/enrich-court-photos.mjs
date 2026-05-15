import { readFile, writeFile } from "node:fs/promises";
import path from "node:path";

const dataPath = path.resolve("data/courts.json");
const seedPath = path.resolve("data/courts.seed.json");
const generatedSourceName = "민턴맵 기본 커버";

function coverFor(court) {
  const venueType = court.venueType || "unknown";

  if (venueType === "indoor" || venueType === "outdoor" || venueType === "mixed") {
    return `/court-covers/${venueType}.svg`;
  }

  return "/court-covers/unknown.svg";
}

function primaryPhoto(court) {
  const existing = court.photos?.find((photo) => photo.isPrimary) || court.photos?.[0];

  if (existing && existing.sourceName !== generatedSourceName) {
    return existing;
  }

  return {
    url: coverFor(court),
    alt: `${court.name} 대표 이미지`,
    sourceName: generatedSourceName,
    sourceUrl: null,
    isPrimary: true
  };
}

async function enrich(filePath) {
  const raw = await readFile(filePath, "utf-8").catch(() => undefined);

  if (!raw) {
    return;
  }

  const courts = JSON.parse(raw);

  for (const court of courts) {
    const nonGeneratedPhotos = (court.photos || []).filter((photo) => photo.sourceName !== generatedSourceName);
    court.photos = [primaryPhoto(court), ...nonGeneratedPhotos.filter((photo) => !photo.isPrimary)];
  }

  await writeFile(filePath, `${JSON.stringify(courts, null, 2)}\n`, "utf-8");
  console.log(`Updated ${courts.length} courts in ${filePath}`);
}

await enrich(dataPath);
await enrich(seedPath);
