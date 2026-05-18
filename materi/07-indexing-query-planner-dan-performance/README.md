# Rak 07: Indexing, Query Planner, dan Performance

*   **Status Rak**: **DRAFT / REVIEW**
*   **Target Level**: Level 3 - Level 4 (Developer-facing Basics) / Level 5 - Level 6 (Advanced Diagnostics)
*   **Peran**: Pintu masuk utama bagi pengembang backend untuk mendiagnosis performa kueri lambat dan melakukan indexing taktis.
*   **Target Pembaca**: Developer backend yang ingin menguasai teknik mempercepat kueri baca menggunakan indeks serta membaca rencana eksekusi database.

---

## 1. Tujuan Rak
Rak ini bertujuan mengajarkan teknik indexing dasar hingga tingkat lanjut menggunakan indeks B-Tree, memahami kapan indeks membantu kueri, merancang composite, partial, expression, dan covering index. Selanjutnya, pembaca akan mempelajari cara mendiagnosis kueri lambat secara aman di produksi menggunakan perintah `EXPLAIN ANALYZE` (dengan `BUFFERS` untuk mengukur I/O memori cache), membedah plan nodes (Seq/Index/Bitmap Scan, Nested Loop/Merge/Hash Join, Sort), memahami statistik planner (pg_stats, Extended Statistics), menerapkan workflow optimasi kueri lambat, meminimalkan anomali index ignore, refaktor anti-pattern SQL populer, serta mengelola resiko write amplification, index bloat, dan reindex concurrent.

---

## 2. Kebijakan Struktur (No Fixed Limit)
Sesuai dengan [Kebijakan Kedalaman Expert-Scale](../../docs/project/book-chapter-depth-policy.md) dan [Standardisasi Struktur](../../docs/project/materi-structure-decision.md), jumlah buku dan bab pada rak ini dikembangkan secara organik mengikuti kedalaman optimasi performa dan tidak dibatasi secara kaku.

---

## 3. Prasyarat Belajar
Pembaca wajib menyelesaikan **Rak 02 (SQL dan Querying)** sebelum memulai rak ini, agar pemahaman struktur query SQL dasar sudah matang. Untuk Buku 02 - Buku 06, pembaca juga sangat direkomendasikan menyelesaikan **Rak 03 (Desain Data dan Schema)**, **Rak 04 (PostgreSQL untuk Aplikasi)**, **Rak 05 (Fitur PostgreSQL Lanjutan)**, dan **Rak 06 (Transaksi, Concurrency, dan MVCC)** agar pemahaman operasional dan integrasi backend sudah lengkap.

---

## 4. Daftar Buku Aktif & DRAFT

| No | Buku / Folder | Status | Fokus Materi | Jumlah Bab |
| :---: | :--- | :---: | :--- | :---: |
| 1 | [Buku 01: Indexing Dasar untuk Developer](./buku-01-indexing-dasar-untuk-developer/) | **DRAFT** | Pengenalan konsep indeks B-Tree, kapan indeks membantu kueri, perintah EXPLAIN, dan membaca rencana eksekusi query plan dasar. | 4 Bab |
| 2 | [Buku 02: Index Types dan Strategi Index Lanjutan](./buku-02-index-types-dan-strategi-index-lanjutan/) | **DRAFT** | Traversal node B-Tree internal, composite index & urutan kolom, partial index bersyarat, expression index berbasis fungsi, covering index & Index-Only Scan. | 5 Bab |
| 3 | [Buku 03: EXPLAIN ANALYZE dan Query Plan](./buku-03-explain-analyze-dan-query-plan/) | **DRAFT** | EXPLAIN vs EXPLAIN ANALYZE secara aman (ROLLBACK), parameter cost/rows/actual time/loops, analisis buffers (shared hit/read), plan nodes scan, dan join/sort nodes. | 5 Bab |
| 4 | [Buku 04: Planner Statistics dan Optimizer](./buku-04-planner-statistics-dan-optimizer/) | **DRAFT** | Matematika selektivitas & kardinalitas CBO, utilitas ANALYZE, catalog view pg_stats (MCV & histogram), misestimation & data skew, extended statistics (CREATE STATISTICS). | 4 Bab |
| 5 | [Buku 05: Query Tuning Workflow dan Anti-Pattern](./buku-05-query-tuning-workflow-dan-anti-pattern/) | **DRAFT** | SOP analisis kueri lambat produksi, anomali index ignore (implicit casting), refaktor anti-pattern (LIKE %leading wildcard, OR, fungsi di WHERE), limit/offset pagination, dan N+1 query ORM. | 5 Bab |
| 6 | [Buku 06: Index Maintenance dan Trade-off Performa](./buku-06-index-maintenance-dan-trade-off-performa/) | **DRAFT** | Beban write amplification, page split & index bloat, audit unused indexes via pg_stat_user_indexes, serta REINDEX/CREATE INDEX CONCURRENTLY online. | 3 Bab |

---

## 5. Jalur Belajar yang Disarankan
Selesaikan Buku 01 secara urut dari Bab 01 s/d Bab 04 untuk membangun pemahaman bertahap dari pemahaman indeks fisik hingga diagnosis runtime kueri tingkat dasar (Level 3-4). Bagi pengembang senior yang ingin masuk ke level menengah-lanjut (Level 5-6), lanjutkan secara berurutan ke Buku 02 untuk taktik indeks, Buku 03 untuk diagnosis rencana eksekusi plan nodes kompleks, Buku 04 untuk statistik optimizer, Buku 05 untuk workflow pemulihan kueri lambat, dan Buku 06 untuk maintenance preventif indeks.

---

## 6. Output yang Diharapkan
*   Memahami kapan harus membuat indeks dan kapan indeks justru memperlambat kueri tulis.
*   Mampu mendiagnosis kueri lambat menggunakan perintah `EXPLAIN ANALYZE` secara aman di produksi.
*   Mampu mendeteksi pola akses query planner seperti Sequential Scan vs Index Scan vs Bitmap Index Scan.
*   Menguasai desain composite, partial, expression, dan covering index untuk memicu Index-Only Scan.
*   Mampu membaca statistik histogram optimizer dan merancang Extended Statistics untuk korelasi multi-kolom.
*   Mampu refaktor kueri lambat akibat implicit casting, OR, leading wildcard, pagination offset, dan N+1 query.
*   Memahami cara memelihara indeks dari bloat menggunakan REINDEX CONCURRENTLY secara non-blocking.

---

## 7. Status & Kebijakan Dokumen
*   **Status Penulisan**: `DRAFT` (Seluruh 26 bab aktif masih berupa draf materi awal).
*   **Status Verifikasi Sumber**: `REVIEW` (Menunggu validasi resmi dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Bab Expert-Scale](../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../docs/project/materi-expert-scale-gap-matrix.md)
    *   [Standar Penulisan Materi](../../docs/project/materi-writing-standard.md)
