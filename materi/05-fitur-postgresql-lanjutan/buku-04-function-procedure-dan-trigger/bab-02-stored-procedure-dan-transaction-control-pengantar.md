# Bab 02: Stored Procedure dan Transaction Control (Pengantar)

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 4 - Level 5 (Intermediate Advanced)
*   **Buku**: [Buku 04: Function, Procedure, dan Trigger](./README.md)

---

## 1. Ringkasan Bab
Pengenalan Stored Procedure di PostgreSQL serta kemampuan uniknya dalam mengontrol transaksi (COMMIT / ROLLBACK) di dalam database.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami perbedaan fungsional dan transaksional antara Stored Function vs Stored Procedure.
- Menulis Stored Procedure sederhana yang melakukan COMMIT atau ROLLBACK mandiri.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 04 Bab 01 (SQL Function dan PL/pgSQL (Pengantar)).

---

## 4. Rencana Outline Sub-Bab
- Sejarah Stored Procedure di PostgreSQL (Diperkenalkan Sejak Versi 11)
- Perbedaan Utama: Function (Tidak Bisa Mengontrol Transaksi) vs Procedure (Bisa COMMIT/ROLLBACK)
- Sintaks Pembuatan Stored Procedure: CREATE PROCEDURE dan Perintah CALL
- Mengelola Transaksi di dalam Prosedur secara Aman
- Use Case Ideal: Proses Batch Data Raksasa yang Membutuhkan Commit Bertahap (Chunking)

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, demo query native, trigger PL/pgSQL, dan analisis monitoring extension untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 04 Buku 01 Bab 06 (Transaksi Database untuk Aplikasi).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
