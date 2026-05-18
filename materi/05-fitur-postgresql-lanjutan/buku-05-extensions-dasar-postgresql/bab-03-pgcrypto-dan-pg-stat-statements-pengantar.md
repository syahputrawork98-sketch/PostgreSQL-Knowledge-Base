# Bab 03: pgcrypto dan pg_stat_statements (Pengantar)

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 4 - Level 5 (Intermediate Advanced)
*   **Buku**: [Buku 05: Extensions Dasar PostgreSQL](./README.md)

---

## 1. Ringkasan Bab
Pengenalan extension pgcrypto untuk enkripsi data di dalam database dan pg_stat_statements untuk monitoring kueri lambat skala produksi.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Mampu menggunakan pgcrypto untuk hashing password di tingkat kueri SQL.
- Memahami cara memanfaatkan pg_stat_statements untuk mendeteksi kueri yang menghabiskan CPU terbanyak.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 05 Bab 02 (pg_trgm, citext, dan uuid-ossp (Pengantar)).

---

## 4. Rencana Outline Sub-Bab
- Enkripsi Kunci Simetris & Hashing (crypt/gen_salt) Menggunakan Extension pgcrypto
- Mengamankan Kolom Kredensial Langsung di Sisi Database
- Pengenalan pg_stat_statements Sebagai Alat Analisis Query Paling Powerful
- Cara Mengaktifkan pg_stat_statements (Membutuhkan shared_preload_libraries)
- Menafsirkan Metrik Kueri Populer: Total Waktu, Jumlah Panggilan, dan Rata-rata Durasi

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, demo query native, trigger PL/pgSQL, dan analisis monitoring extension untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 08 (Administrasi, DBA, dan Operasional).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
