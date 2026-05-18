# Bab 04: Expression Index

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 5 - Level 6 (Advanced Diagnostics)
*   **Buku**: [Buku 02: Index Types dan Strategi Index Lanjutan](./README.md)

---

## 1. Ringkasan Bab
Membahas teknik pembuatan Expression Index (indeks berbasis fungsi/ekspresi) untuk mengoptimalkan kueri yang menyaring data menggunakan manipulasi fungsi.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Mampu membuat Expression Index untuk kueri case-insensitive (LOWER/UPPER) atau manipulasi tanggal.
- Memahami risiko komputasi tambahan saat kueri tulis (INSERT/UPDATE) akibat kalkulasi fungsi indeks.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 02 Bab 03 (Partial Index).

---

## 4. Rencana Outline Sub-Bab
- Tantangan: Mengapa B-Tree Biasa Diabaikan Saat Menggunakan Fungsi LOWER() atau DATE()
- Sintaks Pembuatan Expression Index (Indeks Berbasis Fungsi)
- Use Case Terpopuler: LOWER(email), DATE(created_at), dan Operasi String/JSONB
- Dampak Tambahan Biaya Tulis (CPU Cost) Selama Operasi INSERT dan UPDATE
- Alternatif Penggunaan citext dan Generated Column Ter-indeks

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail teknik indexing, demo visual EXPLAIN ANALYZE, parameter statistik histogram optimizer, dan refaktor anti-pattern SQL untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 05 Buku 05 Bab 02 (pg_trgm, citext, dan uuid-ossp (Pengantar)).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
