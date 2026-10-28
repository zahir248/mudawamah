# Mudawamah: Spesifikasi Versi 1

> *"Amalan yang paling dicintai Allah ialah yang berterusan, walaupun sedikit."* (Riwayat al-Bukhari dan Muslim)

Status: draf 1 · 28 Oktober 2026 · Reka bentuk skrin: [Mudawamah app mockup](https://claude.ai/artifact/NyBqxJmFddm5GULUmoBBCF)

---

## 1. Ringkasan produk

**Mudawamah** ialah app Android (iOS kemudian) yang membantu kumpulan kecil, seperti usrah, keluarga dan rakan, saling menyokong supaya **istiqamah** dalam amalan harian. Amalan yang direkod setiap hari **mengisi lembaran mutabaah mingguan secara automatik**. Setiap ahli memilih sendiri sama ada untuk menghantar lembaran itu kepada naqib atau ketua kumpulan.

- Percuma, tanpa iklan
- Bahasa Melayu dan Inggeris
- Slogan: *Mudawamah: istiqamah bersama*

## 2. Prinsip reka bentuk

1. **Lembut, tanpa rasa bersalah.** Tiada streak yang jatuh ke kosong, tiada ranking dan tiada teguran. Kekonsistenan ditunjukkan sebagai "5 daripada 7 hari".
2. **Privasi diutamakan.** Butiran amalan peribadi tidak pernah dikongsi kecuali ahli sendiri menekan *Hantar*. Kumpulan hanya nampak angka keseluruhan tanpa nama.
3. **Satu ketikan untuk merekod.** Amalan harian mesti boleh ditanda dalam masa kurang dari 3 saat selepas app dibuka.
4. **Mesra semua umur.** Teks sekurang-kurangnya 16px, sasaran sentuhan sekurang-kurangnya 44px, kontras WCAG AA, dan sokongan saiz teks besar serta pembaca skrin.
5. **Berfungsi tanpa internet.** Semua rekod disimpan dalam telefon dahulu, kemudian disegerakkan ke server bila ada talian.

## 3. Identiti visual

| Elemen | Peraturan |
|---|---|
| **Langit ikut waktu** | Warna latar mengikut waktu solat semasa: Subuh (biru fajar), Zohor (biru cerah), Asar (jingga keemasan), Maghrib (ungu ke jingga), Isyak (biru malam berbintang). Boleh dimatikan dalam Tetapan |
| **Langit kumpulan** | Sentiasa malam. **Satu bintang untuk setiap amalan** yang diselesaikan ahli minggu ini, tanpa nama. Kecerahan langit meningkat dengan kekonsistenan kumpulan |
| **Lembaran mutabaah** | Grid 7 hari × amalan, gaya buku latihan: garisan biru, garis tepi merah, dan tanda dakwat biru gaya tulisan tangan. Ada **paparan senarai** sebagai alternatif untuk saiz teks besar |
| **Pelita** | Menggantikan streak. Nyalaannya bertambah terang bila amalan berterusan, dan hanya malap sedikit bila terlepas. **Tidak pernah padam** |
| **Motif pucuk rebung** | Jalur halus di skrin pembukaan dan di kepala lembaran sahaja. Bukan hiasan di mana-mana |
| **Fon** | Newsreader (tajuk), Plus Jakarta Sans (teks), Amiri (tulisan Arab), Caveat (tanda pada lembaran) |

## 4. Peranan

| Peranan | Boleh |
|---|---|
| **Tetamu** (tanpa akaun) | Semua amalan harian, pelita dan tetapan. Data dalam telefon, dilindungi oleh sandaran Google Android. Tiada ciri kumpulan |
| **Ahli** | Semua di atas, serta menyertai kumpulan, melihat langit dan peratusan kumpulan, dan menghantar lembaran kepada naqib |
| **Naqib / ketua kumpulan** | Semua di atas, serta mencipta kumpulan, menjemput ahli, menetapkan sasaran mingguan, melihat status hantar setiap ahli dan lembaran yang dihantar, dan membuka ringkasan usrah |

Seorang pengguna boleh menyertai lebih daripada satu kumpulan, contohnya usrah dan keluarga. Sasaran dan lembaran adalah **berasingan bagi setiap kumpulan**.

## 5. Ciri versi 1 dan syarat siap

### 5.1 Permulaan
- Pilih zon waktu solat JAKIM, sama ada melalui lokasi atau carian negeri dan kawasan.
- Log masuk dengan Google, atau pilih "Cuba dahulu tanpa akaun". Data tetamu dipindahkan ke akaun bila pengguna log masuk kemudian.
- **Siap apabila:** pengguna baharu sampai ke skrin Hari ini dalam 3 langkah atau kurang, dan waktu solat untuk 12 bulan disimpan dalam telefon.

### 5.2 Hari ini
- Solat 5 waktu, ditanda sebagai tepat waktu, qada atau berjemaah.
- Amalan disusun ikut waktu ("Selepas Asar"), termasuk tilawah (muka surat), zikir, puasa sunat dan amalan sendiri.
- Kad pelita.
- **Siap apabila:** menanda amalan tidak memerlukan internet, dan langit bertukar tepat pada masuk waktu.

### 5.3 Amalan sendiri
- Nama, kekerapan (harian, mingguan atau hari tertentu), waktu biasa dan sasaran.
- Kekal peribadi secara lalai.

### 5.4 Mutabaah
- Lembaran mingguan, Isnin hingga Ahad, mengikut waktu Malaysia.
- Lembaran diisi automatik daripada rekod harian (lihat 6.1). Ahli boleh membetulkan mana-mana petak.
- Butang *Hantar kepada naqib*. Selepas dihantar, perubahan masih boleh dibuat dan dihantar semula sehingga sesi usrah.
- Ada dua paparan: lembaran (grid) dan senarai.
- **Siap apabila:** ahli yang merekod setiap hari tidak perlu menaip apa-apa untuk mengisi lembaran.

### 5.5 Kumpulan
- Cipta kumpulan, dengan jenis usrah, keluarga atau lain-lain, nama dan hari usrah.
- Jemput ahli melalui kod 6 aksara atau pautan (*deep link*). Saiz kumpulan 2–30 orang.
- Skrin Sertai menerangkan dengan jelas apa yang dikongsi dan apa yang tidak.
- Langit kumpulan dan peratusan kumpulan.
- Paparan naqib: siapa yang dah hantar dan siapa yang belum, **tanpa markah dan tanpa ranking**.

### 5.6 Sasaran (naqib)
- Templat: Asas usrah, Ringan dan Ramadan. Naqib boleh mengubah setiap sasaran dengan butang − dan +.
- Simpan dan maklumkan ahli melalui notifikasi.
- Sasaran berkuat kuasa mulai minggu berikutnya, kecuali naqib memilih "minggu ini".

### 5.7 Ringkasan usrah (naqib)
- Peratusan kumpulan berbanding minggu lepas, dan peratusan mengikut amalan.
- Kotak "Untuk dibincangkan", yang dijana mengikut peraturan (lihat 6.4). **Tiada nama ahli.**
- Kongsi ke WhatsApp sebagai teks dan imej, tanpa nama.

### 5.8 Notifikasi
- Masuk waktu solat (boleh dimatikan).
- Satu peringatan lembut sehari pada masa pilihan pengguna, contohnya "Zikir petang belum ditanda".
- Lembaran mingguan sedia (sehari sebelum hari usrah).
- Naqib menetapkan sasaran baharu.

### 5.9 Tetapan dan privasi
- Saiz teks dengan pratonton, bahasa, langit ikut waktu, peringatan dan zon solat.
- **Eksport data** (JSON dan CSV), serta **padam akaun dan semua data**. Kedua-duanya diwajibkan oleh Google Play dan selaras dengan PDPA.

## 6. Logik khas

### 6.1 Auto-isi lembaran
Setiap sasaran kumpulan mempunyai `jenis` yang dipadankan dengan rekod harian:

| Jenis sasaran | Sumber rekod harian | Unit |
|---|---|---|
| `solat_jemaah` | Solat yang ditanda "berjemaah" | kali |
| `tilawah` | Muka surat tilawah (20 muka surat = 1 juzuk) | muka surat atau juzuk |
| `puasa_sunat` | Puasa sunat yang ditanda | hari |
| `qiamullail` | Amalan qiamullail yang ditanda | malam |
| `zikir` (contohnya Al-Mathurat) | Sesi pagi dan petang | kali |
| `lain` | Amalan sendiri yang dipautkan oleh ahli | ikut sasaran |

Petak yang dibetulkan secara manual ditanda `diubah: true`. Naqib tidak nampak tanda ini; ia hanya untuk kegunaan dalaman.

### 6.2 Pelita
- `kecerahan = purata wajaran 7 hari terakhir`, di mana hari ini diberi wajaran paling tinggi.
- Sehari diiktiraf "beramal" jika sekurang-kurangnya **satu** amalan selain solat fardu ditanda. Solat fardu tidak dikira, supaya pelita tidak menjadi ukuran solat.
- Kecerahan minimum 25%, jadi pelita **tidak pernah padam**.
- Pelita mempunyai 5 tahap visual, dan peralihan antara tahap dianimasikan secara perlahan.

### 6.3 Langit kumpulan
- `bilangan bintang = jumlah amalan yang diselesaikan oleh semua ahli minggu ini`.
- Angka harian dikira di server daripada log harian. Endpoint kumpulan hanya mengembalikan **jumlah**, bukan butiran amalan atau nama.
- Kedudukan bintang ditentukan oleh *seed* kumpulan dan minggu, jadi susunan bintang stabil sepanjang minggu dan tidak melompat-lompat.
- Kecerahan langit ditentukan oleh peratusan purata kumpulan.

### 6.4 "Untuk dibincangkan"
- Amalan dengan peratusan kumpulan terendah, jika di bawah 70%, menghasilkan ayat "{amalan} paling kerap tertinggal minggu ini."
- Amalan yang meningkat lebih 15% berbanding minggu lepas menghasilkan ayat "{amalan} meningkat minggu ini."
- Paling banyak dua ayat. Tiada AI dan tiada nama ahli.

## 7. Model data

### 7.1 Dalam telefon (Drift / SQLite)
| Jadual | Medan utama |
|---|---|
| `prayer_times` | zon, tarikh, subuh, syuruk, zohor, asar, maghrib, isyak |
| `amalan` | id, nama, jenis, kekerapan, slot_waktu, sasaran, unit, peribadi |
| `log_harian` | id, tarikh, amalan_id, nilai, status_solat, dikemas_kini |
| `lembaran` | kumpulan_id, minggu, petak (JSON), dihantar_pada |
| `outbox` | id, jenis_operasi, muatan, cubaan, dicipta |

### 7.2 Di server (PostgreSQL)
| Jadual | Medan utama |
|---|---|
| `users` | id, firebase_uid, nama, bahasa, zon |
| `groups` | id, nama, jenis, hari_usrah, kod_jemputan, dicipta_oleh |
| `group_members` | group_id, user_id, peranan (naqib/ahli), sertai_pada |
| `weekly_targets` | group_id, minggu, item (JSON: jenis, sasaran, unit) |
| `submissions` | group_id, user_id, minggu, petak (JSON), dihantar_pada |
| `daily_logs` | id, user_id, tarikh, amalan_id, nilai, status_solat, dikemas_kini, dipadam |
| `user_amalan` | id, user_id, nama, jenis, kekerapan, slot_waktu, sasaran, unit |
| `device_tokens` | user_id, token_fcm |

**Sandaran log harian (diputuskan 28 Okt):**
- **Pengguna yang log masuk:** log harian dan amalan sendiri disegerakkan ke server, supaya data kekal bila pengguna menukar telefon. Data ini **peribadi kepada pemilik sahaja**. Setiap pertanyaan API ditapis mengikut `user_id` daripada token Firebase, dan tiada endpoint yang membenarkan naqib atau ahli lain membacanya.
- **Kumpulan dan naqib** hanya menerima (a) angka harian untuk langit kumpulan, yang dikira di server, dan (b) lembaran yang ahli pilih untuk hantar.
- **Mod tetamu:** data kekal dalam telefon, dilindungi oleh **Android Auto Backup** ke akaun Google pengguna. Bila tetamu log masuk, data dalam telefon dimuat naik ke akaun.
- **Penyegerakan dua hala:** setiap rekod membawa `dikemas_kini` (masa UTC) dan `id` UUID yang dijana dalam telefon. Konflik diselesaikan dengan *last-write-wins* bagi setiap rekod, dan pemadaman disimpan sebagai *tombstone* (`dipadam`) supaya tidak "hidup semula" dari telefon lain.
- Data dienkripsi semasa disimpan (Supabase) dan semasa dihantar (HTTPS). *Padam akaun* memadam semua rekod pengguna di server secara kekal.

## 8. Seni bina dan stack percuma

| Bahagian | Pilihan | Had percuma (semak terma semasa) | Nota |
|---|---|---|---|
| App | Flutter, `flutter_bloc`, Drift, `go_router`, `dio`, `freezed` | - | Clean architecture, disusun ikut ciri |
| Log masuk, notifikasi, crash, analitik | **Firebase pelan Spark** | Auth, FCM, Crashlytics dan Analytics percuma | Cloud Functions tidak digunakan kerana memerlukan pelan Blaze |
| API dan laman web | **Next.js (App Router) dengan TypeScript dan Tailwind CSS, di Vercel (pelan Hobby percuma)** | Pelan Hobby untuk kegunaan bukan komersial; app ini percuma tanpa iklan, jadi layak | *Route handlers* untuk API (`/api/v1/...`), serta laman pendaratan dan polisi privasi dalam projek yang sama |
| Lapisan data | **Drizzle ORM**, `zod` untuk pengesahan input, `firebase-admin` untuk mengesahkan token log masuk | - | Jenis TypeScript dikongsi antara skema, API dan ujian |
| Pangkalan data | **Supabase PostgreSQL (pelan percuma)**, sebagai pangkalan data sahaja | 500 MB; dijeda selepas 7 hari tanpa aktiviti; 2 projek percuma bagi setiap akaun (satu digunakan oleh Uros) | Disambung dari Vercel melalui *connection pooler* (port 6543, mod *transaction*). App tidak bercakap terus dengan Supabase; semua akses melalui API supaya peraturan privasi dikawal di satu tempat. Supabase Auth tidak digunakan |
| Pembangunan tempatan | **Docker Compose** (Next.js dan PostgreSQL) | - | Seluruh persekitaran dijalankan dengan satu arahan; CI menggunakan imej yang sama |
| Tugas berjadual | **GitHub Actions `schedule`** | Percuma untuk repo awam | Menjana ringkasan mingguan dan notifikasi "lembaran sedia" |
| Waktu solat | Data e-Solat JAKIM (melalui API terbuka waktusolat.app, dengan JAKIM sebagai sandaran) | Percuma | Disimpan dalam telefon untuk 12 bulan |
| CI/CD | GitHub Actions | Percuma untuk repo awam | Analisis, ujian dan build `.aab` ke trek dalaman Play |
| Terbitan | Akaun Google Play Console sedia ada (Uros) | Yuran sekali bayar dah dijelaskan | |

**Anggaran kos bulanan: RM0.** Domain `mudawamah.app` atau `.my` adalah pilihan.

**Laluan naik taraf** bila pengguna bertambah: naik ke pelan Vercel Pro, atau jalankan imej Docker yang sama di AWS, tanpa mengubah kod. Ini mungkin kerana API menggunakan PostgreSQL standard dan sudah ada `Dockerfile`.

**Struktur repo (monorepo):**
```
mudawamah/
  app/        Flutter (Android)
  web/        Next.js: API, laman pendaratan, polisi privasi
  docs/       spesifikasi, keputusan seni bina (ADR)
  .github/    CI/CD untuk kedua-dua bahagian
```

## 9. Standard kualiti

- **Lint:** `very_good_analysis` (Flutter), ESLint dan TypeScript `strict` (Next.js). CI gagal jika ada amaran.
- **Ujian:**
  - *unit test* untuk Bloc, repository dan logik 6.1–6.4 (sasaran *coverage* 80% untuk lapisan domain),
  - *widget test* untuk setiap skrin utama,
  - satu *integration test* untuk aliran: tanda amalan → lembaran terisi → hantar,
  - Vitest untuk API, dengan ujian integrasi terhadap PostgreSQL sebenar dalam Docker.
- **Prestasi:** app sedia digunakan dalam kurang 2 saat pada telefon pertengahan; tiada *jank* semasa langit bertukar.
- **Kebolehcapaian:** semua skrin diuji dengan TalkBack dan saiz teks 200%.
- **Lokalisasi:** semua teks dalam fail ARB, tiada teks yang ditulis terus dalam kod.
- **Dokumentasi:** README dengan seni bina, sebab setiap pilihan teknikal, cara menjalankan app dan tangkapan skrin.

## 10. Di luar skop versi 1
Khatam berkumpulan, pelan ikut musim, doa tanpa nama, cabaran bermasa, iOS, teks Al-Quran, chat, suapan sosial, panel web naqib dan AWS.

## 11. Risiko dan perkara terbuka
| Risiko | Langkah |
|---|---|
| Sumber waktu solat tergendala | Salinan setahun dalam telefon, ditambah sumber sandaran |
| Had pelan percuma dicapai, atau projek Supabase dijeda kerana tiada aktiviti semasa pembangunan | Rekabentuk *offline-first*, *retry* dengan *backoff*, dan pemantauan penggunaan; sambung semula projek di papan pemuka Supabase bila perlu |
| Ketepatan kandungan agama | Hadis dan teks zikir disemak oleh orang yang berilmu sebelum dilancarkan |
| Ujian tertutup Play (12 penguji, 14 hari) | Semak sama ada syarat ini masih terpakai untuk akaun anda; jika ya, kumpul penguji dari minggu 5 |
| Nama dan domain | Daftar domain, dan semak cap dagangan MyIPO sebelum pelancaran |

## 12. Jadual 8 minggu
| Minggu | Kerja |
|---|---|
| 1 | Repo, seni bina, CI, *lint*, flavor dev/prod, Firebase, BM/EN, sistem tema dan langit |
| 2 | Zon dan waktu solat, Hari ini, rekod solat dan amalan tanpa internet, notifikasi tempatan |
| 3 | Amalan sendiri, pelita, lembaran (grid dan senarai) dan auto-isi |
| 4 | API Next.js (TypeScript, Drizzle, zod), Docker Compose, Supabase, log masuk Firebase, dan penyegerakan dua hala (*outbox*, *last-write-wins*, *tombstone*) beserta ujiannya |
| 5 | Kumpulan, kod jemputan, *deep link*, sasaran naqib dan FCM |
| 6 | Langit kumpulan, ringkasan usrah, kongsi WhatsApp, tetapan, eksport dan padam akaun |
| 7 | Kukuhkan ujian, kebolehcapaian, prestasi, Crashlytics, laman pendaratan dan polisi privasi (Next.js dan Tailwind), dan mula ujian tertutup Play |
| 8 | Lancarkan, lengkapkan README, dan kemas kini portfolio serta résumé |
