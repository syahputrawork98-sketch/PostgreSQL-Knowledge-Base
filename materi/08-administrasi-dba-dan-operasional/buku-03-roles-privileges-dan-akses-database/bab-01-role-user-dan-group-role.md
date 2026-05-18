# Bab 01: Role, User, dan Group Role

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 3 - Level 4 (Developer-facing DBA Basics)
*   **Buku**: [Buku 03: Roles, Privileges, dan Akses Database](./README.md)

---

## 1. Ringkasan Bab
Membahas model otorisasi PostgreSQL yang menyatukan konsep User dan Group menjadi satu entitas bernama Role.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami konsep dasar Role di PostgreSQL.
- Mampu membuat Role dengan atribut LOGIN (User) dan Role tanpa LOGIN (Group) secara terstruktur.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 02 (psql dan Administrasi Harian).

---

## 4. Rencana Outline Sub-Bab
- Filosofi PostgreSQL: Penyatuan Konsep User dan Group Menjadi Sistem Role Terpadu
- Sintaks Pembuatan Role: CREATE ROLE dan CREATE USER
- Memahami Atribut Penting Role: LOGIN, SUPERUSER, CREATEDB, CREATEROLE, dan BYPASSRLS
- Mengelola Group Roles dan Hak Waris Keanggotaan (GRANT group_role TO user_role)
- Latihan Praktis: Membuat Group Read-Only dan Group Read-Write

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail psql commands, SQL privileges script, memory configuration limits, autovacuum thresholds, pg_dump shell scripts, dan monitoring queries untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 03 Buku 01 (Tabel, Baris, dan Kolom).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
