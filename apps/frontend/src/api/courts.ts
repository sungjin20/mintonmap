import type { BadmintonCourt } from "../types/court";

const apiBaseUrl = import.meta.env.VITE_API_BASE_URL ?? "";

export async function fetchCourts(): Promise<BadmintonCourt[]> {
  const response = await fetch(`${apiBaseUrl}/api/courts`);

  if (!response.ok) {
    throw new Error(`Failed to load courts: ${response.status}`);
  }

  const data = (await response.json()) as { courts: BadmintonCourt[] };
  return data.courts;
}
