# Bab 03: Dynamic Filtering, Sorting, dan Query Builder Risk

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 3 - Level 4 (Integrasi Aplikasi & Siklus Hidup Skema)
*   **Buku**: [Buku 07: Pagination, Filtering, dan Query Pattern Aplikasi](./README.md)

---

## 1. Ringkasan Bab
Membahas risiko performa dan keamanan saat merancang kueri pencarian dan pengurutan dinamis (dynamic query) menggunakan Query Builder di aplikasi backend.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami risiko pembuatan query plan yang buruk akibat penggabungan parameter filter dinamis.
- Mengidentifikasi bahaya SQL Injection pada sorting dinamis jika nama kolom di-concatenate secara langsung.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 07 Bab 02 (Keyset Pagination Dasar) dan Buku 05 Bab 03 (Validasi Input).

---

## 4. Rencana Outline Sub-Bab
- Tantangan Pencarian Multi-Filter (Dynamic Query Filtering)
- Bagaimana Query Builder Menghasilkan Pernyataan SQL secara Dinamis
- Risiko Keamanan: SQL Injection pada Klausa ORDER BY Dinamis
- Masalah Performa: Pemilihan Index yang Tidak Optimal oleh Query Planner akibat Query Dinamis
- Praktik Terbaik: Whitelisting Parameter Sortir dan Penggunaan Index Komposit

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, demo parameterisasi backend driver, dan analisis risiko transaksi untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 07 Buku 01 (Indexing Dasar untuk Developer).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
