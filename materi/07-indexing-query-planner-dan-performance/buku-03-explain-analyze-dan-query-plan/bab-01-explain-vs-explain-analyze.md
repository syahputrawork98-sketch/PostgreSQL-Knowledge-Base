# Bab 01: EXPLAIN vs EXPLAIN ANALYZE

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 5 - Level 6 (Advanced Diagnostics)
*   **Buku**: [Buku 03: EXPLAIN ANALYZE dan Query Plan](./README.md)

---

## 1. Ringkasan Bab
Membahas perbedaan krusial antara perintah EXPLAIN (estimasi perencanaan) dan EXPLAIN ANALYZE (eksekusi kueri riil) untuk diagnosis performa database.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Membedakan fungsionalitas EXPLAIN (aman untuk kueri tulis) vs EXPLAIN ANALYZE (mengeksekusi kueri riil).
- Mampu membaca dan menjalankan perintah EXPLAIN ANALYZE dengan aman menggunakan ROLLBACK.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 01 Bab 03 (Perintah EXPLAIN).

---

## 4. Rencana Outline Sub-Bab
- EXPLAIN: Melihat Rencana Eksekusi Estimasi Optimizer Tanpa Eksekusi Riil
- EXPLAIN ANALYZE: Menjalankan Kueri Riil dan Mengukur Waktu Eksekusi Sebenarnya
- Penting: Menggunakan Blok Transaksi ROLLBACK Saat Melakukan EXPLAIN ANALYZE pada Kueri DML (INSERT/UPDATE/DELETE)
- Klausa Opsi Tambahan: VERBOSE, COSTS, dan TIMING
- Keamanan Diagnostik di Produksi: Menilai Risiko Overhead Eksekusi ANALYZE

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail teknik indexing, demo visual EXPLAIN ANALYZE, parameter statistik histogram optimizer, dan refaktor anti-pattern SQL untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 04 Buku 01 (PostgreSQL dalam Aplikasi Backend).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
