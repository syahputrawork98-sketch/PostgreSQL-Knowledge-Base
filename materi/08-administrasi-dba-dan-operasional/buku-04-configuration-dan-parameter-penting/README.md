# Buku 04: Configuration dan Parameter Penting

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 08: Administrasi, DBA, dan Operasional](../README.md)
*   **Target Level**: Level 3 - Level 4 (Developer-facing DBA Basics)
*   **Tipe Materi**: Administrasi Database, Keamanan Otorisasi, Tuning Config, MVCC Maintenance, & Monitoring

---

## 1. Tujuan Buku
Buku ini mengulas struktur manajemen konfigurasi server PostgreSQL, lokasi dan aturan pengeditan berkas `postgresql.conf` dan `pg_hba.conf`, parameter memori krusial (shared_buffers, work_mem), parameter koneksi, serta tata kelola logging log kueri lambat.

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu mengoperasikan terminal client `psql` interaktif dan non-interaktif, merancang model otorisasi pengguna (Roles & Privileges) berbasis Least Privilege, mengelola parameter konfigurasi memori/koneksi/logging di `postgresql.conf`, mendiagnosis table bloat dan autovacuum tuning, melakukan logical backup-restore (pg_dump/pg_restore), mengarsipkan WAL untuk Point-in-Time Recovery (PITR), memantau aktivitas koneksi menggantung (pg_stat_activity), serta menganalisis saturasi resource hardware database server.

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dalam buku ini dikembangkan secara organik mengikuti kedalaman administrasi dan kebutuhan operasional DBA PostgreSQL, serta tidak dibatasi secara kaku.

---

## 4. Daftar Bab Aktif
| 1 | [Bab 01: postgresql.conf dan Konsep Konfigurasi](bab-01-postgresql-conf-dan-konsep-konfigurasi.md) | **DRAFT** | DBA | Membahas pengenalan lokasi file konfigurasi utama, aturan perubahan nilai, serta cara memicu reloading konfigurasi database. |
| 2 | [Bab 02: Memory Parameter (Pengantar)](bab-02-memory-parameter-pengantar.md) | **DRAFT** | DBA | Membahas alokasi memori di PostgreSQL dan parameter krusial seperti shared_buffers, work_mem, maintenance_work_mem, dan effective_cache_size. |
| 3 | [Bab 03: Connection Parameter (Pengantar)](bab-03-connection-parameter-pengantar.md) | **DRAFT** | DBA | Membahas manajemen koneksi masuk, batas koneksi maksimum (max_connections), serta kaitannya dengan penanganan memori server. |
| 4 | [Bab 04: Logging Parameter (Pengantar)](bab-04-logging-parameter-pengantar.md) | **DRAFT** | DBA | Membahas pengelolaan log database untuk melacak kesalahan kueri, mencatat kueri lambat, serta parameter logging terpopuler. |

---

## 5. Urutan Belajar
Selesaikan Buku 02 dan Buku 03 terlebih dahulu untuk menguasai konsol administrasi psql dan keamanan otorisasi akses. Lanjutkan ke Buku 04 untuk parameter konfigurasi, Buku 05 untuk MVCC vacuum maintenance, Buku 06 untuk backup/restore bencana, dan Buku 07 untuk monitoring operasional dasar database.

---

## 6. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
