# Bab 01: NULL dan Three-Valued Logic

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 1 - Level 2 (Dasar ke Menengah)
*   **Buku**: [Buku 06: NULL, Predicate, dan Ekspresi SQL](./README.md)

---

## 1. Ringkasan Bab
Mempelajari konsep nilai kosong/absen (NULL) di database relasional, cara membandingkan NULL menggunakan IS NULL / IS NOT NULL, serta memahami Three-Valued Logic (3VL) yang krusial.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami arti filosofis NULL sebagai "unknown" (tidak diketahui), bukan string kosong atau angka nol.
- Menguasai Three-Valued Logic (TRUE, FALSE, UNKNOWN) dalam evaluasi klausa WHERE.
- Menghindari blunder logika kueri akibat pencarian NULL menggunakan operator `=` atau `!=`.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Rak 02 Buku 02 (Filtering, Sorting, dan Limit).

---

## 4. Rencana Outline Sub-Bab
- Definisi NULL dalam Desain Relasional
- Three-Valued Logic (3VL) Truth Table (AND, OR, NOT dengan UNKNOWN)
- Blunder Klasik: Mengapa `kolom = NULL` Selalu Menghasilkan UNKNOWN
- Menggunakan Operator IS NULL dan IS NOT NULL secara Tepat
- Mengatasi Efek NULL pada Fungsi Agregasi

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, kueri SQL demo, analogi visual, dan latihan kecil untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 02 Buku 04 Bab 01 (Fungsi Agregasi - Perilaku NULL).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
