# Bab 05: N+1 Query dan Beban Database

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 5 - Level 6 (Advanced Diagnostics)
*   **Buku**: [Buku 05: Query Tuning Workflow dan Anti-Pattern](./README.md)

---

## 1. Ringkasan Bab
Membahas dampak destruktif dari masalah kueri berulang (N+1 Query) yang dipicu oleh ORM di aplikasi backend terhadap resource database server.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami mekanisme terjadinya N+1 query akibat pemanggilan query di dalam loop aplikasi.
- Mendiagnosis beban CPU dan lonjakan log database akibat N+1 query, serta cara mengatasinya menggunakan Eager Loading.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 05 Bab 04 (Pagination, Sorting, dan LIMIT Performance).

---

## 4. Rencana Outline Sub-Bab
- Definisi Masalah: 1 Kueri Utama, N Kueri Tambahan di dalam Loop Aplikasi
- Mengapa ORM (Object-Relational Mapping) Sering Membawa Masalah N+1 secara Tersembunyi (Lazy Loading)
- Dampak Buruk pada Database: Lonjakan Koneksi Aktif, Pemborosan Overhead Jaringan, dan Beban CPU Tinggi
- Mendiagnosis N+1 Query Menggunakan Log Kueri Berulang yang Identik
- Solusi Utama: Eager Loading (Preload/Join) dan Refaktor ke Native SQL Joint Query

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail teknik indexing, demo visual EXPLAIN ANALYZE, parameter statistik histogram optimizer, dan refaktor anti-pattern SQL untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 04 Buku 08 (Connection Pooling dan Trade-off Akses Data).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
