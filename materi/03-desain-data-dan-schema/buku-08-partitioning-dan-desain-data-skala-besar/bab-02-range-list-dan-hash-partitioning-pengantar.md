# Bab 02: Range, List, dan Hash Partitioning (Pengantar)

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 2 - Level 3 (Desain Data & Relasional)
*   **Buku**: [Buku 08: Partitioning dan Desain Data Skala Besar](./README.md)

---

## 1. Ringkasan Bab
Membahas tiga metode partisi deklaratif bawaan PostgreSQL: partisi rentang (Range), partisi daftar (List), dan partisi acak seimbang (Hash).

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Menguasai sintaks dasar pembuatan Range, List, dan Hash Partitioning.
- Memahami skenario bisnis yang paling tepat untuk masing-masing metode partisi.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 08 Bab 01 (Partitioning Sebagai Desain Data).

---

## 4. Rencana Outline Sub-Bab
- Range Partitioning: Metode Terbaik untuk Data Berdasarkan Waktu/Tanggal
- List Partitioning: Mengelompokkan Data Berdasarkan Kategori Wilayah/Status
- Hash Partitioning: Membagi Beban Tulis secara Merata pada Tabel Transaksi
- Sintaks Deklaratif "PARTITION BY" dan "CREATE TABLE ... PARTITION OF"
- Mengelola Partisi Default untuk Mencegah Error Data Tak Terpetakan

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, skema DDL demo, analogi visual, dan latihan kecil untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 03 Buku 01 Bab 02 (Pembuatan Table and Data Type).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
