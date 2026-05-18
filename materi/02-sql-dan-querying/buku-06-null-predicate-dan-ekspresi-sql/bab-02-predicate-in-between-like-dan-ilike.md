# Bab 02: Predicate IN, BETWEEN, LIKE, dan ILIKE

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 1 - Level 2 (Dasar ke Menengah)
*   **Buku**: [Buku 06: NULL, Predicate, dan Ekspresi SQL](./README.md)

---

## 1. Ringkasan Bab
Membahas penggunaan predikat filter pencarian tingkat menengah, memfilter dalam daftar (IN), memfilter jangkauan (BETWEEN), serta pencarian pola teks (LIKE dan ILIKE).

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Menguasai pencarian data multi-nilai secara bersih menggunakan predikat IN.
- Menggunakan BETWEEN untuk jangkauan angka/tanggal secara presisi.
- Memahami perbedaan case-sensitive LIKE vs case-insensitive ILIKE di PostgreSQL.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 06 Bab 01 (NULL dan Three-Valued Logic).

---

## 4. Rencana Outline Sub-Bab
- Sintaks Dasar Predikat IN and NOT IN
- Sintaks Dasar BETWEEN dan Penanganan Batas Nilai (Inclusive)
- Pencarian Pola Karakter dengan LIKE dan Wildcard `%` serta `_`
- Pencarian Case-Insensitive menggunakan ILIKE di PostgreSQL
- Masalah Performa Pencarian Pola (Mengapa Leading Wildcard `%term` Lambat)

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, kueri SQL demo, analogi visual, dan latihan kecil untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 07 Buku 01 Bab 02 (Kapan Index Membantu Query).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
