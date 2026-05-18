# Bab 02: Restore dengan psql dan pg_restore

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 3 - Level 4 (Developer-facing DBA Basics) / Level 6 - Level 7 (DBA & System Administration)
*   **Buku**: [Buku 06: Backup, Restore, dan PITR Pengantar](./README.md)

---

## 1. Ringkasan Bab
Membahas taktik pemulihan data logis dari file hasil cadangan ke dalam server PostgreSQL aktif.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Mampu memulihkan file cadangan teks plain menggunakan program `psql`.
- Mampu memulihkan file cadangan format custom/directory menggunakan utility multi-threaded `pg_restore`.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 06 Bab 01 (Logical Backup dengan pg_dump).

---

## 4. Rencana Outline Sub-Bab
- Alur Kerja Pemulihan Data: Kapan Menggunakan psql vs pg_restore
- Memulihkan Format Plain Text SQL: `psql -U [username] -d [dbname] -f [file.sql]`
- Memulihkan Format Custom Archive: `pg_restore -U [username] -d [dbname] [file.dump]`
- Penyaringan Pemulihan: Memulihkan Tabel Tertentu Saja Menggunakan Opsi -t di pg_restore
- Optimasi Kecepatan Restore Menggunakan Multi-threading Jobs (-j)

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail psql commands, SQL privileges script, memory configuration limits, autovacuum thresholds, pg_dump shell scripts, dan monitoring queries untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Buku 01 (Backup, Restore, dan Risiko Data).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
