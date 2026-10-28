import { pgTable, text, timestamp, uuid } from "drizzle-orm/pg-core";

// Week 1 keeps only the user table; groups, targets and logs arrive in week 4
// following docs/SPEC.md section 7.2.
export const users = pgTable("users", {
  id: uuid("id").primaryKey().defaultRandom(),
  firebaseUid: text("firebase_uid").notNull().unique(),
  name: text("name"),
  locale: text("locale").notNull().default("ms"),
  prayerZone: text("prayer_zone"),
  createdAt: timestamp("created_at", { withTimezone: true }).notNull().defaultNow(),
});
