# Bab 02: SELECT FOR UPDATE dan Pessimistic Locking

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 5 - Level 6 (Intermediate-Expert)
*   **Buku**: [Buku 03: Locking dan Deadlock](./README.md)

---

## 1. Ringkasan Bab
Membahas implementasi Pessimistic Locking di PostgreSQL menggunakan klausa SELECT ... FOR UPDATE untuk mengunci baris data saat dibaca.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Menguasai penulisan query pessimistic locking menggunakan SELECT FOR UPDATE, FOR SHARE, NOWAIT, dan SKIP LOCKED.
- Mengevaluasi trade-off performa dan risiko kemacetan sistem akibat over-locking.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 03 Bab 01 (Row Lock, Table Lock, dan Lock Mode (Pengantar)).

---

## 4. Rencana Outline Sub-Bab
- Konsep Pessimistic Locking: Amankan Baris Sebelum Dimodifikasi
- Sintaks SELECT ... FOR UPDATE dan Perbedaannya dengan SELECT ... FOR SHARE
- Menghindari Blocking dengan NOWAIT (Error Instan jika Terkunci)
- Membangun Queue System Berkinerja Tinggi Menggunakan SKIP LOCKED
- Risiko Degradasi Performa: Menghindari Kueri Transaksi Panjang yang Menahan Row Locks

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan konsep concurrency, simulasi deadlock sclient, dan visualisasi tuple metadata xmin/xmax untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 04 Buku 06 Bab 03 (Race Condition di Level Aplikasi).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
