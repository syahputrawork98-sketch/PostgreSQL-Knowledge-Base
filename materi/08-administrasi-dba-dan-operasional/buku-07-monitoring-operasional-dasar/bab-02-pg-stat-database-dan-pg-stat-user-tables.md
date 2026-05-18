# Bab 02: pg_stat_database dan pg_stat_user_tables

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 3 - Level 4 (Developer-facing DBA Basics) / Level 6 - Level 7 (DBA & System Administration)
*   **Buku**: [Buku 07: Monitoring Operasional Dasar](./README.md)

---

## 1. Ringkasan Bab
Membahas metrik statistik tingkat database (pg_stat_database) dan tabel (pg_stat_user_tables) untuk memantau rasio hit cache memori serta intensitas kueri baca-tulis.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Membaca metrik rasio hit cache (Buffer Cache Hit Ratio) tingkat database.
- Memantau intensitas kueri Sequential Scan vs Index Scan tingkat user tables.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 07 Bab 01 (pg_stat_activity dan Koneksi Aktif).

---

## 4. Rencana Outline Sub-Bab
- Memantau Kesehatan Database Global Melalui pg_stat_database
- Menghitung Buffer Cache Hit Ratio: Mengukur Efisiensi RAMshared_buffers
- Menganalisis pg_stat_user_tables: Memantau Jumlah Seq Scan vs Index Scan pada Tabel Tertentu
- Melacak Aktivitas DML: Jumlah Baris Ter-INSERT, Ter-UPDATE, dan Ter-DELETE Sejak Database Aktif
- Menggunakan Metrik Statistik untuk Memilih Prioritas Tabel yang Butuh Optimasi Indeks

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail psql commands, SQL privileges script, memory configuration limits, autovacuum thresholds, pg_dump shell scripts, dan monitoring queries untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 07 Buku 03 Bab 04 (Plan Nodes: Seq Scan, Index Scan, dan Bitmap Scan).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
