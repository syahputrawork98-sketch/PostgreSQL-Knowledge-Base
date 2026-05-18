# Bab 03: Physical Backup (Pengantar)

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 3 - Level 4 (Developer-facing DBA Basics) / Level 6 - Level 7 (DBA & System Administration)
*   **Buku**: [Buku 06: Backup, Restore, dan PITR Pengantar](./README.md)

---

## 1. Ringkasan Bab
Membahas pengenalan konsep Physical Backup (pencadangan biner fisik direktori data) untuk database skala besar multi-terabyte.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami mengapa logical backup (pg_dump) tidak lagi efisien untuk database ukuran sangat besar.
- Mengenal perkakas internal `pg_basebackup` untuk melakukan pencadangan fisik biner.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 06 Bab 02 (Restore dengan psql dan pg_restore).

---

## 4. Rencana Outline Sub-Bab
- Tantangan Skalabilitas: Mengapa pg_dump Sangat Lambat untuk Database Skala Multi-Terabyte
- Definisi Physical Backup: Menyalin Berkas Fisik Biner (Data Files, Kontrol, WAL) Klaster
- Cara Kerja Utilitas Native `pg_basebackup`
- Memahami Konsep Hot Backup (Backup Saat Database Sedang Berjalan dan Melayani Transaksi)
- Keunggulan Physical Backup: Waktu Pemulihan (RTO) yang Jauh Lebih Cepat dibanding SQL logical restore

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail psql commands, SQL privileges script, memory configuration limits, autovacuum thresholds, pg_dump shell scripts, dan monitoring queries untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 03 (Desain Data dan Schema).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
