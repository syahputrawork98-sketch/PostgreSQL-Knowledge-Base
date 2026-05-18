# Bab 01: pg_stat_activity dan Koneksi Aktif

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 3 - Level 4 (Developer-facing DBA Basics) / Level 6 - Level 7 (DBA & System Administration)
*   **Buku**: [Buku 07: Monitoring Operasional Dasar](./README.md)

---

## 1. Ringkasan Bab
Membahas catalog view `pg_stat_activity` untuk mengidentifikasi status koneksi klien, kueri aktif, serta sesi yang memblokir transaksi lain.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Mampu melakukan kueri ke pg_stat_activity untuk melihat sesi yang sedang berjalan.
- Mampu mematikan koneksi bermasalah yang menggantung secara aman menggunakan pg_terminate_backend.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 02 (psql dan Administrasi Harian).

---

## 4. Rencana Outline Sub-Bab
- Katalog Status Sesi: Mengenal Catalog View pg_stat_activity
- Mengurai Kolom Kunci: pid, usename, client_addr, state, query, dan query_start
- Mengidentifikasi Status Koneksi: active, idle, idle in transaction, dan idle in transaction (aborted)
- Tindakan Penyelamatan: Membatalkan Kueri (pg_cancel_backend) vs Memutuskan Koneksi (pg_terminate_backend)
- Latihan Kueri: Menampilkan 5 Kueri Terlama yang Sedang Berjalan

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail psql commands, SQL privileges script, memory configuration limits, autovacuum thresholds, pg_dump shell scripts, dan monitoring queries untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 06 Buku 03 Bab 04 (Lock Wait Timeout dan Observasi Lock).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
