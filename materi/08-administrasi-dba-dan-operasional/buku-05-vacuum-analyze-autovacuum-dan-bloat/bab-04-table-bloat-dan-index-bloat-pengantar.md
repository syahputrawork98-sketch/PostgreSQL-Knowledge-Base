# Bab 04: Table Bloat dan Index Bloat (Pengantar)

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 6 - Level 7 (DBA & System Administration)
*   **Buku**: [Buku 05: VACUUM, ANALYZE, Autovacuum, dan Bloat](./README.md)

---

## 1. Ringkasan Bab
Membahas fenomena Table Bloat dan Index Bloat, kerugian performa I/O kueri, serta taktik diagnosis dasar.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami kerugian performa akibat bloat (database membaca file kosong/sampah dari disk).
- Mengenal query diagnosis standard untuk mendeteksi persentase bloat tabel/indeks.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 05 Bab 03 (ANALYZE dan Statistik Query Planner).

---

## 4. Rencana Outline Sub-Bab
- Definisi Bloat Fisik: File Tabel di Disk Terlalu Besar Dibanding Data Riil di Dalamnya
- Bagaimana Bloat Merusak Performa Pemindaian Data (Seq Scan Membaca Halaman Kosong)
- Index Bloat: Kerusakan Efisiensi Struktur Pohon B-Tree
- Taktik Pemulihan Indeks yang Bloat Menggunakan CREATE INDEX CONCURRENTLY
- Pengenalan Query Diagnosis Bloat Berbasis Perkiraan Statistik

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail psql commands, SQL privileges script, memory configuration limits, autovacuum thresholds, pg_dump shell scripts, dan monitoring queries untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 07 Buku 06 (Index Maintenance dan Trade-off Performa).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
