# Bab 02: Meta-Command psql Dasar

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 3 - Level 4 (Developer-facing DBA Basics)
*   **Buku**: [Buku 02: psql dan Administrasi Harian](./README.md)

---

## 1. Ringkasan Bab
Membahas sekumpulan meta-commands internal psql (perintah berawalan backslash) untuk navigasi dan pengelolaan interaktif cepat.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Menguasai meta-commands psql utama seperti \l, \c, \d, \q, dan \? secara lancar.
- Memahami kegunaan masing-masing perintah pintas tersebut dalam menghemat waktu pengetikan.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 02 Bab 01 (psql Sebagai Konsol Administrasi).

---

## 4. Rencana Outline Sub-Bab
- Pengantar Meta-Commands: Perintah Pintas Non-SQL Khusus Terminal psql
- Menampilkan Daftar Database (\l atau \list)
- Berpindah Database Koneksi (\c atau \connect)
- Keluar Secara Bersih dari Sesi Interaktif (\q atau \quit)
- Menggunakan Layanan Bantuan Dokumentasi Shell (\? dan \h)

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail psql commands, SQL privileges script, memory configuration limits, autovacuum thresholds, pg_dump shell scripts, dan monitoring queries untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 02 (SQL dan Querying).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
