import { readFile, writeFile } from "node:fs/promises";
import path from "node:path";

const seedPath = path.resolve("data/courts.seed.json");
const outputPath = path.resolve("data/courts.json");
const userAgent = "mintonmap-mvp/0.1 local-data-import";

const sleep = (ms) => new Promise((resolve) => setTimeout(resolve, ms));

async function geocode(address) {
  const url = new URL("https://nominatim.openstreetmap.org/search");
  url.searchParams.set("format", "jsonv2");
  url.searchParams.set("limit", "1");
  url.searchParams.set("countrycodes", "kr");
  url.searchParams.set("q", address);

  const response = await fetch(url, {
    headers: {
      "User-Agent": userAgent,
      Accept: "application/json"
    }
  });

  if (!response.ok) {
    throw new Error(`geocode failed ${response.status} for ${address}`);
  }

  const results = await response.json();
  const first = results[0];

  if (!first) {
    return null;
  }

  return {
    latitude: Number(first.lat),
    longitude: Number(first.lon),
    geocodingProvider: "OpenStreetMap Nominatim",
    geocodingDisplayName: first.display_name
  };
}

const seeds = JSON.parse(await readFile(seedPath, "utf-8"));
const courts = [];

for (const seed of seeds) {
  try {
    const coordinates = await geocode(seed.address);

    courts.push({
      ...seed,
      latitude: coordinates?.latitude ?? null,
      longitude: coordinates?.longitude ?? null,
      geocodingProvider: coordinates?.geocodingProvider ?? "OpenStreetMap Nominatim",
      geocodingStatus: coordinates ? "matched" : "not_found",
      geocodingDisplayName: coordinates?.geocodingDisplayName ?? null
    });

    console.log(`${coordinates ? "OK" : "MISS"} ${seed.id} ${seed.address}`);
  } catch (error) {
    courts.push({
      ...seed,
      latitude: null,
      longitude: null,
      geocodingProvider: "OpenStreetMap Nominatim",
      geocodingStatus: "error",
      geocodingError: error instanceof Error ? error.message : String(error)
    });

    console.error(`ERROR ${seed.id}`, error);
  }

  await sleep(1100);
}

await writeFile(outputPath, `${JSON.stringify(courts, null, 2)}\n`, "utf-8");

const matched = courts.filter((court) => court.geocodingStatus === "matched").length;
console.log(`Wrote ${courts.length} courts to ${outputPath}. Geocoded ${matched}/${courts.length}.`);
