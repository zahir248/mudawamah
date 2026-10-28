import { drizzle, type PostgresJsDatabase } from "drizzle-orm/postgres-js";
import postgres from "postgres";
import { readEnv } from "@/lib/env";
import * as schema from "./schema";

export type Database = PostgresJsDatabase<typeof schema>;

let instance: Database | undefined;

/**
 * One client per server instance, created on first use so builds and tests
 * never need a database. `prepare: false` is required by Supabase's
 * transaction pooler, which does not keep prepared statements.
 */
export function db(): Database {
  if (!instance) {
    const sql = postgres(readEnv().DATABASE_URL, { prepare: false, max: 5 });
    instance = drizzle(sql, { schema });
  }
  return instance;
}
