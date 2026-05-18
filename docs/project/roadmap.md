# Project Roadmap

Rencana pengembangan PostgreSQL Knowledge Base dalam 30 batch awal dan arah fase berikutnya:

- **Batch 0**: Reset repository dan pembuatan struktur awal (Root, Materi, Docs) — **Selesai**.
- **Batch 1**: Pembuatan kerangka folder awal (Inisialisasi Materi) — **Selesai**.
- **Batch 2**: Kunci struktur Expert-Scale `materi/` (Rak 00-16) — **Selesai**.
- **Batch 3**: Refinement Rak 01 (Orientasi & Sejarah) — **Selesai**.
- **Batch 4**: Kunci standar penulisan materi dan template — **Selesai**.
- **Batch 5**: Sinkronisasi awal skeleton prioritas Level 0-4 berdasarkan standar — **Selesai**.
- **Batch 5.1**: Docs sync dan anti-blunder audit — **Selesai**.
- **Batch 5.2**: Official PostgreSQL Source Policy — **Selesai**.
- **Batch 6 - 9**: Fase pengisian DRAFT awal 16 Bab materi Level 0-4 prioritas pada Rak 01 s/d Rak 04 — **Selesai**.
- **Batch 10**: Sinkronisasi dokumentasi project (Docs Sync) dan evaluasi hasil pengisian materi fase pertama — **Selesai**.
- **Batch 11**: Pembersihan navigasi lokal, relative link, dan penyelarasan jalur belajar 16 bab draft awal — **Selesai**.
- **Batch 12**: Drafting 4 Bab Fondasi Level 0-1 (Rak 01 Buku 01 Bab 03 & Buku 03 Bab 01, 02, 03) — **Selesai**.
- **Batch 13**: Drafting 4 Bab SQL Dasar Level 1-2 (Rak 02 Buku 01 Bab 03, Buku 02 Bab 03, Buku 03 Bab 01 & 02) — **Selesai**.
- **Batch 14**: Drafting 4 Bab Relasi & Struktur Data Level 2 (Rak 02 Buku 03 Bab 03, Rak 03 Buku 01 Bab 02 & 03, Buku 03 Bab 01) — **Selesai**.
- **Batch 15**: Cleanup ringan konsistensi materi hasil drafting Batch 12-14 — **Selesai**.
- **Batch 15.1**: Mini Docs Checkpoint setelah Batch 15 selesai — **Selesai**.
- **Batch 16**: Drafting agregasi SQL dan denormalisasi dasar (menambah 4 bab baru) — **Selesai**.
- **Batch 17**: Drafting schema performance dan database environment (menambah 4 bab baru) — **Selesai**.
- **Batch 18**: Cleanup hubungan materi dan peta relasi lokal (Jalur belajar diperluas menjadi 36 Bab DRAFT) — **Selesai**.
- **Batch 19**: Final pre-docs-sync material consistency pass dan programmatic relative link validation — **Selesai**.
- **Batch 20**: Docs Sync Besar setelah Batch 11-19 selesai — **Selesai**.
- **Batch 21**: Drafting materi Data Seeding Dasar dan Seed Data vs Dummy Data vs Production Data — **Selesai**.
- **Batch 22**: Drafting materi Schema Versioning / Version Control untuk Schema — **Selesai**.
- **Batch 23**: Drafting materi Query untuk List/Detail Data Aplikasi serta Query Filter, Sorting, dan Pagination — **Selesai**.
- **Batch 24**: Drafting materi Transaksi Database untuk Aplikasi serta BEGIN, COMMIT, dan ROLLBACK — **Selesai**.
- **Batch 25**: Cleanup konsistensi materi Batch 21-24 — **Selesai**.
- **Batch 26**: Drafting materi Indexing Pengantar untuk Developer — **Selesai**.
- **Batch 27**: Drafting materi EXPLAIN dan Membaca Query Plan Dasar — **Selesai**.
- **Batch 28**: Drafting materi Backup, Restore, dan Kesadaran Risiko Data — **Selesai**.
- **Batch 29**: Final consistency pass materi Batch 21-28 (melunakkan klaim absolut, verifikasi link internal, dan integrasi penamaan) — **Selesai**.
- **Batch 30**: Docs Sync Besar setelah Batch 21-29 selesai — **Selesai**.
- **Batch 30.1**: Portable Project Instructions, History Docs, Verification Workflow, dan Rak Berita Skeleton — **Selesai**.
- **Batch 30.2**: Lock Expert-Scale Book/Chapter Expansion Rules — **Selesai**.
- **Batch 30.3**: Lock No Fixed Limit for Rak, Buku, Bab, dan Sub-bab — **Selesai**.
- **Batch 31**: Gap Matrix Struktur Expert-Scale — **Selesai**.
- **Batch 32**: Sync README Rak/Buku Aktif — **Selesai**.
- **Batch 33**: Expand Struktur Rak 02 SQL Core — **Selesai**.
- **Batch 34**: Expand Struktur Rak 03 Schema & Data Modeling — **Selesai**.
- **Batch 35**: Expand Struktur Rak 04 PostgreSQL untuk Aplikasi — **Selesai**.

---

### Arah Langkah Berikutnya (Rencana Fase Selanjutnya)
Fase selanjutnya adalah melaksanakan prioritas pengembangan jangka menengah yang telah diidentifikasi dalam [Gap Matrix Struktur Expert-Scale](./materi-expert-scale-gap-matrix.md):

*   **Rekomendasi Utama — Batch 36: Expand Rak 07 Indexing, Query Planner, dan Performance**: Mulai merancang draf jenis index lanjutan, pembacaan plan kompleks, dan teknik tuning query.
*   **Opsi A — Batch 37: Expand Rak 08 Administrasi, DBA, dan Operasional**: Mulai merancang draf arsitektur backup/restore lanjutan, Point-in-Time Recovery (PITR), dan tata kelola failover database.
*   **Opsi B — Mulai official docs verification**: Mulai melakukan verifikasi draf 89 bab aktif terhadap dokumentasi resmi menggunakan [Verification Workflow](./verification-workflow.md) resmi dan menaikkan status dari REVIEW menjadi `VERIFIED`.
