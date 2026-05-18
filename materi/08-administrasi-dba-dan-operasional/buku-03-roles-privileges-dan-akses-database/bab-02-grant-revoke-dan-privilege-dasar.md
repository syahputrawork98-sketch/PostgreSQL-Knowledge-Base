# Bab 02: GRANT, REVOKE, dan Privilege Dasar

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 3 - Level 4 (Developer-facing DBA Basics)
*   **Buku**: [Buku 03: Roles, Privileges, dan Akses Database](./README.md)

---

## 1. Ringkasan Bab
Membahas instruksi DCL (Data Control Language) di PostgreSQL untuk membagikan dan mencabut hak operasi objek database.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Menguasai penulisan sintaks GRANT dan REVOKE untuk hak akses SELECT, INSERT, UPDATE, dan DELETE.
- Memahami cara memeriksa status hak kepemilikan objek (Object Ownership).

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 03 Bab 01 (Role, User, dan Group Role).

---

## 4. Rencana Outline Sub-Bab
- Konsep Hak Akses Obyek (Object Privileges) di PostgreSQL
- Membagikan Hak Operasi SQL: Sintaks GRANT [privilege] ON [tabel] TO [role]
- Mencabut Hak Operasi SQL: Sintaks REVOKE [privilege] ON [tabel] FROM [role]
- Memahami Peran Object Owner (Pemilik Objek): Hak Istimewa Secara Inheren
- Menampilkan Daftar Privileges Aktif Menggunakan Perintah \z atau \dp di psql

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail psql commands, SQL privileges script, memory configuration limits, autovacuum thresholds, pg_dump shell scripts, dan monitoring queries untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 02 (SQL dan Querying).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
