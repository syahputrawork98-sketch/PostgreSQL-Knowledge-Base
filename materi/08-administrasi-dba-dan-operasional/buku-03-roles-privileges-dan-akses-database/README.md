# Buku 03: Roles, Privileges, dan Akses Database

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 08: Administrasi, DBA, dan Operasional](../README.md)
*   **Target Level**: Level 3 - Level 4 (Developer-facing DBA Basics)
*   **Tipe Materi**: Administrasi Database, Keamanan Otorisasi, Tuning Config, MVCC Maintenance, & Monitoring

---

## 1. Tujuan Buku
Buku ini mengulas sistem keamanan otorisasi di PostgreSQL, meliputi konsep Role terpadu (User, Group, dan Login Roles), tata kelola hak akses (GRANT/REVOKE), keamanan skema data dan search_path, serta implementasi taktis prinsip hak akses minimal (Least Privilege) untuk koneksi backend aplikasi.

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu mengoperasikan terminal client `psql` interaktif dan non-interaktif, merancang model otorisasi pengguna (Roles & Privileges) berbasis Least Privilege, mengelola parameter konfigurasi memori/koneksi/logging di `postgresql.conf`, mendiagnosis table bloat dan autovacuum tuning, melakukan logical backup-restore (pg_dump/pg_restore), mengarsipkan WAL untuk Point-in-Time Recovery (PITR), memantau aktivitas koneksi menggantung (pg_stat_activity), serta menganalisis saturasi resource hardware database server.

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dalam buku ini dikembangkan secara organik mengikuti kedalaman administrasi dan kebutuhan operasional DBA PostgreSQL, serta tidak dibatasi secara kaku.

---

## 4. Daftar Bab Aktif
| 1 | [Bab 01: Role, User, dan Group Role](bab-01-role-user-dan-group-role.md) | **DRAFT** | DBA | Membahas model otorisasi PostgreSQL yang menyatukan konsep User dan Group menjadi satu entitas bernama Role. |
| 2 | [Bab 02: GRANT, REVOKE, dan Privilege Dasar](bab-02-grant-revoke-dan-privilege-dasar.md) | **DRAFT** | DBA | Membahas instruksi DCL (Data Control Language) di PostgreSQL untuk membagikan dan mencabut hak operasi objek database. |
| 3 | [Bab 03: Schema Privilege dan search_path (Pengantar)](bab-03-schema-privilege-dan-search-path-pengantar.md) | **DRAFT** | DBA | Membahas hak akses di level Namespace (Schema) serta cara kerja urutan resolusi nama tabel via search_path. |
| 4 | [Bab 04: Prinsip Least Privilege untuk Aplikasi](bab-04-prinsip-least-privilege-untuk-aplikasi.md) | **DRAFT** | DBA | Membahas arsitektur keamanan akses database dengan membatasi koneksi backend aplikasi hanya ke hak akses seminimal mungkin. |

---

## 5. Urutan Belajar
Selesaikan Buku 02 dan Buku 03 terlebih dahulu untuk menguasai konsol administrasi psql dan keamanan otorisasi akses. Lanjutkan ke Buku 04 untuk parameter konfigurasi, Buku 05 untuk MVCC vacuum maintenance, Buku 06 untuk backup/restore bencana, dan Buku 07 untuk monitoring operasional dasar database.

---

## 6. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
