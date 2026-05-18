# Bab 04: WAL Archiving dan PITR (Pengantar)

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 3 - Level 4 (Developer-facing DBA Basics) / Level 6 - Level 7 (DBA & System Administration)
*   **Buku**: [Buku 06: Backup, Restore, dan PITR Pengantar](./README.md)

---

## 1. Ringkasan Bab
Membahas pengarsipan log transaksi (WAL Archiving) serta konsep Point-in-Time Recovery (PITR) untuk pemulihan waktu spesifik.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami fungsi Write-Ahead Log (WAL) sebagai perekam kronologis seluruh modifikasi data.
- Memahami alur kerja PITR (menggabungkan basebackup fisik dengan file pengarsipan WAL).

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 06 Bab 03 (Physical Backup (Pengantar)).

---

## 4. Rencana Outline Sub-Bab
- Write-Ahead Log (WAL) Sebagai Source of Truth Perubahan Data
- Konseptual Pengarsipan WAL: Menyalin Berkas WAL yang Penuh ke Media Penyimpanan Sekunder (WAL Archiving)
- Cara Kerja Point-in-Time Recovery (PITR): Memutar Ulang Sejarah Log Transaksi
- Skenario PITR: Memulihkan Database ke Detik Tepat Sebelum Terjadi Blunder Operasional (Tabel Terhapus)
- Parameter Konfigurasi Utama: archive_mode, archive_command, dan restore_command

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail psql commands, SQL privileges script, memory configuration limits, autovacuum thresholds, pg_dump shell scripts, dan monitoring queries untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Buku 04 Bab 01 (postgresql.conf dan Konsep Konfigurasi).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
