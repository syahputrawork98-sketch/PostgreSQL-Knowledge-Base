# Bab 02: ACID (Atomicity, Consistency, Isolation, Durability)

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 5 - Level 6 (Intermediate-Expert)
*   **Buku**: [Buku 01: Fondasi Transaksi dan ACID](./README.md)

---

## 1. Ringkasan Bab
Membahas empat prinsip dasar transaksi database (ACID) dan bagaimana PostgreSQL menjamin masing-masing prinsip tersebut.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Mampu menjelaskan makna dari Atomicity, Consistency, Isolation, dan Durability secara komprehensif.
- Memahami peran Write-Ahead Log (WAL) dan MVCC secara konseptual dalam mendukung garansi ACID.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 01 Bab 01 (Apa Itu Transaksi Database).

---

## 4. Rencana Outline Sub-Bab
- Prinsip 1 - Atomicity: Konsep "All or Nothing"
- Prinsip 2 - Consistency: Menjaga Integritas Aturan dan Kekokohan Schema State
- Prinsip 3 - Isolation: Menjamin Transaksi Konkuren Berjalan Seolah-olah Berurutan
- Prinsip 4 - Durability: Ketahanan Data Pasca Sistem Mengalami Crash (Crash Recovery)
- Bagaimana PostgreSQL Menggunakan WAL dan MVCC untuk Menjamin ACID

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan konsep concurrency, simulasi deadlock sclient, dan visualisasi tuple metadata xmin/xmax untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 03 Buku 02 (Primary Key, Foreign Key, dan Constraint).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
