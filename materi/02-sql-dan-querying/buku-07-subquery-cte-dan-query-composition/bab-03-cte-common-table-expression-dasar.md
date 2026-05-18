# Bab 03: CTE (Common Table Expression) Dasar

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 2 (Menengah)
*   **Buku**: [Buku 07: Subquery, CTE, dan Query Composition](./README.md)

---

## 1. Ringkasan Bab
Membahas teknik penataan kueri SQL agar bersih, modular, dan mudah dibaca menggunakan klausa WITH (Common Table Expression / CTE) sebagai tabel temporer berlingkup kueri.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Menguasai penulisan sintaks WITH untuk membuat CTE standar.
- Memahami keuntungan CTE dalam merapikan kueri bersarang (subquery) yang bertingkat-tingkat.
- Membuat kueri modular dengan multi-CTE berantai.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 07 Bab 02 (Correlated Subquery).

---

## 4. Rencana Outline Sub-Bab
- Masalah Keterbacaan "Query Spaghetti" pada Subquery Kompleks
- Sintaks Dasar WITH [NamaCTE] AS (...)
- Menggunakan CTE untuk Menyederhanakan Derived Tables
- Multi-CTE Berantai (Menghubungkan Hasil CTE ke CTE Berikutnya)
- Aspek Kinerja CTE di PostgreSQL (Materialized vs Not Materialized)

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, kueri SQL demo, analogi visual, dan latihan kecil untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 04 Buku 01 Bab 04 (Query untuk List dan Detail Data Aplikasi).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
