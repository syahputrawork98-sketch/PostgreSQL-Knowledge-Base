# Bab 03: Misestimation dan Query Plan yang Salah

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 5 - Level 6 (Advanced Diagnostics)
*   **Buku**: [Buku 04: Planner Statistics dan Optimizer](./README.md)

---

## 1. Ringkasan Bab
Membahas masalah salah perkiraan (Misestimation) oleh optimizer akibat data yang miring (Data Skew) atau statistik usang, serta dampaknya pada pemilihan rencana kueri yang buruk.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Mengidentifikasi gejala misestimation dengan membandingkan estimasi rows vs actual rows di query plan.
- Mendiagnosis kueri lambat yang disebabkan oleh Seq Scan dipaksakan akibat misestimation.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 04 Bab 02 (ANALYZE dan Statistik Tabel).

---

## 4. Rencana Outline Sub-Bab
- Mengenali Masalah: Selisih Ekstrim Estimasi Rows vs Actual Rows
- Penyebab Utama: Korelasi Kolom yang Tersembunyi (Cross-column Correlation)
- Bahaya Data Skew: Nilai yang Terpusat pada Satu Kunci Tertentu
- Dampak Buruk: Optimizer Memilih Nested Loop Padahal Hash Join Lebih Sesuai
- Taktik Darurat: Memperbarui Statistik Manual via ANALYZE tabel

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail teknik indexing, demo visual EXPLAIN ANALYZE, parameter statistik histogram optimizer, dan refaktor anti-pattern SQL untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Buku 03 Bab 02 (cost, rows, actual time, dan loops).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
