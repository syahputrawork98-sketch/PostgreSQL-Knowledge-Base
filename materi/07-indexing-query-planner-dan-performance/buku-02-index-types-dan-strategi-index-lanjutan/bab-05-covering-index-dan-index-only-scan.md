# Bab 05: Covering Index dan Index-Only Scan

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 5 - Level 6 (Advanced Diagnostics)
*   **Buku**: [Buku 02: Index Types dan Strategi Index Lanjutan](./README.md)

---

## 1. Ringkasan Bab
Membahas konsep Covering Index menggunakan klausa INCLUDE untuk menampung kolom tambahan non-indeks, demi memicu eksekusi super cepat Index-Only Scan.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami perbedaan fungsional antara kolom pencarian (Key Columns) dan kolom muatan (INCLUDE Columns).
- Menganalisis prasyarat Index-Only Scan dan hubungannya dengan Visibility Map.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 02 Bab 04 (Expression Index).

---

## 4. Rencana Outline Sub-Bab
- Definisi Covering Index: Menjawab Kueri Sepenuhnya dari Halaman Indeks
- Sintaks CREATE INDEX ... INCLUDE (kolom_lain)
- Perbedaan Komparatif: Kolom Indeks Utama vs Kolom INCLUDE (Tanpa Struktur B-Tree)
- Cara Kerja Index-Only Scan: Menghindari Pengambilan Halaman Tabel Fisik (Heap Fetches)
- Peran Visibility Map dan VACUUM dalam Menentukan Keberhasilan Index-Only Scan

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail teknik indexing, demo visual EXPLAIN ANALYZE, parameter statistik histogram optimizer, dan refaktor anti-pattern SQL untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 06 Buku 04 Bab 04 (VACUUM, Bloat, dan Hubungannya dengan MVCC).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
