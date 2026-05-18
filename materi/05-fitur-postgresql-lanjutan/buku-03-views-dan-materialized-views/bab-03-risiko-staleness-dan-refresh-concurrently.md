# Bab 03: Risiko Staleness dan Refresh Concurrently

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 4 - Level 5 (Intermediate Advanced)
*   **Buku**: [Buku 03: Views dan Materialized Views](./README.md)

---

## 1. Ringkasan Bab
Membahas konsekuensi keusangan data (Staleness) pada Materialized View serta solusi pembaruan non-blocking menggunakan opsi CONCURRENTLY.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami risiko keusangan data analitik (Staleness) di tingkat aplikasi bisnis.
- Menguasai pembaruan Materialized View secara online menggunakan REFRESH MATERIALIZED VIEW CONCURRENTLY.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 03 Bab 02 (Materialized View dan Refresh Strategy).

---

## 4. Rencana Outline Sub-Bab
- Definisi Data Staleness: Batasan Keusangan Data Laporan yang Dapat Diterima Bisnis
- Masalah Table-Locking Selama Pembaruan REFRESH Biasa (Blocking Read Operations)
- Cara Kerja REFRESH CONCURRENTLY untuk Pembaruan Online Non-Blocking
- Prasyarat Wajib CONCURRENTLY: Kehadiran Unique Index pada Materialized View
- Merancang Scheduler Pembaruan Otomatis (Cron Job/pg_cron) di Sisi Server

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, demo query native, trigger PL/pgSQL, dan analisis monitoring extension untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 08 (Administrasi, DBA, dan Operasional).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
