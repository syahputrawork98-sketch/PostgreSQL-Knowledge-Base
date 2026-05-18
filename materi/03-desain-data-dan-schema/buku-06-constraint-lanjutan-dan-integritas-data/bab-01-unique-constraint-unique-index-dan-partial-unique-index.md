# Bab 01: Unique Constraint, Unique Index, dan Partial Unique Index

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 2 - Level 3 (Desain Data & Relasional)
*   **Buku**: [Buku 06: Constraint Lanjutan dan Integritas Data](./README.md)

---

## 1. Ringkasan Bab
Membahas perbedaan Unique Constraint vs Unique Index, serta kekuatan Partial Unique Index untuk memvalidasi keunikan data bersyarat.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami relasi internal antara Unique Constraint dan Unique Index di PostgreSQL.
- Menguasai pembuatan Partial Unique Index (Unique bersyarat) untuk memecahkan kasus soft-delete.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Rak 03 Buku 02 Bab 03 (Check & Unique Constraint).

---

## 4. Rencana Outline Sub-Bab
- Perbedaan Konseptual Unique Constraint vs Unique Index
- Bagaimana PostgreSQL Menangani Validasi Keunikan di Latar Belakang
- Kasus Nyata Soft-Delete: Validasi Keunikan Hanya untuk Baris Aktif
- Sintaks dan Penerapan Partial Unique Index
- Dampak Performa Unique Constraints pada Operasi Tulis

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, skema DDL demo, analogi visual, dan latihan kecil untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 05 (Fitur PostgreSQL Lanjutan - Soft Delete Pattern).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
