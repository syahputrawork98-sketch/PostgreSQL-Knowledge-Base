# Bab 01: Text, Numeric, Boolean, dan Pemilihan Tipe

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 2 - Level 3 (Desain Data & Relasional)
*   **Buku**: [Buku 05: Tipe Data PostgreSQL untuk Desain Schema](./README.md)

---

## 1. Ringkasan Bab
Membahas tipe data primitif dasar (text vs char vs varchar, integer vs numeric/decimal vs float, boolean) serta panduan praktis memilih tipe data yang optimal untuk efisiensi penyimpanan fisik.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami perbedaan internal penyimpanan text, varchar(N), dan char(N) di PostgreSQL.
- Menguasai pemilihan tipe numeric (integer, bigint, numeric, double precision) untuk mencegah overhead memori atau ketidakakuratan aritmatika desimal.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Rak 03 Buku 01 Bab 02 (Pembuatan Table dan Data Type).

---

## 4. Rencana Outline Sub-Bab
- Karakter String: Text vs Varchar vs Char
- Tipe Angka Bulat: Smallint, Integer, Bigint
- Tipe Angka Desimal Presisi: Numeric vs Real vs Double Precision
- Boolean: Representasi Kebenaran Efisien
- Panduan Memilih Tipe Data Berdasarkan Kebutuhan Bisnis

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, skema DDL demo, analogi visual, dan latihan kecil untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 03 Buku 03 Bab 03 (Dampak Desain pada Performa).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
