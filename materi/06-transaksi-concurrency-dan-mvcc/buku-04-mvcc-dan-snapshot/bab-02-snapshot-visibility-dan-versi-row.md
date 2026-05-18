# Bab 02: Snapshot Visibility dan Versi Row

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 5 - Level 6 (Intermediate-Expert)
*   **Buku**: [Buku 04: MVCC dan Snapshot](./README.md)

---

## 1. Ringkasan Bab
Membahas bagaimana PostgreSQL menentukan versi baris data (tuple) yang boleh dilihat oleh transaksi aktif menggunakan Snapshot data.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami konsep Snapshot database dan kriteria penentuan visibilitas tuple.
- Menjelaskan bagaimana isolation level Read Committed vs Repeatable Read memicu pembuatan snapshot yang berbeda.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 04 Bab 01 (Konsep MVCC di PostgreSQL).

---

## 4. Rencana Outline Sub-Bab
- Definisi Snapshot Database: Gambar Logis Keadaan Data pada Waktu Tertentu
- Kriteria Visibilitas Tuple Berdasarkan ID Transaksi Aktif
- Pembuatan Snapshot pada Read Committed (Snapshot Baru per Pernyataan Kueri)
- Pembuatan Snapshot pada Repeatable Read (Satu Snapshot untuk Seluruh Transaksi)
- Studi Kasus Aliran Logika Visibilitas saat Terjadi Update Konkuren

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan konsep concurrency, simulasi deadlock sclient, dan visualisasi tuple metadata xmin/xmax untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Buku 02 Bab 01 (Read Committed, Repeatable Read, dan Serializable).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
