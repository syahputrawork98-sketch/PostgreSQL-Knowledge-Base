# Keputusan Struktur Materi (Expert-Scale)

Dokumen ini mencatat keputusan arsitektural mengenai struktur folder `materi/` dalam proyek PostgreSQL Living Knowledge Base.

## Konteks
Struktur awal (Batch 1) dirancang untuk kebutuhan basic hingga intermediate. Namun, untuk mendukung visi proyek sebagai perpustakaan pengetahuan yang hidup (living knowledge base) bagi level expert, struktur tersebut perlu dinaikkan skalanya (expert-scale).

## Keputusan Utama
1.  **Nama Folder**: Tetap menggunakan `materi/` sebagai root directory pengetahuan.
2.  **Organisasi Rak**: Rak didefinisikan berdasarkan **Domain Ilmu** PostgreSQL, bukan sekadar urutan belajar tutorial.
3.  **Navigasi vs Konten**: Jalur belajar (learning paths) dipisahkan ke dalam rak khusus `00-index-dan-jalur-belajar/` agar tidak bercampur dengan materi referensi murni.
4.  **Skala Level**: Struktur mendukung perjalanan belajar dari **Level 0 (Pemula)** hingga **Level 9 (Expert/Pakar)**.
5.  **Penomoran Rak Aktif**: Saat ini menggunakan dua digit (00-17) untuk menjaga urutan logis di sistem file. Rentang ini adalah baseline aktif, bukan batas permanen. Rak baru boleh ditambahkan jika ada domain ilmu PostgreSQL yang layak dipisahkan.

## Daftar Rak Aktif Saat Ini / Baseline Aktif
| No | Nama Rak | Fokus Utama | Target Level |
|---|---|---|---|
| 00 | Index dan Jalur Belajar | Navigasi & Roadmap | Lintas Level |
| 01 | Orientasi, Sejarah, dan Fondasi PostgreSQL | Orientasi, sejarah, filosofi, dan fondasi awal | L0 - L1 |
| 02 | SQL dan Querying | Bahasa SQL & DML/DQL | L1 - L2 |
| 03 | Desain Data dan Schema | Modeling & Integritas | L2 - L3 |
| 04 | PostgreSQL untuk Aplikasi | Dev Workflow & ORM | L3 - L4 |
| 05 | Fitur Lanjutan | JSONB, FTS, Window Funct. | L4 - L5 |
| 06 | Transaksi & MVCC | Concurrency & Isolation | L5 - L6 |
| 07 | Indexing & Performance | Optimasi & Planner | L5 - L6 |
| 08 | Admin & DBA | Ops & Konfigurasi | L6 - L7 |
| 09 | Backup & High Availability | Data Safety & Replication | L7 - L8 |
| 10 | Security & Governance | RBAC, RLS, Audit | L6 - L8 |
| 11 | Arsitektur Internals | Engine & Storage | L8 |
| 12 | Troubleshooting | Debugging & Logs | L6 - L8 |
| 13 | Studi Kasus | Real Project Implementation | L3 - L8 |
| 14 | Interview & Konsultasi | Karir & Expert Advice | L4 - L9 |
| 15 | Referensi Cepat | Cheatsheets | Lintas Level |
| 16 | Version Updates | Release Notes | Lintas Level |
| 17 | Berita, Isu, dan Ekosistem PostgreSQL | News / Ecosystem Watch | Lintas Level |

## Strategi Implementasi Bertahap
- **Fase A (Batch 2)**: Kunci struktur besar (Expert-Scale skeleton).
- **Fase B (Batch 3-5)**: Pengisian kerangka buku prioritas untuk Level 0-4.
- **Fase C**: Pengisian konten mendalam untuk Level 5-6.
- **Fase D**: Pengisian materi DBA/Ops untuk Level 7-8.
- **Fase E**: Materi Internals dan Konsultasi Level 9.

## Catatan Refinement (Batch 3)
Setelah Batch 2, Rak 01 diperjelas agar menampung materi non-teknis/fondasi konseptual seperti sejarah PostgreSQL, asal-usul POSTGRES, filosofi, analogi, dan evolusi PostgreSQL. Perubahan dilakukan sebagai batch refinement kecil karena struktur masih skeleton.

## Catatan Standarisasi (Batch 4)
- Standar penulisan materi resmi dikunci (Struktur Rak -> Buku -> Bab -> Sub-bab).
- Sub-bab menjadi heading di dalam file Bab secara default.
- Glosarium ditempatkan di `materi/00-index-dan-jalur-belajar/02-glosarium-istilah-postgresql/`.
- Peta relasi materi ditempatkan di `materi/00-index-dan-jalur-belajar/03-peta-relasi-materi-postgresql.md`.

## Catatan Expert-Scale Book Depth Policy (Batch 30.2)
- **Struktur materi/ adalah expert-scale**: PostgreSQL Living Knowledge Base dikonsepkan sebagai perpustakaan teknis kelas pakar, bukan kursus kilat.
- **Rak Berbasis Domain Ilmu**: Rak diorganisasikan berdasarkan cakupan domain keilmuan PostgreSQL, bukan berdasarkan durasi tutorial.
- **Buku Bukan Unit Kecil yang Dibatasi**: Jumlah bab per buku tidak dibatasi hanya 3–4 bab.
- **Jumlah Bab Fleksibel**: Jumlah bab menyesuaikan kebutuhan kedalaman topik dan kelengkapan materi.
- **Pattern Pendek Efek Skeleton**: Pola 3-4 bab saat ini murni merupakan implikasi dari fase inisiasi kerangka awal (skeleton), bukan standar resmi.
- **Ekspansi Berdasarkan Audit**: Penambahan dan pemekaran buku/bab di masa depan harus didasarkan pada hasil audit kelengkapan materi terstruktur, bukan sekadar menyeragamkan kuantitas bab.

## Catatan No Fixed Limit untuk Struktur Materi (Batch 30.3)
- **Tidak Ada Batas Jumlah Rak**: Rak dapat bertambah jika ada domain ilmu PostgreSQL baru yang layak dipisahkan.
- **Tidak Ada Batas Buku per Rak**: Satu rak boleh memiliki satu buku atau banyak buku sesuai keluasan domain.
- **Tidak Ada Batas Bab per Buku**: Satu buku boleh berisi sedikit atau banyak bab sesuai kedalaman topik.
- **Tidak Ada Batas Sub-bab per Bab**: Sub-bab boleh tetap menjadi heading, atau dinaikkan menjadi bab/buku jika pembahasannya terlalu besar.
- **Baseline Aktif, Bukan Batas Permanen**: Daftar rak 00-17 adalah kondisi aktif saat ini, bukan batas final.
- **Batas Sebenarnya**: Materi dianggap cukup hanya jika pembahasannya lengkap, benar, mendalam, dan sesuai kompetensi yang ditargetkan (Level 0 sampai Level 9). Penambahan rak/buku/bab/sub-bab besar sebaiknya didahului oleh audit terstruktur oleh Room Chat 01.

---
*Diputuskan pada: 2026-05-19*
*Oleh: Room Chat 00 & Syah (Owner)*
