# Bab 03: Buffers dan I/O pada Query Plan

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 5 - Level 6 (Advanced Diagnostics)
*   **Buku**: [Buku 03: EXPLAIN ANALYZE dan Query Plan](./README.md)

---

## 1. Ringkasan Bab
Membahas analisis aktivitas memori cache buffer menggunakan parameter BUFFERS pada EXPLAIN ANALYZE untuk mengukur efisiensi I/O kueri.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Mampu menjalankan EXPLAIN (ANALYZE, BUFFERS) untuk mengukur jumlah halaman memori yang diakses.
- Memahami perbedaan metrik Shared Hit (Cache), Shared Read (Disk), dan Shared Written.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 03 Bab 02 (cost, rows, actual time, dan loops).

---

## 4. Rencana Outline Sub-Bab
- Mengapa Waktu Eksekusi Saja Menipu (Masalah Cold Cache vs Hot Cache)
- Sintaks Diagnostik: EXPLAIN (ANALYZE, BUFFERS) SELECT ...
- Metrik Memori Cache: Shared Hit (Halaman Ditemukan di RAM Buffer)
- Metrik Disk I/O: Shared Read (Halaman Dibaca dari Disk) dan Shared Written (Halaman Ditulis)
- Taktik Mengurangi Buffers Read untuk Menjaga Performa Skalabilitas Sistem

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail teknik indexing, demo visual EXPLAIN ANALYZE, parameter statistik histogram optimizer, dan refaktor anti-pattern SQL untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 08 DBA & Operasional.

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
