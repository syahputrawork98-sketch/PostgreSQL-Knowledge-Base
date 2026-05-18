# Bab 01: Transaction Boundary pada Use Case Aplikasi

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 3 - Level 4 (Integrasi Aplikasi & Siklus Hidup Skema)
*   **Buku**: [Buku 06: Transaction Boundary di Service Layer](./README.md)

---

## 1. Ringkasan Bab
Membahas cara mendefinisikan batasan transaksi (Transaction Boundary) di tingkat Service Layer backend aplikasi untuk menjamin sifat atomisitas (ACID) use case bisnis multi-query.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami mengapa batasan transaksi harus diletakkan di Service Layer bukan di Data Access Layer.
- Menguasai cara mengelola siklus hidup koneksi dan transaksi (BEGIN/COMMIT/ROLLBACK) secara terprogram.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Rak 04 Buku 01 Bab 06 (Transaksi Database untuk Aplikasi).

---

## 4. Rencana Outline Sub-Bab
- Konsep ACID pada Transaksi Bisnis Aplikasi
- Mengapa Service Layer Adalah Tempat Terbaik Menentukan Transaction Boundary
- Mekanisme Propagasi Transaksi di Aplikasi Backend
- Mengelola Transaksi Secara Terprogram vs Deklaratif
- Contoh Pola Kasus Transaksi Multi-Tabel (Pendaftaran Akun & Pembuatan Profil)

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, demo parameterisasi backend driver, dan analisis risiko transaksi untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 06 (Transaksi, Concurrency, dan MVCC).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
