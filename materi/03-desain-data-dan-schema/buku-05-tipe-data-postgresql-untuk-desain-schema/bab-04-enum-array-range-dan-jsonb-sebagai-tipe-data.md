# Bab 04: Enum, Array, Range, dan JSONB Sebagai Tipe Data

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 2 - Level 3 (Desain Data & Relasional)
*   **Buku**: [Buku 05: Tipe Data PostgreSQL untuk Desain Schema](./README.md)

---

## 1. Ringkasan Bab
Pengenalan tipe data tingkat lanjut (ENUM, ARRAY, RANGE types, dan JSONB) di PostgreSQL sebagai opsi pemodelan data modern terstruktur dan semi-terstruktur.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami kapan harus memodelkan data menggunakan ENUM dan ARRAY dibandingkan membuat tabel relasi baru.
- Memahami kegunaan tipe data RANGE dan pengantar pemodelan dokumen JSONB.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 05 Bab 01 (Text, Numeric, Boolean, dan Pemilihan Tipe).

---

## 4. Rencana Outline Sub-Bab
- Tipe Data ENUM: Penggunaan dan Keterbatasan Perubahan Nilai
- Tipe Data ARRAY: Pemodelan Multi-Nilai dalam Satu Baris
- Tipe Data RANGE: Memodelkan Jangkauan Nilai Terintegrasi
- Pengenalan JSONB: Pemodelan Semi-Terstruktur (NoSQL di PostgreSQL)
- Anti-Pola Desain: Kapan Tidak Boleh Menggunakan ARRAY/JSONB

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, skema DDL demo, analogi visual, dan latihan kecil untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 05 (Fitur PostgreSQL Lanjutan - JSONB Deep Dive).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
