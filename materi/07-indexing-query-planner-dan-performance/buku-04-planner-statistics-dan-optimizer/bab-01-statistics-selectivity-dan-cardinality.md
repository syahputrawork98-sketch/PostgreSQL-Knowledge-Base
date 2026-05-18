# Bab 01: Statistics, Selectivity, dan Cardinality

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 5 - Level 6 (Advanced Diagnostics)
*   **Buku**: [Buku 04: Planner Statistics dan Optimizer](./README.md)

---

## 1. Ringkasan Bab
Membahas matematika dasar di balik keputusan Query Optimizer PostgreSQL, meliputi metrik Selektivitas (Selectivity) dan Kardinalitas (Cardinality).

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami konsep Selektivitas (persentase baris lolos filter) dan Kardinalitas (perkiraan jumlah baris).
- Memahami bagaimana query optimizer menggunakan statistik tersebut untuk memilih algoritma scan/join paling murah.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 03 Bab 05 (Join, Sort, Hash, dan Materialize Nodes).

---

## 4. Rencana Outline Sub-Bab
- Konsep Kerja Query Optimizer: Cost-Based Optimizer (CBO)
- Definisi Kardinalitas (Cardinality) dan Kaitannya dengan Ukuran Hasil Kueri
- Definisi Selektivitas (Selectivity): Probabilitas Kelolosan Baris Data
- Bagaimana PostgreSQL Menghitung Biaya Kueri Menggunakan Rumus Matematis Sederhana
- Katalog Penyimpanan Statistik Utama: pg_class dan pg_statistic

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail teknik indexing, demo visual EXPLAIN ANALYZE, parameter statistik histogram optimizer, dan refaktor anti-pattern SQL untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 03 (Desain Data dan Schema).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
