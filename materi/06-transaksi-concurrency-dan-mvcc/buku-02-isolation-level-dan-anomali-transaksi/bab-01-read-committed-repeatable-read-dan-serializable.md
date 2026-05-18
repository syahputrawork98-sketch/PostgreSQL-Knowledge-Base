# Bab 01: Read Committed, Repeatable Read, dan Serializable

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 5 - Level 6 (Intermediate-Expert)
*   **Buku**: [Buku 02: Isolation Level dan Anomali Transaksi](./README.md)

---

## 1. Ringkasan Bab
Membahas 3 isolation level aktif di PostgreSQL serta standar ANSI SQL untuk memisahkan transaksi konkuren.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami perbedaan fungsional antara Read Committed (default), Repeatable Read, dan Serializable di PostgreSQL.
- Menyadari bahwa Read Uncommitted di PostgreSQL berperilaku sama seperti Read Committed.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 01 Bab 03 (BEGIN, COMMIT, ROLLBACK, dan SAVEPOINT).

---

## 4. Rencana Outline Sub-Bab
- Tujuan Tingkat Isolasi: Menyeimbangkan Performa vs Keamanan Concurrency
- Read Committed: Level Default PostgreSQL dan Cara Kerjanya
- Repeatable Read: Menjamin Snapshot Data yang Konsisten Selama Transaksi
- Serializable: Garansi Isolasi Sempurna Setara Eksekusi Serial
- Tabel Komparasi Perilaku Level Isolasi di PostgreSQL vs Standar ANSI SQL

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan konsep concurrency, simulasi deadlock sclient, dan visualisasi tuple metadata xmin/xmax untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 04 Buku 01 (PostgreSQL dalam Aplikasi Backend).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
