# Bab 01: B-Tree Index Lebih Dalam

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 5 - Level 6 (Advanced Diagnostics)
*   **Buku**: [Buku 02: Index Types dan Strategi Index Lanjutan](./README.md)

---

## 1. Ringkasan Bab
Membahas arsitektur internal B-Tree di PostgreSQL (High-Balanced Tree), pencarian range, sorting, serta keunikan penanganan nilai NULL.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami cara kerja traversal node B-Tree dari Root, Branch, hingga Leaf Page.
- Memahami mengapa B-Tree ideal untuk perbandingan kesetaraan, pencarian range, dan pengurutan (ORDER BY).

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 01 Bab 01 (Pengenalan Konsep Indeks).

---

## 4. Rencana Outline Sub-Bab
- Struktur Logis dan Fisik Indeks B-Tree PostgreSQL
- Traversal Node: Leaf Page, Branch Page, dan Root Page
- Bagaimana B-Tree Mendukung Kueri Range (>, <, BETWEEN)
- Pemanfaatan B-Tree untuk Optimasi Pengurutan (ORDER BY) Tanpa Operasi Sort Fisik
- Penanganan Nilai NULL dalam Indeks B-Tree: Aturan dan Kejutan Performa

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail teknik indexing, demo visual EXPLAIN ANALYZE, parameter statistik histogram optimizer, dan refaktor anti-pattern SQL untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 02 (SQL dan Querying).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
