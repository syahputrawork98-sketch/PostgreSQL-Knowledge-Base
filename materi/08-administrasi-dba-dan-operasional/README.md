# Rak 08: Administrasi, DBA, dan Operasional

*   **Status Rak**: **DRAFT / REVIEW**
*   **Target Level**: Level 3 - Level 4 (Developer-facing DBA Basics) / Level 6 - Level 7 (DBA & System Administration)
*   **Peran**: Pintu masuk utama bagi pengembang backend dan DBA junior untuk mengelola operasional database harian secara aman.
*   **Target Pembaca**: Developer backend dan sysadmin junior yang ingin mendalami teknik pencadangan database (*backup*), pemulihan (*restore*), keamanan otorisasi, parameter konfigurasi, MVCC vacuum maintenance, serta monitoring operasional dasar.

---

## 1. Tujuan Rak
Rak ini bertujuan mengajarkan pentingnya keselamatan data operasional database, memahami cara mengoperasikan terminal client `psql` interaktif dan non-interaktif, merancang model otorisasi pengguna (Roles & Privileges) berbasis Least Privilege, mengelola parameter konfigurasi memori/koneksi/logging di `postgresql.conf` secara aman, mendiagnosis table bloat dan autovacuum tuning, melakukan logical backup-restore (pg_dump/pg_restore), mengarsipkan WAL untuk Point-in-Time Recovery (PITR), memantau aktivitas koneksi menggantung (pg_stat_activity), serta menganalisis saturasi resource hardware database server.

---

## 2. Kebijakan Struktur (No Fixed Limit)
Sesuai dengan [Kebijakan Kedalaman Expert-Scale](../../docs/project/book-chapter-depth-policy.md) and [Standardisasi Struktur](../../docs/project/materi-structure-decision.md), jumlah buku dan bab pada rak ini dikembangkan secara organik mengikuti kebutuhan operasional DBA dan tidak dibatasi secara kaku.

---

## 3. Prasyarat Belajar
Pembaca disarankan menyelesaikan **Rak 04: PostgreSQL untuk Aplikasi** terlebih dahulu agar pemahaman siklus hidup skema database sudah solid sebelum melangkah ke administrasi database dasar. Untuk Buku 04 dan Buku 05, pembaca juga sangat direkomendasikan menyelesaikan **Rak 06 (Transaksi, Concurrency, dan MVCC)** dan **Rak 07 (Indexing, Query Planner, dan Performance)** agar pemahaman arsitektur mesin PostgreSQL sudah lengkap.

---

## 4. Daftar Buku Aktif & DRAFT

| No | Buku / Folder | Status | Fokus Materi | Jumlah Bab |
| :---: | :--- | :---: | :--- | :---: |
| 1 | [Buku 01: Backup, Restore, dan Risiko Data](./buku-01-backup-restore-dan-risiko-data/) | **DRAFT** | Pentingnya keselamatan data, pencadangan pg_dump, pemulihan data psql/pg_restore, dan latihan pemulihan data (restore drill). | 2 Bab |
| 2 | [Buku 02: psql dan Administrasi Harian](./buku-02-psql-dan-administrasi-harian/) | **DRAFT** | Program terminal client `psql`, meta-commands psql, inspeksi skema objek database, dan impor-ekspor CSV/TXT ringkas via `\copy`. | 4 Bab |
| 3 | [Buku 03: Roles, Privileges, dan Akses Database](./buku-03-roles-privileges-dan-akses-database/) | **DRAFT** | Konsep otorisasi Role (LOGIN/Group), hak akses objek GRANT/REVOKE, keamanan skema & search_path, dan prinsip Least Privilege aplikasi backend. | 4 Bab |
| 4 | [Buku 04: Configuration dan Parameter Penting](./buku-04-configuration-dan-parameter-penting/) | **DRAFT** | Edit file postgresql.conf & pg_hba.conf, parameter shared_buffers & work_mem, batas max_connections koneksi, dan konfigurasi log kueri lambat. | 4 Bab |
| 5 | [Buku 05: VACUUM, ANALYZE, Autovacuum, dan Bloat](./buku-05-vacuum-analyze-autovacuum-dan-bloat/) | **DRAFT** | MVCC dead tuples, VACUUM biasa vs FULL, autovacuum background daemon tuning, table/index bloat, dan Transaction ID (TXID) Wraparound. | 5 Bab |
| 6 | [Buku 06: Backup, Restore, dan PITR Pengantar](./buku-06-backup-restore-dan-pitr-pengantar/) | **DRAFT** | Disaster Recovery, logical backup pg_dump/pg_restore, basebackup biner fisik, WAL Archiving, Point-in-Time Recovery (PITR), dan RPO/RTO bisnis. | 5 Bab |
| 7 | [Buku 07: Monitoring Operasional Dasar](./buku-07-monitoring-operasional-dasar/) | **DRAFT** | Katalog view pg_stat_activity, Buffer Cache Hit Ratio, pg_stat_user_tables, log analisis kueri lambat, dan saturasi CPU/RAM/Disk. | 4 Bab |

---

## 5. Jalur Belajar yang Disarankan
Pembaca direkomendasikan menyelesaikan Buku 01 secara urut dari Bab 01 s/d Bab 02 untuk membangun pemahaman yang selaras dari urgensi backup hingga praktik simulasi penyelamatan data. Bagi pengembang senior yang ingin masuk ke level menengah-lanjut (Level 6-7), lanjutkan secara berurutan ke Buku 02 untuk konsol psql harian, Buku 03 untuk model keamanan role/privilege, Buku 04 untuk parameter tuning dasar, Buku 05 untuk MVCC vacuum maintenance, Buku 06 untuk basebackup fisik & WAL PITR, dan Buku 07 untuk monitoring operasional real-time.

---

## 6. Output yang Diharapkan
*   Memahami ancaman kehilangan data operasional di lingkungan cloud/local.
*   Mampu menghubungkan terminal local ke database local/remote menggunakan `psql`.
*   Mampu mengamankan skema database menggunakan Roles & Privileges berbasis Least Privilege.
*   Mampu mengatur konfigurasi file `postgresql.conf` dan memicu `pg_reload_conf()`.
*   Mampu menyetel daemon Autovacuum untuk mencegah table bloat dan Transaction ID Wraparound.
*   Mampu mencadangkan database PostgreSQL secara otomatis menggunakan `pg_dump`.
*   Mampu melakukan pemulihan skema dan data menggunakan `pg_restore` dan program client `psql`.
*   Mampu merancang basebackup fisik, WAL Archiving, serta Point-in-Time Recovery (PITR).
*   Mampu memantau koneksi aktif via `pg_stat_activity` dan mendeteksi saturasi CPU/RAM/Disk.

---

## 7. Status & Kebijakan Dokumen
*   **Status Penulisan**: `DRAFT` (Seluruh 28 bab aktif masih berupa draf materi awal).
*   **Status Verifikasi Sumber**: `REVIEW` (Menunggu validasi resmi dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Bab Expert-Scale](../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../docs/project/materi-expert-scale-gap-matrix.md)
    *   [Standar Penulisan Materi](../../docs/project/materi-writing-standard.md)
