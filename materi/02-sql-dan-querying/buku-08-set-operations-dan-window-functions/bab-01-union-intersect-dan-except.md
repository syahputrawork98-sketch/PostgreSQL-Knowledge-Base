# Bab 01: UNION, INTERSECT, dan EXCEPT

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 2 (Menengah)
*   **Buku**: [Buku 08: Set Operations dan Window Functions](./README.md)

---

## 1. Ringkasan Bab
Membahas kueri operasi himpunan untuk menggabungkan hasil kueri secara vertikal menggunakan UNION, menyaring irisan data dengan INTERSECT, serta mengecualikan himpunan data dengan EXCEPT.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Menguasai penggabungan hasil kueri terstandar menggunakan UNION dan UNION ALL.
- Memahami perbedaan performa dan eliminasi duplikasi UNION vs UNION ALL.
- Menggunakan INTERSECT dan EXCEPT secara tepat untuk analisis himpunan data.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Rak 02 Buku 01 (Query SELECT).

---

## 4. Rencana Outline Sub-Bab
- Konsep Aljabar Himpunan di SQL (Penggabungan Vertikal vs JOIN Horizontal)
- Aturan Jumlah dan Tipe Data Kolom yang Kompatibel
- Sintaks Perintah UNION dan UNION ALL (Serta Perbedaan Kinerjanya)
- Mencari Irisan Data dengan INTERSECT
- Menyaring Selisih Data dengan EXCEPT/MINUS

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, kueri SQL demo, analogi visual, dan latihan kecil untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 02 Buku 03 (JOIN dan Relasi Query).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
