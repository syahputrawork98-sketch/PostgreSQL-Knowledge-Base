# Bab 01: INSERT dan RETURNING

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 1 - Level 2 (Dasar ke Menengah)
*   **Buku**: [Buku 05: DML dan Perubahan Data](./README.md)

---

## 1. Ringkasan Bab
Pengenalan manipulasi data (DML) penyisipan baris baru menggunakan perintah INSERT INTO, multi-row insert, dan optimalisasi round-trip network backend menggunakan klausa RETURNING.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Menguasai sintaks penyisipan data tunggal dan banyak (multi-row insert) di PostgreSQL.
- Memahami peran klausa RETURNING dalam mengembalikan nilai kolom tergenerasi (seperti ID serial/UUID atau timestamp) tanpa kueri SELECT tambahan.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Rak 01 Buku 04 (Fondasi Konsep Database) dan Rak 02 Buku 01 (Query SELECT).

---

## 4. Rencana Outline Sub-Bab
- Sintaks Dasar Perintah INSERT INTO
- Penyisipan Multi-Baris (Bulk Insert) Efisien
- Masalah Latensi Jaringan pada INSERT Standar
- Menggunakan RETURNING untuk Mengambil ID dan Kolom Tergenerasi
- Praktik Terbaik dan Penanganan Kredensial Unik

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, kueri SQL demo, analogi visual, dan latihan kecil untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 04 Buku 01 Bab 04 (Query untuk List dan Detail Data Aplikasi).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
