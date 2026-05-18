# Buku 02: psql dan Administrasi Harian

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 08: Administrasi, DBA, dan Operasional](../README.md)
*   **Target Level**: Level 3 - Level 4 (Developer-facing DBA Basics)
*   **Tipe Materi**: Administrasi Database, Keamanan Otorisasi, Tuning Config, MVCC Maintenance, & Monitoring

---

## 1. Tujuan Buku
Buku ini membahas penggunaan program client terminal native `psql` sebagai konsol utama administrasi database, mendalami meta-commands psql terpopuler, melakukan inspeksi skema objek database, serta melakukan operasi import-export data ringkas.

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu mengoperasikan terminal client `psql` interaktif dan non-interaktif, merancang model otorisasi pengguna (Roles & Privileges) berbasis Least Privilege, mengelola parameter konfigurasi memori/koneksi/logging di `postgresql.conf`, mendiagnosis table bloat dan autovacuum tuning, melakukan logical backup-restore (pg_dump/pg_restore), mengarsipkan WAL untuk Point-in-Time Recovery (PITR), memantau aktivitas koneksi menggantung (pg_stat_activity), serta menganalisis saturasi resource hardware database server.

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dalam buku ini dikembangkan secara organik mengikuti kedalaman administrasi dan kebutuhan operasional DBA PostgreSQL, serta tidak dibatasi secara kaku.

---

## 4. Daftar Bab Aktif
| 1 | [Bab 01: psql Sebagai Konsol Administrasi](bab-01-psql-sebagai-konsol-administrasi.md) | **DRAFT** | DBA | Membahas pemanggilan program client terminal native `psql`, parameter koneksi utama, serta mode interaktif vs non-interaktif. |
| 2 | [Bab 02: Meta-Command psql Dasar](bab-02-meta-command-psql-dasar.md) | **DRAFT** | DBA | Membahas sekumpulan meta-commands internal psql (perintah berawalan backslash) untuk navigasi dan pengelolaan interaktif cepat. |
| 3 | [Bab 03: Inspeksi Database: Schema, Table, dan Index](bab-03-inspeksi-database-schema-table-dan-index.md) | **DRAFT** | DBA | Membahas taktik inspeksi objek database secara visual menggunakan meta-commands pencarian detail. |
| 4 | [Bab 04: Export-Import Ringkas dengan psql](bab-04-export-import-ringkas-dengan-psql.md) | **DRAFT** | DBA | Membahas pengoperasian perintah `\copy` untuk memindahkan data tabular antara database PostgreSQL dan sistem file lokal pengembang. |

---

## 5. Urutan Belajar
Selesaikan Buku 02 dan Buku 03 terlebih dahulu untuk menguasai konsol administrasi psql dan keamanan otorisasi akses. Lanjutkan ke Buku 04 untuk parameter konfigurasi, Buku 05 untuk MVCC vacuum maintenance, Buku 06 untuk backup/restore bencana, dan Buku 07 untuk monitoring operasional dasar database.

---

## 6. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
