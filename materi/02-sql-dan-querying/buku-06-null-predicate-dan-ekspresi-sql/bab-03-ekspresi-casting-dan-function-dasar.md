# Bab 03: Ekspresi, Casting, dan Function Dasar

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 1 - Level 2 (Dasar ke Menengah)
*   **Buku**: [Buku 06: NULL, Predicate, dan Ekspresi SQL](./README.md)

---

## 1. Ringkasan Bab
Mengenalkan cara melakukan konversi tipe data (casting) secara eksplisit, mengevaluasi ekspresi kondisional CASE WHEN, serta menggunakan fungsi manipulasi string/tanggal dasar bawaan PostgreSQL.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Menguasai sintaks casting tipe data menggunakan operator `::` dan standar SQL `CAST()`.
- Menggunakan ekspresi CASE WHEN untuk logika percabangan di dalam kueri SELECT.
- Memanfaatkan fungsi manipulasi string (CONCAT, SUBSTR) dan tanggal (NOW, CURRENT_DATE) dasar.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Rak 02 Buku 01 (Query SELECT).

---

## 4. Rencana Outline Sub-Bab
- Konsep Strong Typing di PostgreSQL dan Kebutuhan Casting
- Sintaks Casting Tipe Data (`value::type` vs `CAST(value AS type)`)
- Logika Percabangan dalam Query dengan Ekspresi CASE WHEN
- Fungsi Bawaan String (CONCAT, LOWER, UPPER, SUBSTRING)
- Fungsi Bawaan Tanggal dan Waktu (NOW, CURRENT_DATE, EXTRACT)

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, kueri SQL demo, analogi visual, dan latihan kecil untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 03 Buku 01 Bab 02 (Pembuatan Table dan Data Type).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
