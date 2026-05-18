# Bab 02: Correlated Subquery

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 2 (Menengah)
*   **Buku**: [Buku 07: Subquery, CTE, dan Query Composition](./README.md)

---

## 1. Ringkasan Bab
Membahas subquery berkorelasi (correlated subquery) yang bergantung pada baris tabel luar, alur eksekusinya yang berulang, serta penggunaan optimal operator EXISTS.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami perbedaan mendasar uncorrelated vs correlated subquery.
- Menguasai alur eksekusi baris-per-baris (Row-by-Row Evaluation) pada correlated subquery.
- Menggunakan operator EXISTS dan NOT EXISTS untuk optimalisasi pencarian data berelasi.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 07 Bab 01 (Subquery Dasar).

---

## 4. Rencana Outline Sub-Bab
- Definisi Korelasi dalam Subquery
- Alur Eksekusi Row-by-Row dan Dampak Performanya
- Sintaks Correlated Subquery di WHERE dan SELECT
- Mengoptimalkan Kueri Keberadaan Data menggunakan EXISTS vs IN
- Praktik Terbaik Menghindari Degradasi Performa pada Dataset Besar

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, kueri SQL demo, analogi visual, dan latihan kecil untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 07 Buku 01 Bab 04 (Membaca Query Plan Dasar).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
