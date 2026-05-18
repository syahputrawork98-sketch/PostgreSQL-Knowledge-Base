# Bab 02: Exclusion Constraint

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 2 - Level 3 (Desain Data & Relasional)
*   **Buku**: [Buku 06: Constraint Lanjutan dan Integritas Data](./README.md)

---

## 1. Ringkasan Bab
Membahas konsep dan penerapan Exclusion Constraint di PostgreSQL untuk mencegah tumpang tindih (overlap) data jangkauan waktu atau pemesanan barang konkuren.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami keterbatasan Unique Constraint standar dalam menangani logika non-overlapping.
- Menguasai pembuatan Exclusion Constraint menggunakan GIST index untuk mencegah tumpang tindih waktu.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 06 Bab 01 (Unique Constraint, Unique Index, dan Partial Unique Index) dan Buku 05 Bab 04 (Range Types).

---

## 4. Rencana Outline Sub-Bab
- Tantangan Logika Bisnis Overlapping (Pemesanan Kamar / Booking Jadwal)
- Konsep Exclusion Constraint: Mengeneralisasi Konsep Unique
- Prasyarat Penggunaan Indeks GiST (Generalized Search Tree)
- Sintaks EXCLUDE USING gist dengan Operator Overlap (&&)
- Studi Kasus: Sistem Pemesanan Kamar Hotel Tanpa Double Booking

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, skema DDL demo, analogi visual, dan latihan kecil untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 06 (Transaksi, Concurrency, dan MVCC).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
