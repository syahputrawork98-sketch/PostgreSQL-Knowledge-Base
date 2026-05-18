# Bab 01: VACUUM dan Dead Tuple

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 6 - Level 7 (DBA & System Administration)
*   **Buku**: [Buku 05: VACUUM, ANALYZE, Autovacuum, dan Bloat](./README.md)

---

## 1. Ringkasan Bab
Membahas kelanjutan konsep internal MVCC mengenai dead tuples dan cara kerja perintah VACUUM standar untuk membersihkan ruang penyimpanan.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami mengapa operasi DELETE/UPDATE menyisakan sampah fisik (Dead Tuples).
- Mampu membedakan utilitas VACUUM biasa (non-blocking) vs VACUUM FULL (blocking total).

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Rak 06 Buku 04 Bab 04 (VACUUM, Bloat, dan Hubungannya dengan MVCC).

---

## 4. Rencana Outline Sub-Bab
- Mengapa Update/Delete Fisik Tidak Langsung Menghapus Baris dari Disk
- Definisi Dead Tuple (Baris Sampah) dan Dampak Penumpukannya
- Mekanisme VACUUM Standar: Mengosongkan Baris untuk Digunakan Kembali (Tanpa Melepas Disk ke OS)
- Mekanisme VACUUM FULL: Membangun Ulang Tabel untuk Mengecilkan File Disk (Mengunci Tabel Secara Eksklusif)
- Kapan Harus Menggunakan VACUUM secara Manual

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail psql commands, SQL privileges script, memory configuration limits, autovacuum thresholds, pg_dump shell scripts, dan monitoring queries untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 06 Buku 04 (MVCC dan Snapshot).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
