# Buku 05: Query Aman dan Parameterized Query

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 04: PostgreSQL untuk Aplikasi](../README.md)
*   **Target Level**: Level 3 - Level 4 (Integrasi Aplikasi & Siklus Hidup Skema)
*   **Tipe Materi**: Integrasi Backend & Arsitektur Koneksi

---

## 1. Tujuan Buku
Buku ini membahas kerentanan SQL Injection akibat string concatenation kueri langsung di aplikasi backend, solusi penanganan keamanan menggunakan Parameterized Query, cara kerja Prepared Statement di PostgreSQL engine, serta pentingnya sanitasi data dan validasi boundary kueri aplikasi.

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu merancang kueri dinamis yang aman dari SQL Injection, menentukan transaction boundary secara atomik di Service Layer backend, mengatasi transient error via retry/idempotency, mengimplementasikan keyset pagination yang berkinerja tinggi, menentukan pool sizing optimal, serta mengelola risiko rollback migrasi di tahap deployment.

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dalam buku ini dikembangkan mengikuti kebutuhan kedalaman integrasi aplikasi backend serta tidak dibatasi secara kaku. Buku ini dapat berkembang secara berkala sesuai kebutuhan industri dan pembaruan PostgreSQL.

---

## 4. Daftar Bab Aktif
| 1 | [Bab 01: SQL Injection dan Risiko Query String](bab-01-sql-injection-dan-risiko-query-string.md) | **DRAFT** | Integrasi | Membahas kerentanan keamanan SQL Injection akibat penggabungan string (string concatenation) kueri langsung di aplikasi, serta cara kerja eksploitasi dasar. |
| 2 | [Bab 02: Parameterized Query dan Prepared Statement](bab-02-parameterized-query-dan-prepared-statement.md) | **DRAFT** | Integrasi | Membahas solusi penanganan SQL Injection melalui Parameterized Query dan cara kerja Prepared Statement di PostgreSQL untuk memisahkan logika kueri dari parameter input. |
| 3 | [Bab 03: Validasi Input dan Boundary Query Aplikasi](bab-03-validasi-input-dan-boundary-query-aplikasi.md) | **DRAFT** | Integrasi | Membahas teknik sanitasi data masukan di tingkat aplikasi backend serta penentuan batasan (boundaries) kueri untuk membatasi dampak serangan. |

---

## 5. Urutan Belajar
Pembaca diwajibkan menyelesaikan bab secara berurutan untuk menjamin pemahaman bertahap yang mendalam mengenai arsitektur akses database backend.

---

## 6. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi langsung dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
