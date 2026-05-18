# Bab 04: Export-Import Ringkas dengan psql

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 3 - Level 4 (Developer-facing DBA Basics)
*   **Buku**: [Buku 02: psql dan Administrasi Harian](./README.md)

---

## 1. Ringkasan Bab
Membahas pengoperasian perintah `\copy` untuk memindahkan data tabular antara database PostgreSQL dan sistem file lokal pengembang.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami perbedaan fungsional antara perintah SQL `COPY` (sisi server) vs meta-command psql `\copy` (sisi client).
- Mampu melakukan ekspor dan impor file CSV/TXT secara mandiri melalui terminal client.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 02 Bab 03 (Inspeksi Database: Schema, Table, dan Index).

---

## 4. Rencana Outline Sub-Bab
- Keamanan & Hak Akses: COPY Sisi Server vs \copy Sisi Client
- Sintaks Ekspor Data Tabel ke File CSV Lokal Pengembang
- Sintaks Impor Data dari CSV Lokal Masuk ke Tabel Database
- Menangani Pembatas Khusus (Delimiters), Karakter Escape, dan Nilai NULL
- Praktik Terbaik: Mengamankan Validasi Constraint Sebelum Melakukan Impor Massal

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail psql commands, SQL privileges script, memory configuration limits, autovacuum thresholds, pg_dump shell scripts, dan monitoring queries untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 04 Buku 01 (PostgreSQL dalam Aplikasi Backend).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
