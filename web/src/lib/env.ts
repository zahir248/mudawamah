import { z } from "zod";

const schema = z.object({
  // Supabase: use the transaction pooler URL (port 6543) on Vercel.
  DATABASE_URL: z.url(),
});

export type Env = z.infer<typeof schema>;

/** Reads and validates the server environment, failing loudly on mistakes. */
export function readEnv(source: Record<string, string | undefined> = process.env): Env {
  const parsed = schema.safeParse(source);
  if (!parsed.success) {
    const fields = parsed.error.issues.map((issue) => issue.path.join(".")).join(", ");
    throw new Error(`Invalid environment: ${fields}`);
  }
  return parsed.data;
}
