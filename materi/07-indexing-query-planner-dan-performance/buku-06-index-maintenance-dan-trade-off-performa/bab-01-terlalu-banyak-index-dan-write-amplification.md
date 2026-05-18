# Bab 01: Terlalu Banyak Index dan Write Amplification

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 5 - Level 6 (Advanced Diagnostics)
*   **Buku**: [Buku 06: Index Maintenance dan Trade-off Performa](./README.md)

---

## 1. Ringkasan Bab
Membahas trade-off pembuatan indeks, dampak negatif terlalu banyak indeks terhadap perlambatan kueri modifikasi data (INSERT/UPDATE/DELETE).

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami konsep Write Amplification (beban penulisan ganda pada disk fisik).
- Mengevaluasi trade-off seimbang jumlah indeks per tabel untuk sistem OLTP (baca-tulis seimbang) vs OLAP (baca dominan).

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 02 Bab 05 (Covering Index dan Index-Only Scan).

---

## 4. Rencana Outline Sub-Bab
- Hukum Kekekalan Performa: Setiap Indeks Baru Mempercepat Pembacaan, Memperlambat Penulisan
- Memahami Write Amplification: Modifikasi Satu Baris Tabel Memicu Update Fisik di Seluruh Indeks Terkait
- Dampak Terhadap MVCC Tuple Updates dan TOAST Storage
- Desain Indeks OLTP (Minimalkan Indeks redundant) vs Desain Indeks Data Warehouse (Agresif)
- Panduan Mengaudit dan Menemukan Indeks yang Tidak Pernah Dipakai (Unused Indexes) via pg_stat_user_indexes

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail teknik indexing, demo visual EXPLAIN ANALYZE, parameter statistik histogram optimizer, dan refaktor anti-pattern SQL untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 06 Buku 04 (MVCC dan Snapshot).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
