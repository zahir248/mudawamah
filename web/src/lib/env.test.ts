import { describe, expect, it } from "vitest";
import { readEnv } from "./env";

describe("readEnv", () => {
  it("accepts a database URL", () => {
    const env = readEnv({ DATABASE_URL: "postgres://u:p@localhost:5432/mudawamah" });
    expect(env.DATABASE_URL).toContain("localhost");
  });

  it("names the missing variable without printing values", () => {
    expect(() => readEnv({})).toThrow("Invalid environment: DATABASE_URL");
  });
});
