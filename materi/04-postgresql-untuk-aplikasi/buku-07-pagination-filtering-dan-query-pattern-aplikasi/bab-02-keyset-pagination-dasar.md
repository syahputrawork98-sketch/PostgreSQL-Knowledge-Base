# Bab 02: Keyset Pagination Dasar

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 3 - Level 4 (Integrasi Aplikasi & Siklus Hidup Skema)
*   **Buku**: [Buku 07: Pagination, Filtering, dan Query Pattern Aplikasi](./README.md)

---

## 1. Ringkasan Bab
Membahas teknik Keyset Pagination (atau Cursor-based Pagination) sebagai solusi performa pencarian halaman dalam yang konstan O(1) menggunakan filter nilai kolom unik.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Menguasai perancangan kueri Keyset Pagination menggunakan filter WHERE berdasarkan ID/kolom terurut unik.
- Membandingkan keuntungan performa Keyset Pagination dibanding Offset Pagination.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 07 Bab 01 (Offset Pagination dan Risikonya).

---

## 4. Rencana Outline Sub-Bab
- Konsep Dasar Keyset Pagination (Cursor-based)
- Merancang Kueri Keyset Pagination dengan Filter WHERE Berdasarkan Kolom Unik Terurut
- Mengapa Keyset Pagination Memiliki Kompleksitas Waktu Konstan O(1)
- Keterbatasan Keyset Pagination: Tidak Mendukung Lompat Halaman Acak (Random Page Access)
- Panduan Implementasi Keyset Pagination pada API Backend modern

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, demo parameterisasi backend driver, dan analisis risiko transaksi untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 07 Buku 01 (Indexing Dasar untuk Developer).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
