# Bab 04: Anti-Pattern JSONB dalam Desain Relasional

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 4 - Level 5 (Intermediate Advanced)
*   **Buku**: [Buku 01: JSONB dan Semi-Structured Data](./README.md)

---

## 1. Ringkasan Bab
Menganalisis kesalahan umum (anti-patterns) penyalahgunaan JSONB sebagai pengganti tabel relasional standar di PostgreSQL.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Mengidentifikasi tanda-tanda penyalahgunaan JSONB yang merusak integritas dan performa database.
- Mendesain ulang skema semi-terstruktur yang buruk menjadi skema relasional terstandar.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 01 Bab 03 (JSONB Indexing (Pengantar)).

---

## 4. Rencana Outline Sub-Bab
- Fenomena "Schemaless Database in PostgreSQL": Mengapa Ini Berbahaya
- Hilangnya Referensi Integritas (Foreign Key) pada Atribut di dalam JSONB
- Bahaya Ukuran Kolom Gasing: Masalah TOAST (The Oversized-Attribute Storage Technique)
- Kesulitan Validasi Tipe Data dan CHECK Constraint di Sisi Database
- Panduan Keputusan: Kapan Wajib Me-relasionalkan Skema JSONB

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, demo query native, trigger PL/pgSQL, dan analisis monitoring extension untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 03 (Desain Data dan Schema).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
