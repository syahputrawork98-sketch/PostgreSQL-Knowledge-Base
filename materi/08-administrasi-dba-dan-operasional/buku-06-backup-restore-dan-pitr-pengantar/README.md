# Buku 06: Backup, Restore, dan PITR Pengantar

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 08: Administrasi, DBA, dan Operasional](../README.md)
*   **Target Level**: Level 3 - Level 4 (Developer-facing DBA Basics) / Level 6 - Level 7 (DBA & System Administration)
*   **Tipe Materi**: Administrasi Database, Keamanan Otorisasi, Tuning Config, MVCC Maintenance, & Monitoring

---

## 1. Tujuan Buku
Buku ini mengulas strategi pemulihan bencana (Disaster Recovery), mencakup logical backup via `pg_dump` dan `pg_dumpall`, pemulihan skema dan data via `pg_restore`, pengenalan physical backup, konsep pengarsipan berkas WAL (WAL Archiving), serta teori Point-in-Time Recovery (PITR) untuk memulihkan keadaan database ke milidetik tertentu.

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu mengoperasikan terminal client `psql` interaktif dan non-interaktif, merancang model otorisasi pengguna (Roles & Privileges) berbasis Least Privilege, mengelola parameter konfigurasi memori/koneksi/logging di `postgresql.conf`, mendiagnosis table bloat dan autovacuum tuning, melakukan logical backup-restore (pg_dump/pg_restore), mengarsipkan WAL untuk Point-in-Time Recovery (PITR), memantau aktivitas koneksi menggantung (pg_stat_activity), serta menganalisis saturasi resource hardware database server.

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dalam buku ini dikembangkan secara organik mengikuti kedalaman administrasi dan kebutuhan operasional DBA PostgreSQL, serta tidak dibatasi secara kaku.

---

## 4. Daftar Bab Aktif
| 1 | [Bab 01: Logical Backup dengan pg_dump](bab-01-logical-backup-dengan-pg-dump.md) | **DRAFT** | DBA | Membahas taktik pencadangan logis menggunakan program standard `pg_dump` dan `pg_dumpall` untuk skala database kecil-menengah. |
| 2 | [Bab 02: Restore dengan psql dan pg_restore](bab-02-restore-dengan-psql-dan-pg-restore.md) | **DRAFT** | DBA | Membahas taktik pemulihan data logis dari file hasil cadangan ke dalam server PostgreSQL aktif. |
| 3 | [Bab 03: Physical Backup (Pengantar)](bab-03-physical-backup-pengantar.md) | **DRAFT** | DBA | Membahas pengenalan konsep Physical Backup (pencadangan biner fisik direktori data) untuk database skala besar multi-terabyte. |
| 4 | [Bab 04: WAL Archiving dan PITR (Pengantar)](bab-04-wal-archiving-dan-pitr-pengantar.md) | **DRAFT** | DBA | Membahas pengarsipan log transaksi (WAL Archiving) serta konsep Point-in-Time Recovery (PITR) untuk pemulihan waktu spesifik. |
| 5 | [Bab 05: Restore Drill, RPO, dan RTO (Pengantar)](bab-05-restore-drill-rpo-dan-rto-pengantar.md) | **DRAFT** | DBA | Membahas aspek bisnis dan kebijakan pemulihan bencana (Disaster Recovery), metrik RPO & RTO, serta pentingnya uji coba pemulihan berkala. |

---

## 5. Urutan Belajar
Selesaikan Buku 02 dan Buku 03 terlebih dahulu untuk menguasai konsol administrasi psql dan keamanan otorisasi akses. Lanjutkan ke Buku 04 untuk parameter konfigurasi, Buku 05 untuk MVCC vacuum maintenance, Buku 06 untuk backup/restore bencana, dan Buku 07 untuk monitoring operasional dasar database.

---

## 6. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
