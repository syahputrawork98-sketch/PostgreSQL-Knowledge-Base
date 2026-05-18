# Bab 04: Generated Column, Domain, dan Integritas Terstruktur

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 2 - Level 3 (Desain Data & Relasional)
*   **Buku**: [Buku 06: Constraint Lanjutan dan Integritas Data](./README.md)

---

## 1. Ringkasan Bab
Membahas kolum tergenerasi otomatis (Generated Column) dan pendefinisian domain tipe data kustom (Domain) untuk standarisasi integritas data.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Menguasai pembuatan Generated Column (Stored) untuk kalkulasi kolom dinamis.
- Memahami kegunaan CREATE DOMAIN untuk membuat tipe data bersyarat CHECK terpusat.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 05 Bab 01 (Text, Numeric) dan Rak 03 Buku 02 Bab 03 (Check Constraint).

---

## 4. Rencana Outline Sub-Bab
- Konsep Generated Column Stored vs Virtual
- Sintaks Pembuatan Generated Column di PostgreSQL
- Membuat Domain Kustom dengan CHECK Constraints (CREATE DOMAIN)
- Keuntungan Pemeliharaan Skema Terpusat Menggunakan Domain
- Batasan Penggunaan Generated Column dan Domain

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, skema DDL demo, analogi visual, dan latihan kecil untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 03 Buku 02 Bab 03 (Check & Unique Constraint).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
