function Logo({ size = 88 }: { size?: number }) {
  return (
    <svg width={size} height={size} viewBox="0 0 200 200" role="img" aria-label="Logo Mudawamah">
      <rect width="200" height="200" rx="46" fill="#2A2547" />
      <circle cx="134" cy="50" r="10" fill="#F2C27E" />
      <text
        x="100"
        y="140"
        textAnchor="middle"
        fontFamily="var(--font-amiri), serif"
        fontWeight="700"
        fontSize="150"
        fill="#F6E7CC"
      >
        م
      </text>
    </svg>
  );
}

export default function Home() {
  return (
    <main className="flex flex-1 flex-col">
      <section className="bg-linear-to-b from-night via-[#18214A] to-night-2 px-6 pb-24 pt-20 text-paper">
        <div className="mx-auto flex max-w-2xl flex-col items-center gap-5 text-center">
          <Logo />
          <p lang="ar" dir="rtl" className="font-arabic text-5xl text-[#F6DDB0]">
            مداومة
          </p>
          <h1 className="font-display text-5xl">Mudawamah</h1>
          <p className="text-lg text-[#E9DCCB]">Istiqamah bersama</p>
        </div>
      </section>

      <section className="mx-auto -mt-12 w-full max-w-2xl px-6">
        <figure className="rounded-3xl bg-paper-tint p-8 text-center">
          <blockquote className="font-display text-2xl leading-snug">
            “Amalan yang paling dicintai Allah ialah yang berterusan, walaupun sedikit.”
          </blockquote>
          <figcaption className="mt-3 text-base text-ink-muted">Riwayat al-Bukhari dan Muslim</figcaption>
        </figure>

        <div className="mt-10 grid gap-6 text-lg leading-relaxed sm:grid-cols-2">
          <p>
            Rekod amalan harian dengan satu ketikan: solat, tilawah, zikir dan puasa sunat.
          </p>
          <p>
            Lembaran mutabaah mingguan terisi sendiri. Anda pilih sama ada untuk menghantarnya kepada naqib.
          </p>
        </div>

        <p className="mt-12 mb-16 text-center text-base text-ink-muted">
          Sedang dibina. Akan datang ke Google Play.
        </p>
      </section>
    </main>
  );
}
