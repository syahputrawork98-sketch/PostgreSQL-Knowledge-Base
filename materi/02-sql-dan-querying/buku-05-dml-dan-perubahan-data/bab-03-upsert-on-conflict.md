# Bab 03: UPSERT (ON CONFLICT)

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 1 - Level 2 (Dasar ke Menengah)
*   **Buku**: [Buku 05: DML dan Perubahan Data](./README.md)

---

## 1. Ringkasan Bab
Membahas penanganan konflik penyisipan data unik (duplicate key) di PostgreSQL menggunakan perintah ON CONFLICT, baik melakukan modifikasi data (DO UPDATE) maupun mengabaikan (DO NOTHING).

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami anomali error Unique Violation di database transaksional.
- Menguasai penanganan konflik DML menggunakan klausa ON CONFLICT DO UPDATE.
- Menguasai cara mengabaikan konflik secara aman menggunakan ON CONFLICT DO NOTHING.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 05 Bab 02 (UPDATE, DELETE, dan RETURNING) dan Rak 03 Buku 02 Bab 03 (Constraint).

---

## 4. Rencana Outline Sub-Bab
- Masalah Duplikasi Kunci Unik dan Penolakan Database
- Sintaks Dasar ON CONFLICT DO NOTHING
- Sintaks Dasar ON CONFLICT DO UPDATE (UPSERT)
- Memanfaatkan Keyword EXCLUDED untuk Mengakses Nilai Input
- Studi Kasus: Hit Counter dan Sinkronisasi Profil User

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, kueri SQL demo, analogi visual, dan latihan kecil untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 03 Buku 02 Bab 03 (Check & Unique Constraint).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
