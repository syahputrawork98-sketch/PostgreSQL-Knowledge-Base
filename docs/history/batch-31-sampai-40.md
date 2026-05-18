# Riwayat Project: Batch 31 sampai 40

Halaman ini mendokumentasikan catatan riwayat, fokus, dan pencapaian pengembangan proyek PostgreSQL Living Knowledge Base untuk fase menengah-lanjutan (Batch 31 s/d Batch 40, termasuk sub-batch terkait). Fase ini ditandai dengan pemekaran masif draf kurikulum, peningkatan struktur expert-scale, dan sinkronisasi kontrol dokumen.

---

## Ringkasan Perjalanan Batch

### **Batch 31 — Gap Matrix Struktur Expert-Scale**
- **Status**: **Selesai**
- **Fokus**: Pemetaan celah (gap matrix) struktur materi PostgreSQL berbasis rak, buku, bab, sub-bab, prioritas ekspansi, kelengkapan, dan level belajar.
- **Hasil**: Terbentuknya dokumen kontrol kurikulum resmi di [materi-expert-scale-gap-matrix.md](../project/materi-expert-scale-gap-matrix.md) sebagai panduan arah untuk Batch 32 s/d Batch 40.

### **Batch 32 — Sync README Rak/Buku Aktif**
- **Status**: **Selesai**
- **Fokus**: Sinkronisasi navigasi indeks lokal pada Rak 01 sampai Rak 08 beserta indeks buku-buku aktif agar mencerminkan 49 Bab DRAFT awal.
- **Hasil**: Kerapian katalog navigasi lokal tercapai, mempermudah perluasan struktur di batch berikutnya.

### **Batch 33 — Expand Struktur Rak 02 SQL Core**
- **Status**: **Selesai**
- **Fokus**: Perluasan struktur Rak 02 (SQL dan Querying) ke tingkat lanjutan, meliputi kueri DML kompleks, semantik NULL, predicate/expression, subquery, CTE, set operations, dan window functions.
- **Hasil**: Pembuatan 4 folder buku baru di Rak 02 (`buku-02` s/d `buku-05`) beserta 13 bab skeleton DRAFT baru (Total berkembang menjadi **62 Bab DRAFT**).

### **Batch 34 — Expand Struktur Rak 03 Schema & Data Modeling**
- **Status**: **Selesai**
- **Fokus**: Perluasan struktur Rak 03 (Desain Data dan Schema) ke topik tingkat menengah, termasuk tipe data PostgreSQL, generator UUID/serial/identity, penanganan timestamp/timezone, constraint lanjutan, skema evolusi, dan partisi awal.
- **Hasil**: Pembuatan 4 folder buku baru di Rak 03 (`buku-02` s/d `buku-05`) beserta 14 bab skeleton DRAFT baru (Total berkembang menjadi **76 Bab DRAFT**).

### **Batch 35 — Expand Struktur Rak 04 PostgreSQL untuk Aplikasi**
- **Status**: **Selesai**
- **Fokus**: Perluasan struktur Rak 04 (PostgreSQL untuk Aplikasi) ke arah integrasi backend tingkat menengah-lanjutan, meliputi prepared statements, SQL injection prevention, transaction boundaries service layer, retry & idempotency, pagination strategies, connection pooling, ORM trade-off, dan risiko migrasi.
- **Hasil**: Pembuatan 4 folder buku baru di Rak 04 (`buku-02` s/d `buku-05`) beserta 13 bab skeleton DRAFT baru (Total berkembang menjadi **89 Bab DRAFT**).

### **Batch 36 — Activate Struktur Rak 05 Advanced PostgreSQL Features**
- **Status**: **Selesai**
- **Fokus**: Aktivasi Rak 05 (Fitur PostgreSQL Lanjutan) dari status skeleton pasif menjadi draf aktif terstruktur, meliputi JSONB, Full Text Search (FTS), standard & materialized views, functions/procedures/triggers, dan extensions modular.
- **Hasil**: Pembuatan 5 folder buku baru di Rak 05 (`buku-01` s/d `buku-05`) beserta 17 bab skeleton DRAFT baru (Total berkembang menjadi **106 Bab DRAFT**).

### **Batch 37 — Activate Struktur Rak 06 Transactions, Concurrency, dan MVCC**
- **Status**: **Selesai**
- **Fokus**: Aktivasi Rak 06 (Transactions, Concurrency, dan MVCC) dari status skeleton pasif menjadi draf aktif, meliputi ACID, 3 tingkat isolasi transaksi aktif, mitigasi anomali konkurensi (write skew), locking system (row/table/advisory), deadlock, row versioning internal MVCC (xmin/xmax), serta concurrency patterns (OCC vs PCC & retry safety).
- **Hasil**: Pembuatan 5 folder buku baru di Rak 06 (`buku-01` s/d `buku-05`) beserta 18 bab skeleton DRAFT baru (Total berkembang menjadi **124 Bab DRAFT**).

### **Batch 38 — Expand Struktur Rak 07 Indexing, Query Planner, dan Performance**
- **Status**: **Selesai**
- **Fokus**: Perluasan Rak 07 (Indexing, Query Planner, dan Performance) ke topik performa tingkat menengah-lanjutan, meliputi traversal B-Tree internal, composite/partial/expression/covering indexes, EXPLAIN ANALYZE online, plan scan & join/sort nodes, optimizer statistics CBO, extended statistics, SOP diagnosis kueri lambat, index ignore, N+1 query ORM, dan index bloat.
- **Hasil**: Pembuatan 5 folder buku baru di Rak 07 (`buku-02` s/d `buku-06`) beserta 22 bab skeleton DRAFT baru (Total berkembang menjadi **146 Bab DRAFT**).

### **Batch 39 — Expand Struktur Rak 08 Administrasi, DBA, dan Operasional**
- **Status**: **Selesai**
- **Fokus**: Perluasan Rak 08 (Administrasi, DBA, dan Operasional) ke topik dasar administrasi operasional harian, meliputi psql console, meta-commands, inspeksi skema objek database, Copy-Export-Import CSV/TXT, model otorisasi Role (Least Privilege), postgresql.conf tuning, autovacuum daemon tuning, table/index bloat, Transaction ID Wraparound, logical dump/restore, basebackup biner fisik, WAL Archiving, Point-in-Time Recovery (PITR), RPO/RTO bisnis, pg_stat_activity, pg_stat_user_tables, dan monitoring saturasi CPU/RAM/Disk.
- **Hasil**: Pembuatan 6 folder buku baru di Rak 08 (`buku-02` s/d `buku-07`) beserta 26 bab skeleton DRAFT baru (Total berkembang menjadi **172 Bab DRAFT**).

### **Batch 40 — Formalize Level 5-9 Central Curriculum Map + Docs Sync**
- **Status**: **Selesai**
- **Fokus**: Formalisasi peta kurikulum lanjutan tingkat Level 5 s/d Level 9, merujuk 89 bab DRAFT aktif hasil Batch 36-39, pemisahan jelas dari Level 0-4, serta sinkronisasi akhir seluruh dokumen kontrol untuk menutup siklus Batch 31-40.
- **Hasil**: Pembuatan berkas [jalur-belajar-level-5-sampai-9.md](../materi/00-index-dan-jalur-belajar/jalur-belajar-level-5-sampai-9.md), sinkronisasi transisi kurikulum Level 0-4, serta penyelarasan current status dan roadmap proyek.

---

## Catatan Keputusan & Kebijakan Penting (Batch 31-40)

1.  **Ekspansi Masif Berbasis Kebijakan**: Seluruh 123 bab skeleton baru yang dihasilkan dalam Batch 33-39 (Baseline 49 Bab -> Total 172 Bab) dibangun dengan mematuhi aturan **Expert-Scale Depth Policy** (visual outline, tujuan belajar, prasyarat, notes, dan rujukan relasi).
2.  **Kepatuhan Sandboxing Terjaga (100% Steril)**: Seluruh folder client/server operasional tetap berada pada status **HOLD** mutlak tanpa modifikasi kode atau schema database langsung.
3.  **Status Pengaman (DRAFT/REVIEW)**: Tidak ada bab materi yang dinaikkan statusnya menjadi VERIFIED atau FINAL tanpa proses pembacaan tautan resmi (browser/web access sengaja dinonaktifkan di batch ini).
4.  **Tuntasnya Fondasi Kerangka Kurikulum**: Proyek ini kini resmi memiliki peta navigasi komprehensif hulu-ke-hilir dari pengenalan awal pengembang backend hingga operasi DBA lanjut berskala expert.
