# Bab 03: BEGIN, COMMIT, ROLLBACK, dan SAVEPOINT

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 5 - Level 6 (Intermediate-Expert)
*   **Buku**: [Buku 01: Fondasi Transaksi dan ACID](./README.md)

---

## 1. Ringkasan Bab
Membahas instruksi kontrol transaksi native di PostgreSQL untuk mengendalikan batas transaksi, pembatalan, serta sub-transaksi parsial menggunakan Savepoint.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Menguasai sintaks transaksi native: BEGIN, COMMIT, dan ROLLBACK.
- Memahami cara menggunakan SAVEPOINT dan ROLLBACK TO untuk pembatalan transaksi sebagian.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 01 Bab 02 (ACID (Atomicity, Consistency, Isolation, Durability)).

---

## 4. Rencana Outline Sub-Bab
- Instruksi Pemula: Membuka Transaksi dengan BEGIN / START TRANSACTION
- Menyimpan Perubahan Secara Permanen dengan COMMIT
- Membatalkan Seluruh Perubahan dengan ROLLBACK / ABORT
- Mengelola Transaksi Bersarang dan Parsial Menggunakan SAVEPOINT dan ROLLBACK TO SAVEPOINT
- Dampak Penggunaan Savepoint Terhadap Kinerja Sistem Internal Sub-transaksi

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan konsep concurrency, simulasi deadlock sclient, dan visualisasi tuple metadata xmin/xmax untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 04 Buku 01 Bab 07 (BEGIN, COMMIT, dan ROLLBACK).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
