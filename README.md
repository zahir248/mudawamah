# Mudawamah

> *"Amalan yang paling dicintai Allah ialah yang berterusan, walaupun sedikit."* (al-Bukhari dan Muslim)

Mudawamah is a digital **mutabaah** app for small groups (usrah, families, friends). Members log their daily amalan in one tap; the weekly mutabaah sheet fills itself from those logs, and each member chooses whether to send it to their naqib. Groups only ever see anonymous totals.

Android first. Free, no ads.

## Repository

| Folder | What it is |
|---|---|
| [`app/`](app) | Flutter app (Android): Bloc, clean architecture by feature, offline-first |
| [`web/`](web) | Next.js (App Router, TypeScript, Tailwind): the API, landing page and privacy policy |
| [`docs/`](docs) | [Product spec](docs/SPEC.md) and design decisions |
| [`design/`](design) | Logo and icon sources |

## Architecture

```
Flutter app ──HTTPS──▶ Next.js API on Vercel ──▶ Supabase PostgreSQL
     │                        │
     └─ Firebase Auth / FCM / Crashlytics (token verified by the API)
```

- **Offline-first.** The app writes to SQLite first and syncs in the background, so it works without signal and never waits for the server.
- **Privacy by design.** Personal daily logs are readable only by their owner. Groups get server-computed totals and the sheets members choose to send.
- **The sky follows the prayer times.** The background moves from Subuh to Isyak; tests check every sky passes WCAG 4.5:1 contrast.

## Running it

### App

```bash
cd app
flutter pub get
flutter run --flavor dev -t lib/main_dev.dart
```

Checks run in CI on every push:

```bash
dart format --set-exit-if-changed lib test
flutter analyze --fatal-infos
flutter test --coverage
```

### Web

```bash
cd web
cp .env.example .env.local   # then set DATABASE_URL
npm install
npm run dev
```

`npm run lint`, `npm run typecheck`, `npm test` and `npm run build` are what CI runs.

### Everything in Docker

```bash
docker compose up --build
```

Starts PostgreSQL and the production web image; the API health check is at `http://localhost:3000/api/v1/health`.

## Status

Week 1 of 8: project setup, architecture, sky theme system, CI and icons. See the plan in [docs/SPEC.md](docs/SPEC.md#12-jadual-8-minggu).
