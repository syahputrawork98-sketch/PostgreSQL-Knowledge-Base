# Bab 04: Plan Nodes: Seq Scan, Index Scan, dan Bitmap Scan

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 5 - Level 6 (Advanced Diagnostics)
*   **Buku**: [Buku 03: EXPLAIN ANALYZE dan Query Plan](./README.md)

---

## 1. Ringkasan Bab
Membahas analisis mendalam mengenai tiga metode pemindaian data utama (Sequential Scan, Index Scan, Index Only Scan, dan Bitmap Index/Heap Scan) di query plan.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Mengidentifikasi alasan mengapa Sequential Scan dipilih dibanding Index Scan.
- Memahami cara kerja Bitmap Index Scan dan Bitmap Heap Scan dalam meminimalkan I/O acak.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 03 Bab 03 (Buffers dan I/O pada Query Plan).

---

## 4. Rencana Outline Sub-Bab
- Sequential Scan: Membaca Seluruh Isi Tabel (Kapan Ini Lebih Cepat?)
- Index Scan: Mengikuti Pohon B-Tree dan Mengambil Baris Fisik di Heap
- Index-Only Scan: Kueri Selesai di Indeks (Tanpa Mengunjungi Heap)
- Bitmap Index Scan & Bitmap Heap Scan: Rekonsiliasi Halaman untuk Mengubah I/O Acak Menjadi I/O Sekuensial
- Analogi Visual Masing-Masing Metode Pemindaian

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail teknik indexing, demo visual EXPLAIN ANALYZE, parameter statistik histogram optimizer, dan refaktor anti-pattern SQL untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Buku 02 Bab 05 (Covering Index dan Index-Only Scan).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
