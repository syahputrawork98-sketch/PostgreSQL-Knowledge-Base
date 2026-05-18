# Jalur Belajar Level 5 sampai 9 (Advanced, Expert, DBA & Architecture)

*   **Status Dokumen**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 5 s/d Level 9 (Advanced ke Expert-scale)
*   **Prasyarat**: Harus menyelesaikan [Jalur Belajar Level 0 sampai 4](./jalur-belajar-level-0-sampai-4.md) terlebih dahulu.

---

## 1. Status & Kebijakan Verifikasi
Dokumen ini merupakan peta kurikulum resmi untuk tingkat lanjutan (Level 5-9) pada proyek **PostgreSQL Living Knowledge Base**. Seluruh pranala bab yang dicantumkan dalam peta ini merujuk pada berkas-berkas struktur **DRAFT** aktif hasil pengerjaan Batch 36-39.
*   **Penting**: Seluruh materi yang dirujuk belum melalui proses *official verification* (verifikasi dokumentasi resmi PostgreSQL) dan browser/web access belum digunakan untuk audit keabsahan data. Semua konten berstatus **DRAFT** dan **REVIEW**.

---

## 2. Tujuan Jalur Level 5-9
Jalur belajar ini dirancang khusus untuk memandu pembaca yang telah menguasai fondasi dasar (Level 0-4: orientasi awal, SQL Core, data modeling/desain skema, dan integrasi aplikasi backend dasar) menuju topik-topik rekayasa database tingkat mendalam. Fokus utama jalur ini adalah pengayaan fitur lanjutan, pencegahan anomali transaksi/concurrency, teknik diagnostik performa kueri, administrasi DBA harian hulu-ke-hilir, serta pemetaan jalur ekspansi arsitektur database berskala expert (*expert-scale*).

---

## 3. Pemetaan Level & Fokus Kompetensi

### Level 5: Advanced PostgreSQL Features (Fokus Rak 05)
*   **Kompetensi**: Menguasai pemrosesan data semi-terstruktur, mesin pencarian teks modern, abstraksi virtual, pemrograman database prosedural, serta ekosistem ekstensi PostgreSQL.
*   **Fokus Topik**: JSONB & JSON path, Full Text Search (tsvector & tsquery), Standard & Materialized Views (concurrent refresh), Functions/Stored Procedures transaksional (PL/pgSQL), serta manajemen ekstensi dasar (citext, pg_trgm, uuid-ossp, pg_stat_statements).

### Level 6: Transactions, Concurrency, dan MVCC (Fokus Rak 06)
*   **Kompetensi**: Memahami batasan transaksi ACID, mengisolasi transaksi secara tepat untuk mencegah anomali konkurensi, serta menguasai teori internal visibilitas baris data.
*   **Fokus Topik**: ACID lifecycle, tiga tingkat isolasi transaksi (Read Committed, Repeatable Read, Serializable), mitigasi anomali (dirty read, fuzzy read, phantom read, write skew), sistem penguncian (row, table, advisory locks), deteksi deadlock, row versioning internal MVCC (xmin, xmax, visibility map), serta concurrency pattern di aplikasi backend (OCC vs PCC & retry loop).

### Level 7: Indexing, Query Planner, dan Performance (Fokus Rak 07)
*   **Kompetensi**: Mampu merancang strategi indexing taktis, mendiagnosis performa kueri lambat secara aman di produksi, serta mengoreksi misestimasi planner database.
*   **Fokus Topik**: Traversal B-Tree internal, composite index, partial index, expression index, covering index & Index-Only Scan, perintah EXPLAIN ANALYZE secara aman (ROLLBACK), buffers & memori cache I/O, plan scan nodes (Seq/Index/Bitmap Scan), plan join & sort nodes, matematika selektivitas/kardinalitas CBO, utilitas ANALYZE & pg_stats, extended statistics, SOP diagnosis kueri lambat, mitigasi index ignore, refaktor anti-pattern SQL, pagination/sorting LIMIT, N+1 query ORM, write amplification, index bloat, dan REINDEX CONCURRENTLY.

### Level 8: DBA, Administration, dan Operational Basics (Fokus Rak 08)
*   **Kompetensi**: Menguasai administrasi shell harian, otorisasi hak akses terpadu, penyetelan parameter server, perawatan berkala MVCC, strategi backup-restore bencana, dan monitoring kesehatan server database.
*   **Fokus Topik**: Program terminal native psql, meta-commands psql, inspeksi visual objek skema, Copy-Export-Import CSV/TXT, model otorisasi Role (LOGIN/Group), GRANT/REVOKE, keamanan skema & search_path, prinsip Least Privilege koneksi backend, edit postgresql.conf & pg_hba.conf, parameter memori shared_buffers & work_mem, batas max_connections, rotasi log kueri lambat, MVCC dead tuples, VACUUM biasa vs FULL, autovacuum daemon tuning, table/index bloat fisik, Transaction ID Wraparound, logical dump/restore, basebackup biner fisik, WAL Archiving, Point-in-Time Recovery (PITR), RPO/RTO bisnis, catalog view pg_stat_activity, Buffer Cache Hit Ratio, pg_stat_user_tables, dan saturasi CPU/RAM/Disk.

### Level 9: Expert Roadmap & Future Expansion (Rak 09 - Rak 17)
*   **Status**: **FUTURE PLAN / ROADMAP** (Belum diaktifkan sebagai materi DRAFT aktif penuh).
*   **Kompetensi Utama**: Rekayasa tingkat arsitek database untuk ketersediaan tinggi (*High Availability*), keamanan enterprise, performa ultra-skala, dan studi kasus DBA senior.
*   **Kandidat Jalur Pengembangan**:
    *   **Rak 09: Replication dan High Availability (HA)**: Streaming Replication, failover otomatis, load balancing read-write, dan pooling global.
    *   **Rak 10: Security dan Governance Lanjutan**: Row Level Security (RLS) mendalam, audit log pgAudit, enkripsi SSL/TLS, dan enkripsi data (TDE).
    *   **Rak 11: PostgreSQL Internals**: Struktur fisik berkas heap, interaksi shared buffer cache, write-ahead log (WAL) internal, dan mekanisme checkpoint.
    *   **Rak 12: Advanced Troubleshooting**: Penyelamatan crash database, pemulihan data corrupt, isolasi konsumsi I/O tinggi, dan analisis trace CPU.
    *   **Rak 13: Studi Kasus Produksi Nyata**: Desain multi-tenant database SaaS, optimasi kueri analitik triliunan baris, dan partisi tabel terdistribusi.
    *   **Rak 14: Panduan Latihan Praktik & Challenge**: Skenario DBA sandbox hancur untuk latihan perbaikan mandiri.
    *   **Rak 15: Cheat Sheet & Referensi Cepat**: Pintasan sintaks SQL lanjutan, meta-commands psql lengkap, dan checklist checklist DBA.
    *   **Rak 16: PostgreSQL Version Updates**: Logik migrasi major version update (pg_upgrade) dan komparasi fitur rilis terbaru.
    *   **Rak 17: Berita, Isu, dan Ekosistem**: Pemantauan rilis rujukan, isu keamanan CVE, dan tren ekosistem ekstensi PostgreSQL global.

---

## 4. Tabel Bab Aktif Lanjutan (Total 89 Bab DRAFT)

### A. Level 5: Advanced PostgreSQL Features (Rak 05 — 17 Bab)
| Bab | Buku | Judul Bab | Fokus Bahasan | Status |
| :---: | :--- | :--- | :--- | :---: |
| 01 | Buku 01 | [Bab 01: Konsep Semi-Structured Data di Relational Database](../05-fitur-postgresql-lanjutan/buku-01-json-dan-jsonb-processing/bab-01-konsep-semi-structured-data-di-relational-database.md) | JSON vs JSONB | DRAFT |
| 02 | Buku 01 | [Bab 02: Sintaks Query JSONB dan Operator Utama](../05-fitur-postgresql-lanjutan/buku-01-json-dan-jsonb-processing/bab-02-sintaks-query-jsonb-dan-operator-utama.md) | Operator ->, ->>, #>, #>> | DRAFT |
| 03 | Buku 01 | [Bab 03: Modifikasi Dokumen JSONB](../05-fitur-postgresql-lanjutan/buku-01-json-dan-jsonb-processing/bab-03-modifikasi-dokumen-jsonb.md) | jsonb_set & concat | DRAFT |
| 04 | Buku 01 | [Bab 04: JSON Path dan Querying Tingkat Lanjut](../05-fitur-postgresql-lanjutan/buku-01-json-dan-jsonb-processing/bab-04-json-path-dan-querying-tingkat-lanjut.md) | jsonb_path_query | DRAFT |
| 05 | Buku 02 | [Bab 01: Pengantar Pencarian Teks (Full Text Search)](../05-fitur-postgresql-lanjutan/buku-02-full-text-search-fts/bab-01-pengantar-pencarian-teks-full-text-search.md) | FTS vs LIKE | DRAFT |
| 06 | Buku 02 | [Bab 02: tsvector dan tsquery](../05-fitur-postgresql-lanjutan/buku-02-full-text-search-fts/bab-02-tsvector-dan-tsquery.md) | Lexeme & parser | DRAFT |
| 07 | Buku 02 | [Bab 03: Bahasa dan Stemming](../05-fitur-postgresql-lanjutan/buku-02-full-text-search-fts/bab-03-bahasa-dan-stemming.md) | Stopwords & kamus | DRAFT |
| 08 | Buku 02 | [Bab 04: Indexing untuk FTS: GIN dan GIST](../05-fitur-postgresql-lanjutan/buku-02-full-text-search-fts/bab-04-indexing-untuk-fts-gin-dan-gist.md) | GIN vs GIST index | DRAFT |
| 09 | Buku 03 | [Bab 01: Standard View Sebagai Abstraksi Kueri](../05-fitur-postgresql-lanjutan/buku-03-views-dan-materialized-views/bab-01-standard-view-sebagai-abstraksi-kueri.md) | View keamanan | DRAFT |
| 10 | Buku 03 | [Bab 02: Materialized View untuk Caching Data](../05-fitur-postgresql-lanjutan/buku-03-views-dan-materialized-views/bab-02-materialized-view-untuk-caching-data.md) | MV caching data | DRAFT |
| 11 | Buku 03 | [Bab 03: Refresh Materialized View secara Non-Blocking](../05-fitur-postgresql-lanjutan/buku-03-views-dan-materialized-views/bab-03-refresh-materialized-view-secara-non-blocking.md) | REFRESH CONCURRENTLY | DRAFT |
| 12 | Buku 04 | [Bab 01: UDF (User Defined Function) vs Stored Procedure](../05-fitur-postgresql-lanjutan/buku-04-function-procedure-dan-trigger/bab-01-udf-user-defined-function-vs-stored-procedure.md) | Perbedaan transaksi | DRAFT |
| 13 | Buku 04 | [Bab 02: Dasar Pemrograman PL/pgSQL](../05-fitur-postgresql-lanjutan/buku-04-function-procedure-dan-trigger/bab-02-dasar-pemrograman-pl-pgsql.md) | Struktur kontrol | DRAFT |
| 14 | Buku 04 | [Bab 03: Trigger: Konsep dan Pemanfaatan](../05-fitur-postgresql-lanjutan/buku-04-function-procedure-dan-trigger/bab-03-trigger-konsep-dan-pemanfaatan.md) | Audit trail logs | DRAFT |
| 15 | Buku 05 | [Bab 01: Konsep Extension Modular di PostgreSQL](../05-fitur-postgresql-lanjutan/buku-05-extensions-dasar/bab-01-konsep-extension-modular-di-postgresql.md) | CREATE EXTENSION | DRAFT |
| 16 | Buku 05 | [Bab 02: pg_trgm, citext, dan uuid-ossp (Pengantar)](../05-fitur-postgresql-lanjutan/buku-05-extensions-dasar/bab-02-pg-trgm-citext-dan-uuid-ossp-pengantar.md) | Ekstensi populer | DRAFT |
| 17 | Buku 05 | [Bab 03: pgcrypto dan pg_stat_statements (Pengantar)](../05-fitur-postgresql-lanjutan/buku-05-extensions-dasar/bab-03-pgcrypto-dan-pg-stat-statements-pengantar.md) | Enkripsi & statistik | DRAFT |

### B. Level 6: Transactions, Concurrency, dan MVCC (Rak 06 — 18 Bab)
| Bab | Buku | Judul Bab | Fokus Bahasan | Status |
| :---: | :--- | :--- | :--- | :---: |
| 01 | Buku 01 | [Bab 01: Konsep ACID secara Praktis](../06-transaksi-concurrency-dan-mvcc/buku-01-acid-dan-transaction-lifecycle/bab-01-konsep-acid-secara-praktis.md) | ACID in action | DRAFT |
| 02 | Buku 01 | [Bab 02: Siklus Hidup Transaksi](../06-transaksi-concurrency-dan-mvcc/buku-01-acid-dan-transaction-lifecycle/bab-02-siklus-hidup-transaksi.md) | BEGIN, COMMIT, ROLLBACK | DRAFT |
| 03 | Buku 01 | [Bab 03: SAVEPOINT dan Nested Transaction](../06-transaksi-concurrency-dan-mvcc/buku-01-acid-dan-transaction-lifecycle/bab-03-savepoint-dan-nested-transaction.md) | Transaksi nested | DRAFT |
| 04 | Buku 02 | [Bab 01: Fenomena Concurrency Bugs](../06-transaksi-concurrency-dan-mvcc/buku-02-isolation-level-dan-concurrency-anomali/bab-01-fenomena-concurrency-bugs.md) | Dirty read, phantom read | DRAFT |
| 05 | Buku 02 | [Bab 02: Read Committed Isolation Level](../06-transaksi-concurrency-dan-mvcc/buku-02-isolation-level-dan-concurrency-anomali/bab-02-read-committed-isolation-level.md) | Default isolasi | DRAFT |
| 06 | Buku 02 | [Bab 03: Repeatable Read Isolation Level](../06-transaksi-concurrency-dan-mvcc/buku-02-isolation-level-dan-concurrency-anomali/bab-03-repeatable-read-isolation-level.md) | Snapshots consistency | DRAFT |
| 07 | Buku 02 | [Bab 04: Serializable Isolation Level](../06-transaksi-concurrency-dan-mvcc/buku-02-isolation-level-dan-concurrency-anomali/bab-04-serializable-isolation-level.md) | SSI & Write skew | DRAFT |
| 08 | Buku 03 | [Bab 01: Row-Level Lock: Shared vs Exclusive](../06-transaksi-concurrency-dan-mvcc/buku-03-locking-dan-deadlock-prevention/bab-01-row-level-lock-shared-vs-exclusive.md) | FOR UPDATE / SHARE | DRAFT |
| 09 | Buku 03 | [Bab 02: Table-Level Lock dan Konflik Matrix](../06-transaksi-concurrency-dan-mvcc/buku-03-locking-dan-deadlock-prevention/bab-02-table-level-lock-dan-konflik-matrix.md) | Kunci tabel DDL | DRAFT |
| 10 | Buku 03 | [Bab 03: Advisory Lock untuk Aplikasi](../06-transaksi-concurrency-dan-mvcc/buku-03-locking-dan-deadlock-prevention/bab-03-advisory-lock-untuk-aplikasi.md) | Kunci logis custom | DRAFT |
| 11 | Buku 03 | [Bab 04: Lock Wait Timeout dan Observasi Lock](../06-transaksi-concurrency-dan-mvcc/buku-03-locking-dan-deadlock-prevention/bab-04-lock-wait-timeout-dan-observasi-lock.md) | pg_locks & timeout | DRAFT |
| 12 | Buku 03 | [Bab 05: Deadlock: Deteksi dan Pencegahan](../06-transaksi-concurrency-dan-mvcc/buku-03-locking-dan-deadlock-prevention/bab-05-deadlock-deteksi-dan-pencegahan.md) | Deadlock resolution | DRAFT |
| 13 | Buku 04 | [Bab 01: Filosofi Multi-Version Concurrency Control (MVCC)](../06-transaksi-concurrency-dan-mvcc/buku-04-mvcc-dan-snapshot-visibility/bab-01-filosofi-multi-version-concurrency-control-mvcc.md) | Non-blocking reads | DRAFT |
| 14 | Buku 04 | [Bab 02: Halaman Fisik Tabel dan Struktur Tuple](../06-transaksi-concurrency-dan-mvcc/buku-04-mvcc-dan-snapshot-visibility/bab-02-halaman-fisik-tabel-dan-struktur-tuple.md) | Header & item pointer | DRAFT |
| 15 | Buku 04 | [Bab 03: xmin, xmax, dan Row Versioning (Pengantar)](../06-transaksi-concurrency-dan-mvcc/buku-04-mvcc-dan-snapshot-visibility/bab-03-xmin-xmax-dan-row-versioning-pengantar.md) | Umur transaksi baris | DRAFT |
| 16 | Buku 04 | [Bab 04: VACUUM, Bloat, dan Hubungannya dengan MVCC](../06-transaksi-concurrency-dan-mvcc/buku-04-mvcc-dan-snapshot-visibility/bab-04-vacuum-bloat-dan-hubungannya-dengan-mvcc.md) | Dead tuples cleanup | DRAFT |
| 17 | Buku 05 | [Bab 01: Optimistic vs Pessimistic Concurrency Control](../06-transaksi-concurrency-dan-mvcc/buku-05-concurrency-pattern-di-aplikasi/bab-01-optimistic-vs-pessimistic-concurrency-control.md) | OCC vs PCC backend | DRAFT |
| 18 | Buku 05 | [Bab 02: Retry Loop Pada Kegagalan Transaksi Concurrency](../06-transaksi-concurrency-dan-mvcc/buku-05-concurrency-pattern-di-aplikasi/bab-02-retry-loop-pada-kegagalan-transaksi-concurrency.md) | Idempotent API retry | DRAFT |

### C. Level 7: Indexing, Query Planner, dan Performance (Rak 07 — 26 Bab)
| Bab | Buku | Judul Bab | Fokus Bahasan | Status |
| :---: | :--- | :--- | :--- | :---: |
| 01 | Buku 01 | [Bab 01: Apa Itu Index Database?](../07-indexing-query-planner-dan-performance/buku-01-indexing-dasar-untuk-developer/bab-01-apa-itu-index-database.md) | Konsep dasar B-Tree | DRAFT |
| 02 | Buku 01 | [Bab 02: Kapan Index Membantu Query?](../07-indexing-query-planner-dan-performance/buku-01-indexing-dasar-untuk-developer/bab-02-kapan-index-membantu-query.md) | Selektivitas filter | DRAFT |
| 03 | Buku 01 | [Bab 03: Apa Itu EXPLAIN?](../07-indexing-query-planner-dan-performance/buku-01-indexing-dasar-untuk-developer/bab-03-apa-itu-explain.md) | Melihat query plan | DRAFT |
| 04 | Buku 01 | [Bab 04: Membaca Query Plan Dasar](../07-indexing-query-planner-dan-performance/buku-01-indexing-dasar-untuk-developer/bab-04-membaca-query-plan-dasar.md) | Seq Scan vs Index Scan | DRAFT |
| 05 | Buku 02 | [Bab 01: B-Tree Index Lebih Dalam](../07-indexing-query-planner-dan-performance/buku-02-index-types-dan-strategi-index-lanjutan/bab-01-btree-index-lebih-dalam.md) | Traversal & NULL rules | DRAFT |
| 06 | Buku 02 | [Bab 02: Composite Index dan Urutan Kolom](../07-indexing-query-planner-dan-performance/buku-02-index-types-dan-strategi-index-lanjutan/bab-02-composite-index-dan-urutan-kolom.md) | Leading column & skip scan | DRAFT |
| 07 | Buku 02 | [Bab 03: Partial Index](../07-indexing-query-planner-dan-performance/buku-02-index-types-dan-strategi-index-lanjutan/bab-03-partial-index.md) | Indeks bersyarat WHERE | DRAFT |
| 08 | Buku 02 | [Bab 04: Expression Index](../07-indexing-query-planner-dan-performance/buku-02-index-types-dan-strategi-index-lanjutan/bab-04-expression-index.md) | LOWER() / DATE() index | DRAFT |
| 09 | Buku 02 | [Bab 05: Covering Index dan Index-Only Scan](../07-indexing-query-planner-dan-performance/buku-02-index-types-dan-strategi-index-lanjutan/bab-05-covering-index-dan-index-only-scan.md) | INCLUDE & Visibility Map | DRAFT |
| 10 | Buku 03 | [Bab 01: EXPLAIN vs EXPLAIN ANALYZE](../07-indexing-query-planner-dan-performance/buku-03-explain-analyze-dan-query-plan/bab-01-explain-vs-explain-analyze.md) | Diagnostik aman (ROLLBACK) | DRAFT |
| 11 | Buku 03 | [Bab 02: cost, rows, actual time, dan loops](../07-indexing-query-planner-dan-performance/buku-03-explain-analyze-dan-query-plan/bab-02-cost-rows-actual-time-dan-loops.md) | Notasi query plan | DRAFT |
| 12 | Buku 03 | [Bab 03: Buffers dan I/O pada Query Plan](../07-indexing-query-planner-dan-performance/buku-03-explain-analyze-dan-query-plan/bab-03-buffers-dan-io-pada-query-plan.md) | Shared hit/read memori cache | DRAFT |
| 13 | Buku 03 | [Bab 04: Plan Nodes: Seq Scan, Index Scan, dan Bitmap Scan](../07-indexing-query-planner-dan-performance/buku-03-explain-analyze-dan-query-plan/bab-04-plan-nodes-seq-scan-index-scan-bitmap-scan.md) | Analogi visual scan nodes | DRAFT |
| 14 | Buku 03 | [Bab 05: Join, Sort, Hash, dan Materialize Nodes](../07-indexing-query-planner-dan-performance/buku-03-explain-analyze-dan-query-plan/bab-05-join-sort-hash-dan-materialize-nodes.md) | Algoritma join & sort memori | DRAFT |
| 15 | Buku 04 | [Bab 01: Statistics, Selectivity, dan Cardinality](../07-indexing-query-planner-dan-performance/buku-04-planner-statistics-dan-optimizer/bab-01-statistics-selectivity-dan-cardinality.md) | Matematika CBO optimizer | DRAFT |
| 16 | Buku 04 | [Bab 02: ANALYZE dan Statistik Tabel](../07-indexing-query-planner-dan-performance/buku-04-planner-statistics-dan-optimizer/bab-02-analyze-dan-statistik-tabel.md) | Catalog pg_stats & MCV | DRAFT |
| 17 | Buku 04 | [Bab 03: Misestimation dan Query Plan yang Salah](../07-indexing-query-planner-dan-performance/buku-04-planner-statistics-dan-optimizer/bab-03-misestimation-dan-query-plan-yang-salah.md) | Data skew & planner errors | DRAFT |
| 18 | Buku 04 | [Bab 04: Extended Statistics (Pengantar)](../07-indexing-query-planner-dan-performance/buku-04-planner-statistics-dan-optimizer/bab-04-extended-statistics-pengantar.md) | CREATE STATISTICS multi-kolom | DRAFT |
| 19 | Buku 05 | [Bab 01: Workflow Menganalisis Query Lambat](../07-indexing-query-planner-dan-performance/buku-05-query-tuning-workflow-dan-anti-pattern/bab-01-workflow-menganalisis-query-lambat.md) | SOP diagnostik produksi | DRAFT |
| 20 | Buku 05 | [Bab 02: Index Tidak Dipakai dan Penyebabnya](../07-indexing-query-planner-dan-performance/buku-05-query-tuning-workflow-dan-anti-pattern/bab-02-index-tidak-dipakai-dan-penyebabnya.md) | Implicit type casting errors | DRAFT |
| 21 | Buku 05 | [Bab 03: Anti-Pattern: LIKE Leading Wildcard, OR, dan Function di WHERE](../07-indexing-query-planner-dan-performance/buku-05-query-tuning-workflow-dan-anti-pattern/bab-03-anti-pattern-like-leading-wildcard-or-dan-function-di-where.md) | Refaktor kueri SQL buruk | DRAFT |
| 22 | Buku 05 | [Bab 04: Pagination, Sorting, dan LIMIT Performance](../07-indexing-query-planner-dan-performance/buku-05-query-tuning-workflow-dan-anti-pattern/bab-04-pagination-sorting-dan-limit-performance.md) | Offset vs Keyset pagination | DRAFT |
| 23 | Buku 05 | [Bab 05: N+1 Query dan Beban Database](../07-indexing-query-planner-dan-performance/buku-05-query-tuning-workflow-dan-anti-pattern/bab-05-n-plus-one-query-dan-beban-database.md) | N+1 ORM lazy loading | DRAFT |
| 24 | Buku 06 | [Bab 01: Terlalu Banyak Index dan Write Amplification](../07-indexing-query-planner-dan-performance/buku-06-index-maintenance-dan-trade-off-performa/bab-01-terlalu-banyak-index-dan-write-amplification.md) | Write overhead OLTP vs OLAP | DRAFT |
| 25 | Buku 06 | [Bab 02: Index Bloat dan Maintenance (Pengantar)](../07-indexing-query-planner-dan-performance/buku-06-index-maintenance-dan-trade-off-performa/bab-02-index-bloat-dan-maintenance-pengantar.md) | Page split & pgstattuple | DRAFT |
| 26 | Buku 06 | [Bab 03: REINDEX dan Concurrent Index Operation (Pengantar)](../07-indexing-query-planner-dan-performance/buku-06-index-maintenance-dan-trade-off-performa/bab-03-reindex-dan-concurrent-index-operation-pengantar.md) | REINDEX CONCURRENTLY online | DRAFT |

### D. Level 8: DBA, Administration, dan Operational Basics (Rak 08 — 28 Bab)
| Bab | Buku | Judul Bab | Fokus Bahasan | Status |
| :---: | :--- | :--- | :--- | :---: |
| 01 | Buku 01 | [Bab 01: Kenapa Backup Database Penting](../08-administrasi-dba-dan-operasional/buku-01-backup-restore-dan-risiko-data/bab-01-kenapa-backup-database-penting.md) | Risiko data & DR basics | DRAFT |
| 02 | Buku 01 | [Bab 02: Restore dan Latihan Pemulihan Data](../08-administrasi-dba-dan-operasional/buku-01-backup-restore-dan-risiko-data/bab-02-restore-dan-latihan-pemulihan-data.md) | Restore drill introduction | DRAFT |
| 03 | Buku 02 | [Bab 01: psql Sebagai Konsol Administrasi](../08-administrasi-dba-dan-operasional/buku-02-psql-dan-administrasi-harian/bab-01-psql-sebagai-konsol-administrasi.md) | Koneksi client & terminal | DRAFT |
| 04 | Buku 02 | [Bab 02: Meta-Command psql Dasar](../08-administrasi-dba-dan-operasional/buku-02-psql-dan-administrasi-harian/bab-02-meta-command-psql-dasar.md) | Backslash commands psql | DRAFT |
| 05 | Buku 02 | [Bab 03: Inspeksi Database: Schema, Table, dan Index](../08-administrasi-dba-dan-operasional/buku-02-psql-dan-administrasi-harian/bab-03-inspeksi-database-schema-table-dan-index.md) | Visualisasi objek skema | DRAFT |
| 06 | Buku 02 | [Bab 04: Export-Import Ringkas dengan psql](../08-administrasi-dba-dan-operasional/buku-02-psql-dan-administrasi-harian/bab-04-export-import-ringkas-dengan-psql.md) | \copy CSV/TXT client side | DRAFT |
| 07 | Buku 03 | [Bab 01: Role, User, dan Group Role](../08-administrasi-dba-dan-operasional/buku-03-roles-privileges-dan-akses-database/bab-01-role-user-dan-group-role.md) | Otorisasi terpadu | DRAFT |
| 08 | Buku 03 | [Bab 02: GRANT, REVOKE, dan Privilege Dasar](../08-administrasi-dba-dan-operasional/buku-03-roles-privileges-dan-akses-database/bab-02-grant-revoke-dan-privilege-dasar.md) | Pengelolaan hak operasi SQL | DRAFT |
| 09 | Buku 03 | [Bab 03: Schema Privilege dan search_path (Pengantar)](../08-administrasi-dba-dan-operasional/buku-03-roles-privileges-dan-akses-database/bab-03-schema-privilege-dan-search-path-pengantar.md) | Keamanan namespace | DRAFT |
| 10 | Buku 03 | [Bab 04: Prinsip Least Privilege untuk Aplikasi](../08-administrasi-dba-dan-operasional/buku-03-roles-privileges-dan-akses-database/bab-04-prinsip-least-privilege-untuk-aplikasi.md) | Keamanan koneksi backend | DRAFT |
| 11 | Buku 04 | [Bab 01: postgresql.conf dan Konsep Konfigurasi](../08-administrasi-dba-dan-operasional/buku-04-configuration-dan-parameter-penting/bab-01-postgresql-conf-dan-konsep-konfigurasi.md) | Parameter file & pg_reload_conf() | DRAFT |
| 12 | Buku 04 | [Bab 02: Memory Parameter (Pengantar)](../08-administrasi-dba-dan-operasional/buku-04-configuration-dan-parameter-penting/bab-02-memory-parameter-pengantar.md) | Shared buffers & local processes | DRAFT |
| 13 | Buku 04 | [Bab 03: Connection Parameter (Pengantar)](../08-administrasi-dba-dan-operasional/buku-04-configuration-dan-parameter-penting/bab-03-connection-parameter-pengantar.md) | max_connections limit | DRAFT |
| 14 | Buku 04 | [Bab 04: Logging Parameter (Pengantar)](../08-administrasi-dba-dan-operasional/buku-04-configuration-dan-parameter-penting/bab-04-logging-parameter-pengantar.md) | log_min_duration_statement | DRAFT |
| 15 | Buku 05 | [Bab 01: VACUUM dan Dead Tuple](../08-administrasi-dba-dan-operasional/buku-05-vacuum-analyze-autovacuum-dan-bloat/bab-01-vacuum-dan-dead-tuple.md) | MVCC tuples & VACUUM FULL | DRAFT |
| 16 | Buku 05 | [Bab 02: Autovacuum dan Trigger Pembersihan](../08-administrasi-dba-dan-operasional/buku-05-vacuum-analyze-autovacuum-dan-bloat/bab-02-autovacuum-dan-trigger-pembersihan.md) | Rumus pemicu daemon | DRAFT |
| 17 | Buku 05 | [Bab 03: ANALYZE dan Statistik Query Planner](../08-administrasi-dba-dan-operasional/buku-05-vacuum-analyze-autovacuum-dan-bloat/bab-03-analyze-dan-statistik-query-planner.md) | Analyze manual bulk loads | DRAFT |
| 18 | Buku 05 | [Bab 04: Table Bloat dan Index Bloat (Pengantar)](../08-administrasi-dba-dan-operasional/buku-05-vacuum-analyze-autovacuum-dan-bloat/bab-04-table-bloat-dan-index-bloat-pengantar.md) | Page split & I/O penalty | DRAFT |
| 19 | Buku 05 | [Bab 05: Transaction ID Wraparound (Pengantar)](../08-administrasi-dba-dan-operasional/buku-05-vacuum-analyze-autovacuum-dan-bloat/bab-05-transaction-id-wraparound-pengantar.md) | Frozen tuples & emergency | DRAFT |
| 20 | Buku 06 | [Bab 01: Logical Backup dengan pg_dump](../08-administrasi-dba-dan-operasional/buku-06-backup-restore-dan-pitr-pengantar/bab-01-logical-backup-dengan-pg-dump.md) | pg_dumpplain vs custom dump | DRAFT |
| 21 | Buku 06 | [Bab 02: Restore dengan psql dan pg_restore](../08-administrasi-dba-dan-operasional/buku-06-backup-restore-dan-pitr-pengantar/bab-02-restore-dengan-psql-dan-pg-restore.md) | pg_restore -j jobs | DRAFT |
| 22 | Buku 06 | [Bab 03: Physical Backup (Pengantar)](../08-administrasi-dba-dan-operasional/buku-06-backup-restore-dan-pitr-pengantar/bab-03-physical-backup-pengantar.md) | pg_basebackup biner | DRAFT |
| 23 | Buku 06 | [Bab 04: WAL Archiving dan PITR (Pengantar)](../08-administrasi-dba-dan-operasional/buku-06-backup-restore-dan-pitr-pengantar/bab-04-wal-archiving-dan-pitr-pengantar.md) | Point-in-Time Recovery WAL | DRAFT |
| 24 | Buku 06 | [Bab 05: Restore Drill, RPO, dan RTO (Pengantar)](../08-administrasi-dba-dan-operasional/buku-06-backup-restore-dan-pitr-pengantar/bab-05-restore-drill-rpo-dan-rto-pengantar.md) | Disaster recovery metrics | DRAFT |
| 25 | Buku 07 | [Bab 01: pg_stat_activity dan Koneksi Aktif](../08-administrasi-dba-dan-operasional/buku-07-monitoring-operasional-dasar/bab-01-pg-stat-activity-dan-koneksi-aktif.md) | Terminate pg sessions | DRAFT |
| 26 | Buku 07 | [Bab 02: pg_stat_database dan pg_stat_user_tables](../08-administrasi-dba-dan-operasional/buku-07-monitoring-operasional-dasar/bab-02-pg-stat-database-dan-pg-stat-user-tables.md) | Buffer cache ratio & scans | DRAFT |
| 27 | Buku 07 | [Bab 03: Log Query Lambat (Pengantar)](../08-administrasi-dba-dan-operasional/buku-07-monitoring-operasional-dasar/bab-03-log-query-lambat-pengantar.md) | Log parsing & pgBadger intro | DRAFT |
| 28 | Buku 07 | [Bab 04: Disk, CPU, Memory, dan Kapasitas Dasar](../08-administrasi-dba-dan-operasional/buku-07-monitoring-operasional-dasar/bab-04-disk-cpu-memory-dan-kapasitas-dasar.md) | OOM Killer & DB total size | DRAFT |

---

## 5. Urutan Belajar Disarankan
Untuk menjamin pemahaman rekayasa database yang kokoh dan runut, pembaca sangat disarankan mengikuti rute jalan belajar berikut:
1.  **Selesaikan Level 0 sampai 4**: Selesaikan dasar-dasar SQL Core, modeling, dan backend.
2.  **Masuk Level 5 (Advanced Features)**: Pelajari pemrosesan data JSONB, views, dan PL/pgSQL database programming.
3.  **Masuk Level 6 (Transactions & Concurrency)**: Pahami teori terdalam isolation levels, locks, MVCC xmin/xmax, dan concurrency pattern.
4.  **Masuk Level 7 (Query Diagnostics & Performance)**: Kuasai strategi indeks, pembacaan `EXPLAIN ANALYZE` (BUFFERS), misestimation CBO, query tuning workflow, dan concurrent maintenance.
5.  **Masuk Level 8 (Operational DBA Basics)**: Pelajari keamanan otorisasi Role (Least Privilege), postgresql.conf tuning, autovacuum daemon, logical dump-restore, WAL PITR pengantar, monitoring, dan analisis saturasi mesin server.
6.  **Tinjau Level 9 (Roadmap Lanjutan)**: Jadikan Level 9 sebagai bekal wawasan arah pengembangan keahlian arsitektur database berskala besar di masa mendatang.

---

## 6. Peta Hubungan Kros-Materi (Cross-Links)
Kesehatan performa dan keamanan database PostgreSQL bergantung pada keterkaitan erat berbagai sub-komponen berikut:
*   **JSONB & Indexing**: Penggunaan data semi-terstruktur `JSONB` (Level 5) membutuhkan pengindeksan taktis seperti index `GIN/GIST` (Level 5) atau `Expression Index` (Level 7) untuk menghindari Sequential Scan lambat pada data ukuran besar.
*   **MVCC & Operational Maintenance**: Arsitektur internal baris data `xmin/xmax` (Level 6) yang menyisakan dead tuples akibat UPDATE/DELETE harus dibersihkan secara berkala melalui utilitas `VACUUM` dan daemon otomatis `Autovacuum` (Level 8) agar file penyimpanan di disk tidak mengalami keausan (*Table/Index Bloat* - Level 8).
*   **Query Planner & Statistics**: Keputusan pemilihan Query Plan nodes seperti Sequential Scan vs Bitmap Scan (Level 7) diputuskan oleh optimizer CBO berbasis metrik *Selektivitas & Kardinalitas* (Level 7) yang tersimpan di catalog `pg_stats` hasil dari eksekusi perintah `ANALYZE` (Level 8).
*   **DBA Operations & Replication**: Konfigurasi parameter memori/koneksi (Level 8) dan log pengarsipan log transaksi *WAL Archiving* (Level 8) merupakan fondasi utama untuk membangun replikasi streaming dan ketersediaan tinggi (Level 9).

---

## 7. Status & Kebijakan Dokumen
*   **Pranala Rujukan Kebijakan**:
    *   [Kebijakan Kedalaman Bab Expert-Scale](../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../docs/project/materi-expert-scale-gap-matrix.md)
    *   [Standar Penulisan Materi](../../docs/project/materi-writing-standard.md)
