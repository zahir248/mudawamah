import { describe, expect, it } from "vitest";
import { checkHealth } from "./check";

describe("checkHealth", () => {
  it("is ok when the database answers", async () => {
    await expect(checkHealth(async () => 1)).resolves.toEqual({ status: "ok", database: "up" });
  });

  it("is degraded, not thrown, when the database fails", async () => {
    const failing = async () => {
      throw new Error("connection refused");
    };
    await expect(checkHealth(failing)).resolves.toEqual({ status: "degraded", database: "down" });
  });
});
