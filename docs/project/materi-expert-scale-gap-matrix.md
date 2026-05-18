# Gap Matrix Struktur Expert-Scale

Dokumen ini mencatat analisis **Gap Matrix Struktur Expert-Scale** untuk proyek PostgreSQL Living Knowledge Base. Dokumen ini menjadi pedoman utama untuk mengidentifikasi celah materi, merancang pemekaran buku, pemecahan bab, serta menentukan prioritas pengembangan jangka menengah pada Batch 32 s/d Batch 40.

---

## 1. Ringkasan Kondisi Materi Saat Ini

Saat ini, repositori memiliki total **49 Bab DRAFT** aktif yang tersebar di Rak 01 hingga Rak 08, dengan status penulisan **DRAFT** dan status verifikasi sumber **REVIEW** (belum divalidasi langsung terhadap dokumen resmi via peramban).

Distribusi bab materi aktif saat ini adalah sebagai berikut:
- **Rak 01 (Orientasi & Fondasi)**: 8 Bab DRAFT (Buku 01, 03, 04)
- **Rak 02 (SQL & Querying)**: 12 Bab DRAFT (Buku 01, 02, 03, 04)
- **Rak 03 (Desain Data & Schema)**: 9 Bab DRAFT (Buku 01, 02, 03)
- **Rak 04 (PostgreSQL untuk Aplikasi)**: 14 Bab DRAFT (Buku 01, 02, 03)
- **Rak 07 (Indexing & Performance)**: 4 Bab DRAFT (Buku 01)
- **Rak 08 (Admin & DBA)**: 2 Bab DRAFT (Buku 01)
- **Rak Lainnya (00, 05, 06, 09, 10, 11, 12, 13, 14, 15, 16, 17)**: Status **SKELETON / Kosong** (belum ada draf bab tertulis).

---

## 2. Prinsip Struktur Expert-Scale

Sesuai dengan keputusan arsitektural pada Batch 30.2 dan Batch 30.3, pengembangan materi di masa depan wajib mematuhi aturan **No Fixed Limit**:
1. **Tidak Ada Batas Kuantitas**: Tidak ada batas maksimal untuk jumlah rak, buku per rak, bab per buku, atau sub-bab per bab.
2. **Kualitas Ilmiah & Kedalaman Teknis**: Struktur folder dan jumlah materi ditentukan sepenuhnya oleh keluasan domain keilmuan PostgreSQL, bukan berdasarkan durasi tutorial atau keseragaman estetika file.
3. **Pemekaran & Pemecahan Organik**: Sub-bab yang padat atau memiliki kompleksitas tinggi wajib diangkat menjadi bab mandiri. Bab yang membahas topik berskala besar (*deep dive*) berhak dimekarkan menjadi buku tersendiri.
4. **Baseline Aktif**: Penomoran Rak `00-17` saat ini adalah baseline aktif, bukan batas permanen.

---

## 3. Matrix Per Rak (Baseline 00 - 17)

| Rak | Target Level Saat Ini | Kondisi Saat Ini | Gap Utama | Risiko | Rekomendasi | Prioritas Batch |
| :--- | :---: | :--- | :--- | :--- | :--- | :---: |
| **Rak 00**: Index dan Jalur Belajar | Lintas Level | Aktif (3 Berkas Navigasi/Glosarium) | Belum ada peta relasi dinamis untuk materi Level 5-9. Jalur belajar L5-9 masih berupa draft ringkas. | Pembaca kebingungan saat memasuki fase intermediate ke atas. | Buat peta relasi visual terintegrasi (Mermaid) untuk L5-9 dan detail petunjuk belajar per peran. | Batch 32 & 40 |
| **Rak 01**: Orientasi, Sejarah, dan Fondasi PostgreSQL | L0 - L1 | Aktif (8 Bab DRAFT) | Pembahasan sejarah evolusi PostgreSQL dari v1.0 hingga v17 belum terinci. Analogi engine MVCC masih sangat mendasar. | Pembaca kurang memahami alasan filosofis di balik arsitektur internal database. | Tambahkan timeline rilis major penting PostgreSQL dan batas-batas analogi internal engine. | Batch 39 |
| **Rak 02**: SQL dan Querying | L1 - L2 | Aktif (12 Bab DRAFT) | SQL Lanjutan seperti subquery kompleks, CTE (Common Table Expression), Window Functions, dan NULL Semantics komprehensif belum dicakup. | Pengembang menulis query tidak efisien di backend karena mengandalkan kalkulasi sisi aplikasi. | Mekarkan Rak 02 dengan Buku SQL Lanjutan (Advanced Querying) yang berisi CTE, Window Functions, dan Subquery. | Batch 33 |
| **Rak 03**: Desain Data dan Schema | L2 - L3 | Aktif (9 Bab DRAFT) | Tipe data modern (JSONB, Array, Range, Enum, UUID, Timestamp dengan TZ) belum memiliki draf terperinci. Constraint canggih seperti Exclusion Constraints dan Deferrable Constraints belum dicakup. | Kesalahan pemilihan tipe data memicu pemborosan storage, inkonsistensi waktu, dan ketiadaan validasi ketat di sisi DB. | Tulis buku khusus "Tipe Data Lanjutan" dan "Constraint Tingkat Tinggi" di bawah Rak 03. | Batch 34 |
| **Rak 04**: PostgreSQL untuk Aplikasi | L3 - L4 | Aktif (14 Bab DRAFT) | Pola pooling tingkat lanjut (PgBouncer/Pgcat), strategi deployment di container/cloud, serta penanganan transaksi terdistribusi (2PC) belum dibahas. | Backend application mengalami bottleneck koneksi saat memasuki fase deployment skala produksi. | Buat buku mandiri membahas "Arsitektur Koneksi & Scaling Aplikasi" di Rak 04. | Batch 35 |
| **Rak 05**: Fitur Lanjutan | L4 - L5 | SKELETON / Kosong | Materi JSONB Querying, Full-Text Search (tsvector/tsquery), Window Functions, dan Views/Materialized Views belum memiliki draft. | Developer membuat solusi kustom yang tidak efisien di aplikasi untuk pencarian teks atau agregasi laporan. | Aktifkan Rak 05 secara bertahap pada batch menengah. | Batch 36 |
| **Rak 06**: Transaksi & MVCC | L5 - L6 | SKELETON / Kosong | Penjelasan level isolasi transaksi (anomali konkurensi), locking engine (row/table lock, deadlock), dan internal MVCC (xmin/xmax) belum ada. | Ketidakpahaman developer memicu *lost update*, *dirty read*, atau deadlock massal pada transaksi konkuren tinggi. | Aktifkan Rak 06 sebagai prioritas utama materi intermediate-expert. | Batch 37 |
| **Rak 07**: Indexing & Performance | L5 - L6 | Aktif (4 Bab DRAFT) | Index lanjutan (GIN, GiST, BRIN, Hash, SP-GiST), Partial Indexes, Expression Indexes, Covering Indexes (INCLUDE), Multi-column Indexes, cara kerja Autovacuum/Analyze, dan teknik optimalisasi planner. | Indeks dibuat secara membabi buta tanpa pemahaman pola akses query planner, sehingga memboroskan memori cache dan memperlambat kueri tulis. | Mekarkan Buku 01 Index Dasar menjadi Buku Index Lanjutan dan Buku Query Planner Diagnostics. | Batch 38 |
| **Rak 08**: Admin & DBA | L6 - L7 | Aktif (2 Bab DRAFT) | Manajemen memori PostgreSQL (shared_buffers, work_mem, maintenance_work_mem), konfigurasi koneksi (`postgresql.conf`, `pg_hba.conf`), autovacuum tuning, monitoring resource disk/CPU, penanganan bloat pada tabel dan indeks. | Degradasi performa server database akibat salah alokasi parameter memori global dan lokal. | Pemekaran Buku Backup Dasar menjadi Buku Konfigurasi DBA dan Optimasi Storage/Vacuuming. | Batch 39 |
| **Rak 09**: Backup & High Availability | L7 - L8 | SKELETON / Kosong | Replikasi (Physical vs Logical, Sync vs Async), WAL Archiving, Point-in-Time Recovery (PITR), dan arsitektur High Availability (Patroni, repmgr, Pgpool-II). | Database mengalami downtime total tanpa failover otomatis saat server utama mati, dan hilangnya data penting akibat ketiadaan sistem PITR. | Mengaktifkan Rak 09 secara bertahap mulai dari replikasi dasar hingga otomatisasi failover HA. | Batch 39 |
| **Rak 10**: Security & Governance | L6 - L8 | SKELETON / Kosong | RBAC (Role-Based Access Control) granular, Row-Level Security (RLS) canggih, enkripsi data (TDE, pgcrypto), audit log akses (pgAudit), kepatuhan tata kelola data (GDPR/HIPAA di tingkat database). | Kebocoran data sensitif antar pengguna atau penyalahgunaan hak akses superuser oleh pengembang aplikasi. | Mengaktifkan Rak 10 dengan Buku 01 (RBAC & RLS) dan Buku 02 (Database Auditing). | Batch 39 |
| **Rak 11**: Arsitektur Internals | L8 | SKELETON / Kosong | Struktur penyimpanan fisik file disk (data directory, subdirektori base, global, pg_wal), page layout 8KB, alur penulisan WAL (Write-Ahead Logging), background processes. | Ketidakmampuan mendiagnosis masalah disk I/O botteneck yang berasal dari mekanisme internals database. | Merancang Buku Internals secara modular dengan target khusus level pakar (L8-L9). | Batch 40 |
| **Rak 12**: Troubleshooting | L6 - L8 | SKELETON / Kosong | Mendiagnosis kueri lambat, locking conflicts dan deadlock, pemindaian tabel bloat, membaca error log database, penanganan crash recovery. | Masalah produksi berlangsung lama karena tim operasional tidak memiliki kerangka kerja sistematis untuk melacak bottleneck. | Mengaktifkan Rak 12 dengan memetakan Buku Cheatsheet Diagnostik. | Batch 39 |
| **Rak 13**: Studi Kasus | L3 - L8 | SKELETON / Kosong | Studi kasus implementasi dunia nyata, seperti: skema sistem pembayaran/transaksional ledger (double-entry), rancangan audit log dinamis, implementasi chat/realtime database, penanganan geo-location data (PostGIS dasar). | Kurangnya jembatan antara teori terisolasi dengan implementasi sistem skala produksi di dunia nyata. | Penyusunan draf studi kasus e-commerce ledger dan pencatatan audit log terdistribusi. | Batch 35 & 40 |
| **Rak 14**: Interview & Konsultasi | L4 - L9 | SKELETON / Kosong | Soal-soal tes teknis PostgreSQL (dari SQL dasar hingga tingkat lanjut), pertanyaan skenario System Design database, tips arsitektur, dan nasihat konsultasi performa untuk arsitek database. | Kurangnya materi referensi terfokus untuk membantu mempersiapkan wawancara karir tingkat lanjut. | Penyusunan bank soal interaktif bergradasi kesulitan. | Batch 40 |
| **Rak 15**: Referensi Cepat | Lintas Level | SKELETON / Kosong | Lembar contekan (*cheatsheet*) commands psql, sintaks query SQL yang sering terlupa, panduan konfigurasi postgresql.conf esensial, rangkuman parameter vacuum. | DBA dan developer memboroskan waktu mencari sintaks dasar secara berulang. | Penulisan cheatsheet terfokus dalam format ringkas. | Batch 32 |
| **Rak 16**: Version Updates | Lintas Level | SKELETON / Kosong | Ringkasan pembaruan versi penting PostgreSQL 15, 16, dan 17, panduan migrasi major upgrade (pg_upgrade), dan analisis fitur deprecated. | Mengadopsi fitur deprecated atau kehilangan keunggulan performa dari rilis mesin versi terbaru. | Menulis ringkasan rilis major terbaru secara berkala. | Batch 40 |
| **Rak 17**: Berita, Isu, dan Ekosistem PostgreSQL | Lintas Level | SKELETON / Kosong | Kabar terbaru dari ekosistem, isu-isu kritis terkini (seperti bug keamanan CVE), perluasan tool pihak ketiga. | Kehilangan wawasan terhadap perkembangan ekosistem PostgreSQL yang dinamis. | Kerangka berkas diperbarui untuk pemantauan ekosistem dinamis. | Batch 40 |

---

## 4. Matrix Buku yang Perlu Dimekarkan

| Rak | Buku/Area | Status Saat Ini | Perlu Dimekarkan? | Bentuk Pemekaran | Prioritas |
| :--- | :--- | :--- | :---: | :--- | :---: |
| **Rak 02** | `buku-01-dasar-sql-dan-query-select` | 3 Bab DRAFT | **Ya** | Dipisah menjadi Buku Dasar Querying dan Buku SQL Lanjutan (Advanced Querying - CTE, Subquery, Window). | Tinggi |
| **Rak 03** | `buku-01-konsep-table-schema-dan-relasi` | 3 Bab DRAFT | **Ya** | Dipisahkan agar menampung Buku Tipe Data Lanjutan (JSONB, Array, Range, Enum, UUID, TZ) secara mandiri. | Tinggi |
| **Rak 03** | `buku-02-primary-key-foreign-key-dan-constraint` | 3 Bab DRAFT | **Ya** | Dipisahkan agar menampung Buku Constraint Lanjutan (Exclusion, Deferrable, Domain constraints). | Sedang |
| **Rak 04** | `buku-01-postgresql-dalam-backend-application` | 7 Bab DRAFT | **Ya** | Terlalu padat. Dimekarkan menjadi Buku Driver & Pooling Tingkat Lanjut (PgBouncer, pgpool) dan Buku Transaksi Aplikasi Backend. | Tinggi |
| **Rak 07** | `buku-01-indexing-dasar-untuk-developer` | 4 Bab DRAFT | **Ya** | Dimekarkan menjadi Buku Indexing Lanjutan (GIN, GiST, BRIN, partial, expression) dan Buku Analisis Cost & Planner. | Tinggi |
| **Rak 08** | `buku-01-backup-restore-dan-risiko-data` | 2 Bab DRAFT | **Ya** | Dimekarkan menjadi Buku Backup Lanjutan & Replikasi dan Buku Administrasi & DBA (memori tuning, autovacuum). | Tinggi |

---

## 5. Matrix Bab/Sub-bab yang Perlu Dipecah atau Dinaikkan Level

| Area/Bab/Sub-bab | Masalah | Rekomendasi | Naik menjadi Bab/Buku? | Catatan |
| :--- | :--- | :--- | :--- | :--- |
| **Rak 04 Buku 01 Bab 02** (`bab-02-database-driver-dan-connection-pooling.md`) | Sub-bab connection pooling di level aplikasi tercampur dengan konsep PgBouncer tingkat produksi. | Pisahkan connection pooling lokal dengan shared/external connection pooling. | Naik menjadi **Bab Mandiri**: `bab-connection-pooling-skala-produksi.md` (PgBouncer). | Sangat krusial untuk mencegah overload memori postgresql. |
| **Rak 04 Buku 01 Bab 06 & 07** (`bab-06-...` & `bab-07-...`) | Pembahasan transaksi dasar dicampur dengan anomali konkurensi database driver. | Pisahkan transaksi logis aplikasi dengan penanganan isolasi tingkat tinggi. | Naik menjadi **Buku Mandiri**: `buku-transaksi-dan-isolasi-aplikasi` di Rak 04. | Mempermudah developer membedakan isolasi DB dengan logic server. |
| **Rak 07 Buku 01 Bab 03 & 04** (`bab-03-apa-itu-explain.md` & `bab-04-...`) | EXPLAIN dan Query Plan Dasar terlalu padat, belum mencakup representasi visual node tree. | Buat panduan komparatif visual membaca sequential scan, index scan, bitmap index scan. | Naik menjadi **Buku Mandiri**: `buku-query-planner-diagnostics` di Rak 07. | Sangat penting untuk mendiagnosis slow queries secara mandiri. |
| **Rak 08 Buku 01 Bab 01 & 02** | Backup dasar pg_dump digabungkan dengan restore drill yang kompleks. | Pisahkan tutorial backup dasar dengan latihan simulasi bencana database (disaster recovery drill). | Naik menjadi **Bab Mandiri**: `bab-disaster-recovery-drill-simulasi.md`. | Mengasah kesiapan DBA dalam memulihkan database secara real-time. |

---

## 6. Gap Topik PostgreSQL Penting

Berikut adalah peta gap topik PostgreSQL krusial yang saat ini belum memiliki draf materi terperinci dan wajib dimasukkan dalam perencanaan Batch 32 s/d Batch 40:

1. **DML Lengkap & Sintaks SQL Modern**:
   - `INSERT ON CONFLICT` (UPSERT) secara mendalam beserta penanganan key konflik.
   - `TRUNCATE` vs `DELETE` (analisis low-level MVCC page release dan reset sequence).
   - `MERGE` statement (sintaks SQL standar baru yang didukung di PostgreSQL v15+).
2. **NULL Semantics**:
   - Logika 3-valued logic (TRUE, FALSE, UNKNOWN).
   - Perilaku NULL dalam operator `IN`, `EXISTS`, perbandingan, dan agregasi (`COUNT(*)` vs `COUNT(kolom)`).
   - Fungsi penangan NULL: `COALESCE`, `NULLIF`, `GREATEST`, `LEAST`.
3. **Subquery & CTE (Common Table Expression)**:
   - Correlated vs Uncorrelated Subquery beserta dampaknya pada query planner (SubPlan vs InitPlan).
   - CTE materialization (`MATERIALIZED` vs `NOT MATERIALIZED` control pada PostgreSQL v12+).
4. **Recursive CTE**:
   - Sintaks `WITH RECURSIVE` untuk pemrosesan data hierarkis (tree, adjacency list, grafik hubungan organigram organisasi).
5. **Window Functions**:
   - Konsep frame specifier (`ROWS BETWEEN`, `RANGE`, `GROUPS`).
   - Fungsi analisis: `ROW_NUMBER()`, `RANK()`, `DENSE_RANK()`, `LEAD()`, `LAG()`, `NTILE()`.
6. **Views & Materialized Views**:
   - Updatable Views (syarat dan batasan).
   - Materialized Views, siklus hidup refresh (`REFRESH MATERIALIZED VIEW CONCURRENTLY`), dan dampaknya pada storage write lock.
7. **Function, Procedure, & Trigger**:
   - Perbedaan mendasar Function (read-only, transaksional) vs Stored Procedure (kontrol transaksi manual, `COMMIT`/`ROLLBACK` di dalam blok).
   - Trigger (Row-level vs Statement-level, `BEFORE` vs `AFTER` vs `INSTEAD OF`).
8. **JSONB Deep Dive**:
   - JSON vs JSONB (perbedaan storage, parsing, indexing).
   - Operator pencarian JSONB (`->`, `->>`, `#>`, `#>>`, `@>`, `?`).
   - GIN indexing untuk JSONB (`jsonb_ops` vs `jsonb_path_ops`).
9. **Advanced Data Types**:
   - Array (pencarian, index, slicing).
   - Range Types (`tsrange`, `daterange`) beserta exclusion constraints.
   - Enum (kelebihan vs kelemahan penambahan nilai enum baru).
   - UUID (optimalisasi v4 vs v7 sequential UUID untuk indeks B-Tree).
   - Timestamp dengan/tanpa Time Zone (kesalahan umum penanganan zona waktu aplikasi).
10. **Sequence & Identity**:
    - `SERIAL` vs `GENERATED BY DEFAULT AS IDENTITY` (alasan standardisasi SQL baru).
11. **Exclusion & Deferrable Constraints**:
    - `EXCLUDE USING gist` untuk mencegah double booking jadwal/ruangan.
    - `DEFERRABLE INITIALLY DEFERRED` untuk penundaan validasi foreign key pada transaksi bulk-insert.
12. **Partitioning**:
    - Declarative Partitioning (Range, List, Hash).
    - Partition Pruning oleh query planner.
13. **Vacuuming & Storage Engine**:
    - Proses `VACUUM` (menandai dead tuples) vs `VACUUM FULL` (menulis ulang tabel, write lock total).
    - Autovacuum tuning (`autovacuum_vacuum_scale_factor`, `autovacuum_vacuum_cost_limit`).
    - Menghitung bloat tabel dan index.
14. **Roles, Grants, & Row-Level Security (RLS)**:
    - Hak akses granular (`GRANT`, `REVOKE`, Default Privileges).
    - Kebijakan keamanan dinamis menggunakan `ALTER TABLE ... ENABLE ROW LEVEL SECURITY`.
15. **WAL Engine (Write-Ahead Logging)**:
    - Cara kerja checkpoint, background writer, dan WAL writer.
    - Konfigurasi parameter WAL (`max_wal_size`, `min_wal_size`, `checkpoint_completion_target`).
16. **Replication & Recovery**:
    - Streaming Replication (Primary-Standby, synchronous vs asynchronous).
    - Logical Replication (Publish-Subscribe) untuk migrasi data parsial.
    - PITR (Point-in-Time Recovery) dan WAL archiving (`archive_command`).
17. **High Availability (HA)**:
    - Prinsip failover otomatis menggunakan Patroni, repmgr, dan pg_auto_failover.
18. **PgBouncer & Connection Pooling**:
    - Mode pooling: Session, Transaction, Statement pooling.
19. **Monitoring & Observability**:
    - Pemanfaatan view sistem: `pg_stat_activity`, `pg_stat_statements` (analisis query termahal), `pg_stat_user_tables`.
20. **Extensions & Ecosystem**:
    - Cara kerja extension: `pg_stat_statements`, `pg_trgm` (fuzzy search), `postgis` (spasial dasar).
21. **COPY & Data Import/Export**:
    - Bulk data loading menggunakan perintah `COPY` (kecepatan performa dibanding multiline `INSERT`).
22. **Upgrade & Version Migration**:
    - Perencanaan upgrade major version database menggunakan `pg_upgrade --link`.
23. **Interview, System Design, & Real-World Case Studies**:
    - Skenario nyata perancangan arsitektur database e-commerce transaksi tinggi.

---

## 7. Kandidat Domain / Rak Baru (Catatan Eksplorasi)

Sebagai bagian dari prinsip *No Fixed Limit*, daftar di bawah ini dicatat sebagai **kandidat rak baru** untuk dikaji pada fase audit struktur lanjutan:

*   **Rak 18: Observability, Monitoring, & Logging**: Fokus khusus pada view statistik internal, ekspor log ke ELK/Grafana, Prometheus exporter, dan deteksi dini keanehan database.
*   **Rak 19: Extensions & Ekosistem Lanjutan**: Eksplorasi PostGIS (GIS), pg_vector (Vector Search / RAG), citext, dblink, dan extension canggih lainnya.
*   **Rak 20: Data Engineering, Analytics, & FDW**: Membahas logical replication lanjutan, CDC (Change Data Capture) via Debezium, Foreign Data Wrappers (FDW), dan optimalisasi PostgreSQL untuk analytics ringan.
*   **Rak 21: Deployment, Orchestration, & Platform**: Panduan pengoperasian database PostgreSQL di dalam container (Docker), Kubernetes Operator (CloudNativePG), serta platform cloud managed database (RDS, Cloud SQL, Neon).

---

## 8. Prioritas Batch 32 - 40 (Roadmap)

Rencana kerja jangka menengah dirancang secara bertahap untuk mengisi celah materi dan memekarkan struktur:

*   **Batch 32: Sync README Rak/Buku Aktif**
    *   Fokus: Penyelarasan seluruh README/index lokal pada Rak 01 s/d Rak 08 agar mencerminkan daftar rak aktif yang mutakhir, integrasi pranala ke dokumen kebijakan *expert-scale*, dan penulisan lembar referensi cepat (*cheatsheet*) awal pada Rak 15.
*   **Batch 33: Expand Rak 02 SQL Core**
    *   Fokus: Pengisian materi kueri SQL lanjutan (subquery canggih, window functions, CTE, NULL semantics) dan pembagian Buku SQL Dasar menjadi dua bagian.
*   **Batch 34: Expand Rak 03 Schema & Data Modeling**
    *   Fokus: Pengisian draf materi tipe data lanjutan (JSONB, UUID, Array, TZ) dan constraint canggih (Exclusion/Deferrable).
*   **Batch 35: Expand Rak 04 App Integration**
    *   Fokus: Pemekaran struktur Buku Driver/Pooling dan pengisian studi kasus transaksional e-commerce backend serta PgBouncer.
*   **Batch 36: Activate Rak 05 Advanced Features**
    *   Fokus: Pengisian draf materi JSONB Querying mendalam, pencarian teks (Full-Text Search), serta Views dan Materialized Views.
*   **Batch 37: Activate Rak 06 Transactions & MVCC**
    *   Fokus: Penulisan draf materi level isolasi transaksi, locking engine, dan visualisasi diagram internal MVCC.
*   **Batch 38: Expand Rak 07 Performance & Planner**
    *   Fokus: Penulisan materi tipe index lanjutan (GIN/BRIN), optimalisasi autovacuum, dan diagnosis node tree query planner.
*   **Batch 39: Expand Rak 08-10 Ops, Backup, Security**
    *   Fokus: Penulisan draf materi replikasi database, WAL archiving tuning, administrasi DBA memori, serta RBAC/RLS tingkat lanjut.
*   **Batch 40: Docs Sync & Roadmap Level 5-9**
    *   Fokus: Sinkronisasi dokumentasi kontrol besar, verifikasi pranala otomatis, dan penyusunan peta kurikulum jalur belajar Level 5-9 secara mendetail.

---

## 9. Hal yang Belum Boleh Dilakukan (Scope Guard)

Selama pelaksanaan Batch 31 s/d Batch 40, asisten AI wajib mematuhi batasan berikut:
1. **Client/Server HOLD**: Tidak boleh menyentuh berkas aplikasi apa pun di folder `client/` atau `server/`.
2. **Tidak Menulis Materi Baru Langsung**: Dilarang menulis draf materi bab pembelajaran baru di folder `materi/` secara sepihak sebelum batch bersangkutan diaktifkan secara tertulis oleh User.
3. **Tidak Mengubah Status Verifikasi**: Jangan pernah menaikkan status verifikasi draf dari `REVIEW` menjadi `VERIFIED` tanpa proses verifikasi resmi menggunakan peramban/akses web terhadap PostgreSQL Official Documentation (hanya dengan izin tertulis dari User).
4. **Tidak Membuat Rak Fisik Baru**: Jangan langsung membuat direktori rak baru (seperti Rak 18, 19, dst.) di sistem file. Rak tersebut hanya dicatat sebagai kandidat eksplorasi di dokumen ini.

---

## 10. Catatan Status DRAFT dan REVIEW

Seluruh pemetaan gap, usulan bab, dan draf materi baru yang dirancang dalam matriks ini diposisikan dengan status formal **DRAFT** dan status verifikasi sumber **REVIEW**. Seluruh asisten AI wajib mempertahankan status ini secara konsisten di seluruh dokumen manajemen proyek guna menjamin integritas alur verifikasi resmi di masa depan.
