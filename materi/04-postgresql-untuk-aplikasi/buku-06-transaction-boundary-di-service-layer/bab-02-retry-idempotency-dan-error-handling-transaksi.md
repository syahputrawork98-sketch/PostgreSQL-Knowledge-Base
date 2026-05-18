# Bab 02: Retry, Idempotency, dan Error Handling Transaksi

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 3 - Level 4 (Integrasi Aplikasi & Siklus Hidup Skema)
*   **Buku**: [Buku 06: Transaction Boundary di Service Layer](./README.md)

---

## 1. Ringkasan Bab
Membahas teknik penanganan kesalahan transaksi akibat kegagalan sementara (transient errors), strategi retry otomatis, serta penjaminan idempotensi kueri.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami perbedaan error permanen (syntax/constraint violation) vs error sementara (serialization failure/deadlock).
- Menguasai perancangan mekanisme Retry dengan Exponential Backoff dan Idempotency Keys di aplikasi backend.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 06 Bab 01 (Transaction Boundary pada Use Case Aplikasi).

---

## 4. Rencana Outline Sub-Bab
- Klasifikasi Error Database: Transient Errors vs Permanent Errors
- Menangani Kegagalan Transaksi Menggunakan Pola Retry
- Strategi Retry: Exponential Backoff dan Jitter
- Pentingnya Idempotency Key pada Endpoint Transaksional
- Pola Desain Tabel Idempotensi untuk Mencegah Eksekusi Transaksi Ganda

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, demo parameterisasi backend driver, dan analisis risiko transaksi untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 06 Buku 02 (Locking System dan Deadlocks).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
