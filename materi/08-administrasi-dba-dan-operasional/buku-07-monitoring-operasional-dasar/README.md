# Buku 07: Monitoring Operasional Dasar

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 08: Administrasi, DBA, dan Operasional](../README.md)
*   **Target Level**: Level 3 - Level 4 (Developer-facing DBA Basics) / Level 6 - Level 7 (DBA & System Administration)
*   **Tipe Materi**: Administrasi Database, Keamanan Otorisasi, Tuning Config, MVCC Maintenance, & Monitoring

---

## 1. Tujuan Buku
Buku ini membahas dasar-dasar pemantauan kesehatan PostgreSQL secara aktif, memanfaatkan catalog view internal (pg_stat_activity, pg_stat_database, pg_stat_user_tables), melacak kueri bermasalah, serta memantau kesehatan kapasitas infrastruktur dasar database server.

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu mengoperasikan terminal client `psql` interaktif dan non-interaktif, merancang model otorisasi pengguna (Roles & Privileges) berbasis Least Privilege, mengelola parameter konfigurasi memori/koneksi/logging di `postgresql.conf`, mendiagnosis table bloat dan autovacuum tuning, melakukan logical backup-restore (pg_dump/pg_restore), mengarsipkan WAL untuk Point-in-Time Recovery (PITR), memantau aktivitas koneksi menggantung (pg_stat_activity), serta menganalisis saturasi resource hardware database server.

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dalam buku ini dikembangkan secara organik mengikuti kedalaman administrasi dan kebutuhan operasional DBA PostgreSQL, serta tidak dibatasi secara kaku.

---

## 4. Daftar Bab Aktif
| 1 | [Bab 01: pg_stat_activity dan Koneksi Aktif](bab-01-pg-stat-activity-dan-koneksi-aktif.md) | **DRAFT** | DBA | Membahas catalog view `pg_stat_activity` untuk mengidentifikasi status koneksi klien, kueri aktif, serta sesi yang memblokir transaksi lain. |
| 2 | [Bab 02: pg_stat_database dan pg_stat_user_tables](bab-02-pg-stat-database-dan-pg-stat-user-tables.md) | **DRAFT** | DBA | Membahas metrik statistik tingkat database (pg_stat_database) dan tabel (pg_stat_user_tables) untuk memantau rasio hit cache memori serta intensitas kueri baca-tulis. |
| 3 | [Bab 03: Log Query Lambat (Pengantar)](bab-03-log-query-lambat-pengantar.md) | **DRAFT** | DBA | Membahas teknik ekstraksi and pembacaan kueri bermasalah dari log sistem menggunakan file log teks PostgreSQL. |
| 4 | [Bab 04: Disk, CPU, Memory, dan Kapasitas Dasar](bab-04-disk-cpu-memory-dan-kapasitas-dasar.md) | **DRAFT** | DBA | Membahas pemantauan resource hardware mesin server database (Disk I/O, CPU Usage, RAM Memory) serta tanda-tanda kelebihan beban. |

---

## 5. Urutan Belajar
Selesaikan Buku 02 dan Buku 03 terlebih dahulu untuk menguasai konsol administrasi psql dan keamanan otorisasi akses. Lanjutkan ke Buku 04 untuk parameter konfigurasi, Buku 05 untuk MVCC vacuum maintenance, Buku 06 untuk backup/restore bencana, dan Buku 07 untuk monitoring operasional dasar database.

---

## 6. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
