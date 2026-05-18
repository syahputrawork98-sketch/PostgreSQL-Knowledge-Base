# Bab 01: Konsep MVCC di PostgreSQL

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 5 - Level 6 (Intermediate-Expert)
*   **Buku**: [Buku 04: MVCC dan Snapshot](./README.md)

---

## 1. Ringkasan Bab
Membahas konsep utama Multi-Version Concurrency Control (MVCC) di PostgreSQL yang memungkinkan pembacaan dan penulisan konkuren berjalan tanpa saling memblokir.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami slogan emas database modern: "Readers do not block Writers, and Writers do not block Readers".
- Membandingkan keunggulan arsitektur MVCC dibanding arsitektur database tradisional berbasis locking total.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 02 Bab 02 (Dirty Read, Non-Repeatable Read, dan Phantom Read).

---

## 4. Rencana Outline Sub-Bab
- Latar Belakang: Masalah Skalabilitas Sistem Jika Pembacaan Menunggu Penulisan
- Filosofi Multi-Version Concurrency Control (MVCC)
- Bagaimana MVCC Mewujudkan Prinsip "Readers Do Not Block Writers, Writers Do Not Block Readers"
- Dampak Terhadap Penyimpanan: Satu Baris Data Memiliki Banyak Versi Fisik (Tuple)
- Perbandingan Filosofis: MVCC PostgreSQL vs Mesin Database Lain

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan konsep concurrency, simulasi deadlock sclient, dan visualisasi tuple metadata xmin/xmax untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 03 Buku 03 Bab 03 (Dampak Desain pada Performa).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
