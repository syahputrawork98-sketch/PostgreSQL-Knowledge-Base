# Bab 01: psql Sebagai Konsol Administrasi

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 3 - Level 4 (Developer-facing DBA Basics)
*   **Buku**: [Buku 02: psql dan Administrasi Harian](./README.md)

---

## 1. Ringkasan Bab
Membahas pemanggilan program client terminal native `psql`, parameter koneksi utama, serta mode interaktif vs non-interaktif.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Mampu menghubungkan terminal local ke database local/remote menggunakan psql.
- Memahami parameter dasar koneksi seperti host, user, port, dan dbname.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Rak 01 Buku 01 (Pengenalan PostgreSQL).

---

## 4. Rencana Outline Sub-Bab
- Mengapa Terminal Client Native psql Tetap Menjadi Standar Emas DBA
- Pemanggilan Dasar: psql -h [host] -U [username] -d [dbname]
- Mode Interaktif (Kueri Langsung) vs Mode Non-Interaktif (Eksekusi File SQL)
- Variabel Lingkungan (Environment Variables) Utama psql
- Keamanan Password: Penggunaan File .pgpass Secara Praktis

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail psql commands, SQL privileges script, memory configuration limits, autovacuum thresholds, pg_dump shell scripts, dan monitoring queries untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 04 Buku 01 (PostgreSQL dalam Aplikasi Backend).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
