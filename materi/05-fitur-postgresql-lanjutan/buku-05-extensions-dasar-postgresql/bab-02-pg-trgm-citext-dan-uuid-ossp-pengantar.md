# Bab 02: pg_trgm, citext, dan uuid-ossp (Pengantar)

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 4 - Level 5 (Intermediate Advanced)
*   **Buku**: [Buku 05: Extensions Dasar PostgreSQL](./README.md)

---

## 1. Ringkasan Bab
Pengenalan tiga extension bawaan yang sangat populer untuk kemudahan manipulasi teks tidak sensitif huruf besar/kecil, fuzzy matching trigram, dan pembuatan UUID v4.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami penggunaan tipe data citext untuk email/username yang case-insensitive.
- Menerapkan pencarian teks fuzzy trigram via pg_trgm dan generator UUID native via uuid-ossp.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 05 Bab 01 (Konsep Extension di PostgreSQL).

---

## 4. Rencana Outline Sub-Bab
- Membasmi Masalah UPPER/LOWER Case Menggunakan Tipe Data citext
- Apa Itu Trigram dan Bagaimana Extension pg_trgm Membantu Pencarian Fuzzy-Search Cepat
- Membuat Indeks GIST/GIN untuk Mempercepat Operator Kemiripan pg_trgm
- Mendapatkan UUID v4 yang Kompatibel Standar Menggunakan uuid-ossp
- Perbandingan uuid-ossp (v4) vs PostgreSQL Native gen_random_uuid() (Sejak Versi 13)

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, demo query native, trigger PL/pgSQL, dan analisis monitoring extension untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 03 Buku 05 Bab 03 (UUID, Serial, Bigserial, dan Identity).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
