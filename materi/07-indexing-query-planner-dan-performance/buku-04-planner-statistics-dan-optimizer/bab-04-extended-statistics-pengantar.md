# Bab 04: Extended Statistics (Pengantar)

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 5 - Level 6 (Advanced Diagnostics)
*   **Buku**: [Buku 04: Planner Statistics dan Optimizer](./README.md)

---

## 1. Ringkasan Bab
Pengenalan fitur Extended Statistics menggunakan perintah CREATE STATISTICS untuk membantu optimizer memahami hubungan korelasi antar-kolom.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami mengapa optimizer default mengasumsikan kolom saling independen (independensi kolom).
- Mampu membuat extended statistics menggunakan CREATE STATISTICS untuk mendeteksi dependensi fungsional.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 04 Bab 03 (Misestimation dan Query Plan yang Salah).

---

## 4. Rencana Outline Sub-Bab
- Asumsi Independensi Kolom Optimizer dan Batasannya (Contoh: Merk Produk vs Kategori)
- Apa Itu Extended Statistics (Statistik Diperluas) di PostgreSQL
- Sintaks CREATE STATISTICS ... ON columns FROM table
- Tipe Statistik Tambahan: dependency (dependensi fungsional) dan ndistinct (multi-kolom)
- Mengukur Keberhasilan Extended Statistics pada Perbaikan Akurasi Query Plan

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail teknik indexing, demo visual EXPLAIN ANALYZE, parameter statistik histogram optimizer, dan refaktor anti-pattern SQL untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 03 (Desain Data dan Schema).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
