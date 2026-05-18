# Bab 04: Lock Wait Timeout dan Observasi Lock

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 5 - Level 6 (Intermediate-Expert)
*   **Buku**: [Buku 03: Locking dan Deadlock](./README.md)

---

## 1. Ringkasan Bab
Membahas pembatasan waktu tunggu lock menggunakan lock_timeout serta pengantar observasi transaksi yang menggantung (blocking queries).

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami pentingnya membatasi waktu tunggu transaksi via lock_timeout untuk menghindari penumpukan koneksi.
- Mengenal catalog view pg_locks dan pg_stat_activity untuk mengidentifikasi kueri yang memblokir transaksi lain.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 03 Bab 03 (Deadlock Detection dan Pencegahan).

---

## 4. Rencana Outline Sub-Bab
- Bahaya Transaksi Menggantung Tanpa Batas Waktu Tunggu
- Konfigurasi Batas Waktu Aman: Parameter lock_timeout
- Pengenalan Katalog Internal: pg_locks dan pg_stat_activity
- Kueri Diagnosis Dasar: Menemukan Siapa Memblokir Siapa (Blocked vs Blocking Sessions)
- Panduan Awal Penanganan Lock Bermasalah di Produksi

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan konsep concurrency, simulasi deadlock sclient, dan visualisasi tuple metadata xmin/xmax untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 08 DBA & Operasional.

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
