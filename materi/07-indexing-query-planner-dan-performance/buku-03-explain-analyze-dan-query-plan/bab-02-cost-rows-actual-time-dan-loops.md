# Bab 02: cost, rows, actual time, dan loops

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 5 - Level 6 (Advanced Diagnostics)
*   **Buku**: [Buku 03: EXPLAIN ANALYZE dan Query Plan](./README.md)

---

## 1. Ringkasan Bab
Membahas terminologi kunci hasil pembacaan Query Plan, melatih pembaca menafsirkan estimasi biaya (cost), jumlah baris (rows), durasi riil (actual time), serta perulangan (loops).

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Membaca dan membedakan Start-up Cost vs Total Cost pada kueri.
- Membaca actual time dan mendeteksi dampak perkalian perulangan (Loops) pada sub-plan nodes.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 03 Bab 01 (EXPLAIN vs EXPLAIN ANALYZE).

---

## 4. Rencana Outline Sub-Bab
- Membedah Notasi: cost=10.20..150.30 rows=100 width=32
- Start-up Cost vs Total Cost: Apa Maknanya?
- Estimasi Baris (Rows Estimations) vs Jumlah Baris Aktual (Actual Rows)
- Actual Time: Waktu Startup Riil vs Waktu Total Riil (dalam milidetik)
- Loops Parameter: Perkalian Biaya Eksekusi pada Node yang Dipanggil Berulang

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail teknik indexing, demo visual EXPLAIN ANALYZE, parameter statistik histogram optimizer, dan refaktor anti-pattern SQL untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 02 (SQL dan Querying).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
