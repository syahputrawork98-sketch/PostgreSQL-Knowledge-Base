# Buku 06: Transaction Boundary di Service Layer

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 04: PostgreSQL untuk Aplikasi](../README.md)
*   **Target Level**: Level 3 - Level 4 (Integrasi Aplikasi & Siklus Hidup Skema)
*   **Tipe Materi**: Integrasi Backend & Arsitektur Koneksi

---

## 1. Tujuan Buku
Buku ini mendalami tata kelola batas transaksi (Transaction Boundary) di Service Layer aplikasi untuk mengawal Use Case bisnis multi-query secara atomik, menangani kegagalan sementara menggunakan Retry (Exponential Backoff) dan Idempotency Keys, serta mendeteksi Race Condition transaksional di tingkat aplikasi.

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu merancang kueri dinamis yang aman dari SQL Injection, menentukan transaction boundary secara atomik di Service Layer backend, mengatasi transient error via retry/idempotency, mengimplementasikan keyset pagination yang berkinerja tinggi, menentukan pool sizing optimal, serta mengelola risiko rollback migrasi di tahap deployment.

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dalam buku ini dikembangkan mengikuti kebutuhan kedalaman integrasi aplikasi backend serta tidak dibatasi secara kaku. Buku ini dapat berkembang secara berkala sesuai kebutuhan industri dan pembaruan PostgreSQL.

---

## 4. Daftar Bab Aktif
| 1 | [Bab 01: Transaction Boundary pada Use Case Aplikasi](bab-01-transaction-boundary-pada-use-case-aplikasi.md) | **DRAFT** | Integrasi | Membahas cara mendefinisikan batasan transaksi (Transaction Boundary) di tingkat Service Layer backend aplikasi untuk menjamin sifat atomisitas (ACID) use case bisnis multi-query. |
| 2 | [Bab 02: Retry, Idempotency, dan Error Handling Transaksi](bab-02-retry-idempotency-dan-error-handling-transaksi.md) | **DRAFT** | Integrasi | Membahas teknik penanganan kesalahan transaksi akibat kegagalan sementara (transient errors), strategi retry otomatis, serta penjaminan idempotensi kueri. |
| 3 | [Bab 03: Race Condition di Level Aplikasi](bab-03-race-condition-di-level-aplikasi.md) | **DRAFT** | Integrasi | Pengenalan anomali persaingan data (Race Condition) akibat pembacaan dan pembaruan konkuren di aplikasi, serta pengantar teknik pencegahannya di database. |

---

## 5. Urutan Belajar
Pembaca diwajibkan menyelesaikan bab secara berurutan untuk menjamin pemahaman bertahap yang mendalam mengenai arsitektur akses database backend.

---

## 6. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi langsung dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
