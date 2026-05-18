# Bab 01: Konsep Extension di PostgreSQL

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 4 - Level 5 (Intermediate Advanced)
*   **Buku**: [Buku 05: Extensions Dasar PostgreSQL](./README.md)

---

## 1. Ringkasan Bab
Membahas ekosistem extensibilitas (Extension) di PostgreSQL yang memungkinkannya menambah tipe data, indeks, dan fungsionalitas baru.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami bagaimana arsitektur modular PostgreSQL mendukung penambahan extension eksternal.
- Mampu melihat daftar extension yang tersedia dan memasangnya menggunakan perintah CREATE EXTENSION.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Rak 01 Buku 01 Bab 01 (Apa Itu PostgreSQL).

---

## 4. Rencana Outline Sub-Bab
- PostgreSQL Sebagai Extensible Database Engine
- Bagaimana Extension Berinteraksi dengan Core PostgreSQL Kernel
- Sintaks Manajemen Extension: CREATE EXTENSION, DROP EXTENSION, dan ALTER EXTENSION
- Memeriksa Extension Terpasang Melalui View pg_available_extensions
- Aspek Keamanan dan Izin Akses (Superuser Privilege) untuk Pemasangan Extension

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, demo query native, trigger PL/pgSQL, dan analisis monitoring extension untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 01 (Orientasi, Sejarah, dan Fondasi PostgreSQL).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
