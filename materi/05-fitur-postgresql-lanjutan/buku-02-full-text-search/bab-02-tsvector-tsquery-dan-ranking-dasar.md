# Bab 02: tsvector, tsquery, dan Ranking Dasar

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 4 - Level 5 (Intermediate Advanced)
*   **Buku**: [Buku 02: Full Text Search](./README.md)

---

## 1. Ringkasan Bab
Membahas implementasi FTS di PostgreSQL menggunakan tipe data tsvector (lexemes terindeks), tipe query tsquery, dan penilaian relevansi (ranking).

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Menguasai konversi teks biasa menjadi lexemes menggunakan fungsi to_tsvector.
- Menulis query pencarian kata logika menggunakan to_tsquery dan menilai relevansinya via ts_rank.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 02 Bab 01 (Konsep Full Text Search di PostgreSQL).

---

## 4. Rencana Outline Sub-Bab
- Mendalami Tipe Data tsvector dan Cara Konversi via to_tsvector
- Menyusun Filter Pencarian dengan tsquery dan Operator Logika (&, |, !)
- Menilai Kedekatan Kata Menggunakan to_tsquery dan Operator Phrase (<->)
- Menyortir Hasil Pencarian Berdasarkan Relevansi Menggunakan ts_rank dan ts_rank_cd
- Latihan Kasus: Membuat Fitur Pencarian Judul dan Konten Artikel Blog

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, demo query native, trigger PL/pgSQL, dan analisis monitoring extension untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 02 (SQL dan Querying).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
