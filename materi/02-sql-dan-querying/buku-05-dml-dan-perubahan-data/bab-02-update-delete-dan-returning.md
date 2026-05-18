# Bab 02: UPDATE, DELETE, dan RETURNING

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 1 - Level 2 (Dasar ke Menengah)
*   **Buku**: [Buku 05: DML dan Perubahan Data](./README.md)

---

## 1. Ringkasan Bab
Membahas cara memperbarui (UPDATE) dan menghapus (DELETE) data secara aman di PostgreSQL menggunakan filter WHERE, bahaya kueri tanpa filter, serta pemanfaatan klausa RETURNING.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Menguasai manipulasi pembaruan dan penghapusan baris data secara aman.
- Memahami risiko operasional eksekusi DML tanpa WHERE dan langkah preventifnya.
- Memanfaatkan RETURNING untuk melacak data lama/baru pasca-operasi.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 05 Bab 01 (INSERT dan RETURNING) dan Rak 02 Buku 02 (Filtering).

---

## 4. Rencana Outline Sub-Bab
- Sintaks Dasar Perintah UPDATE dan Filter WHERE
- Sintaks Dasar Perintah DELETE dan Filter WHERE
- Risiko Besar Kueri Tanpa WHERE (Pembersihan Massal Tak Sengaja)
- Mengembalikan Data Terubah via RETURNING
- Batasan Penggunaan UPDATE/DELETE di Tabel Berelasi

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, kueri SQL demo, analogi visual, dan latihan kecil untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 03 Buku 02 Bab 02 (Foreign Key & Referential Integrity - ON DELETE CASCADE).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
