# Bab 01: JSON vs JSONB dan Use Case

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 4 - Level 5 (Intermediate Advanced)
*   **Buku**: [Buku 01: JSONB dan Semi-Structured Data](./README.md)

---

## 1. Ringkasan Bab
Membahas perbedaan esensial antara tipe data JSON (teks mentah) dan JSONB (binary terurai) di PostgreSQL, serta use case yang tepat untuk semi-structured data.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami perbedaan cara kerja penyimpanan dan kecepatan parsing antara JSON dan JSONB.
- Mengevaluasi kapan harus memilih data semi-terstruktur dibanding desain tabel relasional murni.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Rak 03 Buku 05 Bab 04 (Enum, Array, Range, dan JSONB Sebagai Tipe Data).

---

## 4. Rencana Outline Sub-Bab
- Sejarah Penyimpanan JSON di PostgreSQL
- Perbedaan Arsitektur Penyimpanan: JSON (Teks Mentah) vs JSONB (Binary Terurai)
- Perbandingan Performa: Kecepatan Tulis (JSON) vs Kecepatan Baca/Manipulasi (JSONB)
- Use Case Ideal: Atribut Dinamis Produk, Log Event, dan Metadata API Eksternal
- Keterbatasan Kompatibilitas Tipe Data JSON/JSONB di PostgreSQL

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, demo query native, trigger PL/pgSQL, dan analisis monitoring extension untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 03 Buku 05 (Tipe Data PostgreSQL untuk Desain Schema).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
