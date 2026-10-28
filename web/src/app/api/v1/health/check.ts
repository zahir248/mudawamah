export type Health = { status: "ok" | "degraded"; database: "up" | "down" };

/** Pure part of the health check, so it can be tested without a database. */
export async function checkHealth(pingDatabase: () => Promise<unknown>): Promise<Health> {
  try {
    await pingDatabase();
    return { status: "ok", database: "up" };
  } catch {
    return { status: "degraded", database: "down" };
  }
}
