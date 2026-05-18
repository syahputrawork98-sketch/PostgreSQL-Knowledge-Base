# Bab 03: Partial Index

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 5 - Level 6 (Advanced Diagnostics)
*   **Buku**: [Buku 02: Index Types dan Strategi Index Lanjutan](./README.md)

---

## 1. Ringkasan Bab
Membahas pembuatan Partial Index (indeks bersyarat) menggunakan klausa WHERE untuk memangkas ukuran indeks fisik secara dramatis.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Mampu merancang Partial Index untuk menyaring data yang sering dicari (misal: pesanan aktif saja).
- Mengevaluasi keuntungan ukuran disk penyimpanan dan performa tulis pasca menerapkan partial indexing.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 02 Bab 02 (Composite Index dan Urutan Kolom).

---

## 4. Rencana Outline Sub-Bab
- Konsep Partial Indexing: Mengindeks Hanya Bagian Baris Tertentu
- Sintaks CREATE INDEX ... WHERE ...
- Use Case Ideal: Soft Delete (active = true), Status Antrian (status = 'PENDING'), dan Nilai Jarang
- Penghematan Ruang Penyimpanan Disk Fisik dan Memory Buffer Cache
- Keterbatasan Partial Index: Wajib Menggunakan Filter WHERE yang Sama pada Kueri Aplikasi

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail teknik indexing, demo visual EXPLAIN ANALYZE, parameter statistik histogram optimizer, dan refaktor anti-pattern SQL untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 04 (PostgreSQL untuk Aplikasi).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
