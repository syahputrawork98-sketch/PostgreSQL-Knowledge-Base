# Bab 04: Pagination, Sorting, dan LIMIT Performance

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 5 - Level 6 (Advanced Diagnostics)
*   **Buku**: [Buku 05: Query Tuning Workflow dan Anti-Pattern](./README.md)

---

## 1. Ringkasan Bab
Membahas masalah performa degradasi kueri pengurutan (Sorting) dan pembatasan data (LIMIT) skala besar, serta optimasi kueri pagination.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami mengapa kombinasi ORDER BY ... LIMIT tanpa indeks pendukung memicu operasi pengurutan memori yang lambat (Filesort).
- Menerapkan Composite B-Tree Index yang mencakup filter dan urutan kolom ORDER BY.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 05 Bab 03 (Anti-Pattern: LIKE Leading Wildcard, OR, dan Function di WHERE).

---

## 4. Rencana Outline Sub-Bab
- Bahaya ORDER BY dan LIMIT pada Tabel Jutaan Baris Tanpa Indeks Terurut
- Bagaimana B-Tree Menyediakan Hasil Terurut secara Instan (Index Scan Backward/Forward)
- Merancang Composite Index Khusus: Kombinasi Filter Equal di Depan, Kolom Sorting di Belakang
- Analisis Performa Offset Pagination Degradasi O(N) dan Keunggulan Keyset Pagination O(1)

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail teknik indexing, demo visual EXPLAIN ANALYZE, parameter statistik histogram optimizer, dan refaktor anti-pattern SQL untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 04 Buku 07 (Pagination, Filtering, dan Query Pattern Aplikasi).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
