# Bab 02: Window Functions Dasar

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 2 (Menengah)
*   **Buku**: [Buku 08: Set Operations dan Window Functions](./README.md)

---

## 1. Ringkasan Bab
Mengenalkan konsep Window Functions bawaan PostgreSQL menggunakan klausa OVER(), menulis kueri kalkulasi kumulatif dinamis tanpa mereduksi jumlah baris data.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami perbedaan mendasar GROUP BY (agregasi reduktif) vs Window Functions (agregasi non-reduktif).
- Menguasai penulisan sintaks OVER() dasar.
- Menggunakan fungsi agregasi (SUM, AVG) dan fungsi ranking (ROW_NUMBER, RANK, DENSE_RANK) dasar.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Rak 02 Buku 04 (Agregasi, Grouping, dan Having).

---

## 4. Rencana Outline Sub-Bab
- Keterbatasan GROUP BY yang Menyusutkan Jumlah Baris Data
- Definisi Window Functions dan Konsep "Window Frame"
- Sintaks Dasar: `FUNCTION() OVER ()`
- Menerapkan Urutan Baris dengan ORDER BY di dalam OVER
- Menggunakan Fungsi Rangking: ROW_NUMBER(), RANK(), dan DENSE_RANK()

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, kueri SQL demo, analogi visual, dan latihan kecil untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 02 Buku 04 Bab 02 (Mengelompokkan Data dengan GROUP BY).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
