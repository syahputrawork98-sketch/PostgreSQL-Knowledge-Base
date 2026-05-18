# Bab 03: Inspeksi Database: Schema, Table, dan Index

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 3 - Level 4 (Developer-facing DBA Basics)
*   **Buku**: [Buku 02: psql dan Administrasi Harian](./README.md)

---

## 1. Ringkasan Bab
Membahas taktik inspeksi objek database secara visual menggunakan meta-commands pencarian detail.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Mampu menginspeksi struktur tabel, constraint, dan relasi relasional menggunakan \d.
- Mampu mencari skema, daftar view, sequence, dan indeks aktif secara cepat.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 02 Bab 02 (Meta-Command psql Dasar).

---

## 4. Rencana Outline Sub-Bab
- Meta-Command Utama Inspeksi: \d [nama_tabel]
- Menampilkan Daftar Skema (\dn) dan Daftar Tabel Aktif (\dt)
- Inspeksi Indeks Terkait (\di), Views (\dv), dan Sequences (\ds)
- Menampilkan Struktur Kolom, Tipe Data, Default Value, dan Constraint Secara Rinci
- Menggunakan Opsi Verbose (\d+) Untuk Informasi Ukuran Penyimpanan Fisik Objek

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail psql commands, SQL privileges script, memory configuration limits, autovacuum thresholds, pg_dump shell scripts, dan monitoring queries untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 03 (Desain Data dan Schema).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
