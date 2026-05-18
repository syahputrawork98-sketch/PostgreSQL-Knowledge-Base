# Bab 01: Subquery Dasar (Uncorrelated)

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 2 (Menengah)
*   **Buku**: [Buku 07: Subquery, CTE, dan Query Composition](./README.md)

---

## 1. Ringkasan Bab
Membahas penggunaan kueri bersarang independen (uncorrelated subquery) di dalam klausa SELECT, FROM, dan WHERE untuk menyajikan filter data dinamis.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami konsep kueri di dalam kueri (subquery).
- Menguasai penulisan subquery independen yang menghasilkan nilai skalar, satu kolom (list), atau tabel virtual (derived table).
- Menggunakan subquery di dalam WHERE dengan operator IN, EXISTS, ANY, dan ALL.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Rak 02 Buku 03 (JOIN dan Relasi Query) dan Buku 06 Bab 02 (Predicate).

---

## 4. Rencana Outline Sub-Bab
- Definisi Subquery dan Alur Eksekusi (Inside-Out)
- Subquery Skalar (Menghasilkan Satu Nilai Tunggal)
- Subquery Multi-Baris dengan Operator IN, EXISTS, ANY, dan ALL
- Subquery di dalam Clause FROM sebagai Tabel Virtual (Derived Table)
- Perbandingan Keterbacaan dan Performa: Subquery vs JOIN

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, kueri SQL demo, analogi visual, dan latihan kecil untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 07 Buku 01 Bab 04 (Membaca Query Plan Dasar).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
