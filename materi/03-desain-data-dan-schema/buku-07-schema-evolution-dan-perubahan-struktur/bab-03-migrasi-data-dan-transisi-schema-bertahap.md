# Bab 03: Migrasi Data dan Transisi Schema Bertahap

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 2 - Level 3 (Desain Data & Relasional)
*   **Buku**: [Buku 07: Schema Evolution dan Perubahan Struktur](./README.md)

---

## 1. Ringkasan Bab
Membahas strategi memindahkan jutaan data lama ke struktur skema baru secara bertahap menggunakan batching kueri untuk mencegah kehabisan lock memori dan downtime.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Menguasai teknik migrasi data latar belakang (background data migration) pada tabel berukuran gigabyte.
- Membuat trigger sinkronisasi sementara untuk menjembatani penulisan data ganda.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 07 Bab 02 (Backward-Compatible Schema Change).

---

## 4. Rencana Outline Sub-Bab
- Bahaya Update Jutaan Baris Data dalam Satu Transaksi Monolitik
- Teknik Batching Update menggunakan Primary Key Chunking
- Memasang Trigger Sinkronisasi Sementara untuk Penulisan Ganda (Dual-Write)
- Memverifikasi Integritas Data Pasca-Migrasi
- Membersihkan Trigger dan Kolom Lama (Fase Contract Akhir)

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, skema DDL demo, analogi visual, dan latihan kecil untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 04 Buku 03 Bab 01 (Apa Itu Database Migration).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
