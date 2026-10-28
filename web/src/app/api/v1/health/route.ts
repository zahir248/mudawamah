import { sql } from "drizzle-orm";
import { connection } from "next/server";
import { db } from "@/db/client";
import { checkHealth } from "./check";

/** Used by uptime checks and the scheduled jobs to see if the API can reach the database. */
export async function GET() {
  // Always run at request time: a health check must never be prerendered.
  await connection();
  const health = await checkHealth(() => db().execute(sql`select 1`));
  return Response.json(health, { status: health.status === "ok" ? 200 : 503 });
}
