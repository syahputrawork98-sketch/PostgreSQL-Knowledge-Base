# Bab 02: Dirty Read, Non-Repeatable Read, dan Phantom Read

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 5 - Level 6 (Intermediate-Expert)
*   **Buku**: [Buku 02: Isolation Level dan Anomali Transaksi](./README.md)

---

## 1. Ringkasan Bab
Mendalami berbagai jenis anomali transaksi konkuren (Dirty Read, Non-Repeatable Read, Phantom Read, dan Serialization Anomaly) beserta cara PostgreSQL mengatasinya.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Mengidentifikasi penyebab dan skenario terjadinya anomali Non-Repeatable Read dan Phantom Read.
- Memahami mengapa Dirty Read secara inheren mustahil terjadi di PostgreSQL.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 02 Bab 01 (Read Committed, Repeatable Read, dan Serializable).

---

## 4. Rencana Outline Sub-Bab
- Dirty Read: Membaca Data Uncommitted (Mengapa PostgreSQL Bebas dari Dirty Read)
- Non-Repeatable Read (Fuzzy Read): Nilai Baris yang Berubah di Tengah Jalan
- Phantom Read: Baris Baru yang Tiba-tiba Muncul Akibat Insert Transaksi Lain
- Serialization Anomaly: Anomali Persilangan Logika Tulis (Write Skew)
- Demonstrasi Kasus Anomali Transaksi Melalui Simulasi Multi-Sesi Client

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan konsep concurrency, simulasi deadlock sclient, dan visualisasi tuple metadata xmin/xmax untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 02 (SQL dan Querying).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
