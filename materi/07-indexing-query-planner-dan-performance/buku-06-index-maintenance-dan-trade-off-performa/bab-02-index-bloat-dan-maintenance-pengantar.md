# Bab 02: Index Bloat dan Maintenance (Pengantar)

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 5 - Level 6 (Advanced Diagnostics)
*   **Buku**: [Buku 06: Index Maintenance dan Trade-off Performa](./README.md)

---

## 1. Ringkasan Bab
Membahas masalah keausan internal halaman indeks B-Tree (Index Bloat) akibat operasi UPDATE/DELETE yang intensif di MVCC.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami konsep Index Bloat (ruang kosong halaman indeks yang tidak terpakai kembali).
- Mengenal utilitas dasar untuk memantau bloat indeks sebelum merancang REINDEX.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 06 Bab 01 (Terlalu Banyak Index dan Write Amplification).

---

## 4. Rencana Outline Sub-Bab
- Bagaimana B-Tree Mengalami Page Split dan Akumulasi Halaman Kosong (Bloat)
- Dampak Index Bloat Terhadap Degradasi Kecepatan Index-Only Scan
- Perbedaan Table Bloat vs Index Bloat
- Pengantar Penggunaan Ekstensi pgstattuple untuk Mengukur Akurasi Bloat Indeks
- Hubungan Pengaturan FILLFACTOR pada Tabel/Indeks untuk Meminimalkan Bloat

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail teknik indexing, demo visual EXPLAIN ANALYZE, parameter statistik histogram optimizer, dan refaktor anti-pattern SQL untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 08 DBA & Operasional.

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
