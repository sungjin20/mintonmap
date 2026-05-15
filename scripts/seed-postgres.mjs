import { readFile } from "node:fs/promises";
import path from "node:path";
import pg from "pg";

function loadEnvFile(filePath) {
  return readFile(filePath, "utf-8")
    .then((content) => {
      for (const line of content.split(/\r?\n/)) {
        const trimmed = line.trim();

        if (!trimmed || trimmed.startsWith("#") || !trimmed.includes("=")) {
          continue;
        }

        const [key, ...valueParts] = trimmed.split("=");
        process.env[key] ??= valueParts.join("=").trim();
      }
    })
    .catch(() => undefined);
}

await loadEnvFile(path.resolve("apps/backend/.env"));

if (!process.env.DATABASE_URL) {
  console.error("DATABASE_URL is required. Set it in apps/backend/.env or the shell environment.");
  process.exit(1);
}

const { Client } = pg;
const client = new Client({
  connectionString: process.env.DATABASE_URL,
  ssl: process.env.DATABASE_SSL === "true" ? { rejectUnauthorized: false } : undefined
});

await client.connect();

try {
  const seedSql = await readFile(path.resolve("db/seed.sql"), "utf-8");
  await client.query(seedSql);
  console.log("Seeded badminton courts into PostgreSQL.");
} catch (error) {
  throw error;
} finally {
  await client.end();
}
