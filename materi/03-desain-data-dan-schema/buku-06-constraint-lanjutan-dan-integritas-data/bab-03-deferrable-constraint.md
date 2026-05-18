# Bab 03: Deferrable Constraint

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 2 - Level 3 (Desain Data & Relasional)
*   **Buku**: [Buku 06: Constraint Lanjutan dan Integritas Data](./README.md)

---

## 1. Ringkasan Bab
Membahas mekanisme penangguhan validasi constraint (Deferrable Constraint) hingga akhir transaksi, memecahkan masalah pembaruan kunci melingkar (circular dependency).

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami perbedaan constraint Immediate vs Deferred.
- Menguasai cara menangguhkan validasi Foreign Key atau Unique Constraint untuk memfasilitasi bulk update kompleks.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Rak 03 Buku 02 Bab 02 (Foreign Key) dan Buku 06 Bab 01.

---

## 4. Rencana Outline Sub-Bab
- Siklus Evaluasi Constraint Standar (Immediate)
- Konsep Deferrable Constraint (DEFERRABLE INITIALLY IMMEDIATE / DEFERRED)
- Mengubah Status Validasi di Tengah Transaksi menggunakan "SET CONSTRAINTS"
- Kasus Circular Dependency (Dua Tabel Saling Merujuk)
- Risiko Performa Validasi yang Ditangguhkan

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, skema DDL demo, analogi visual, dan latihan kecil untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 06 (Transaksi, Concurrency, dan MVCC).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
