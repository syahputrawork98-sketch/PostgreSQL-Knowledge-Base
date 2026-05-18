# Bab 04: Prinsip Least Privilege untuk Aplikasi

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 3 - Level 4 (Developer-facing DBA Basics)
*   **Buku**: [Buku 03: Roles, Privileges, dan Akses Database](./README.md)

---

## 1. Ringkasan Bab
Membahas arsitektur keamanan akses database dengan membatasi koneksi backend aplikasi hanya ke hak akses seminimal mungkin.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami bahaya menggunakan akun Superuser (postgres) untuk koneksi operasional aplikasi backend.
- Merancang skenario pembuatan akun koneksi khusus aplikasi dengan hak akses minimal yang aman.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 03 Bab 03 (Schema Privilege dan search_path (Pengantar)).

---

## 4. Rencana Outline Sub-Bab
- Prinsip Keamanan Least Privilege (Hak Istimewa Terkecil)
- Mengapa Menggunakan Akun postgres untuk Backend Aplikasi Adalah Blunder Keamanan Fatal
- Langkah-Langkah Pembuatan Akun Aplikasi: Hanya SELECT/INSERT/UPDATE pada Tabel yang Dibutuhkan
- Memisahkan Akun Migrasi Skema (DDL - Hak Tinggi) vs Akun Runtime Aplikasi (DML - Hak Rendah)
- Checklist Keamanan Akses Database untuk Standard Produksi Awal

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail psql commands, SQL privileges script, memory configuration limits, autovacuum thresholds, pg_dump shell scripts, dan monitoring queries untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 04 Buku 01 (PostgreSQL dalam Aplikasi Backend).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
