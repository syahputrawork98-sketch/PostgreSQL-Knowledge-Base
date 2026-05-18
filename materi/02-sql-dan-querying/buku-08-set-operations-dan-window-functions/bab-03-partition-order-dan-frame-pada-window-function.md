# Bab 03: Partition, Order, dan Frame pada Window Function

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 2 (Menengah)
*   **Buku**: [Buku 08: Set Operations dan Window Functions](./README.md)

---

## 1. Ringkasan Bab
Membahas pengelompokan data dinamis dalam Window Function menggunakan PARTITION BY, pengurutan, serta spesifikasi frame (ROWS/RANGE) untuk kalkulasi running-total tingkat lanjut.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Menguasai partisi data dinamis menggunakan klausa PARTITION BY di dalam OVER().
- Memahami kegunaan pengurutan data di dalam partisi.
- Menggunakan spesifikasi frame (ROWS BETWEEN) untuk merumuskan running total.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 08 Bab 02 (Window Functions Dasar).

---

## 4. Rencana Outline Sub-Bab
- Konsep Partisi Dinamis: PARTITION BY vs GROUP BY
- Mengombinasikan PARTITION BY dan ORDER BY di dalam OVER()
- Memahami Spesifikasi Frame (ROWS vs RANGE)
- Menulis Kueri Running Total (Kumulatif Dinamis)
- Menggunakan Fungsi Akses Baris Sekitar: LEAD() dan LAG() untuk Selisih Data

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, kueri SQL demo, analogi visual, dan latihan kecil untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 04 Buku 01 Bab 04 (Query untuk Fitur Aplikasi).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
