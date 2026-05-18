# Bab 01: SQL Function dan PL/pgSQL (Pengantar)

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 4 - Level 5 (Intermediate Advanced)
*   **Buku**: [Buku 04: Function, Procedure, dan Trigger](./README.md)

---

## 1. Ringkasan Bab
Pengantar penulisan fungsi database menggunakan bahasa SQL murni dan bahasa prosedural PL/pgSQL di PostgreSQL.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Membedakan SQL Function (inlineable) vs PL/pgSQL Function (prosedural).
- Menulis fungsi prosedural sederhana menggunakan deklarasi variabel, blok BEGIN-END, dan kontrol alur.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Rak 02 Buku 06 Bab 03 (Ekspresi, Casting, dan Function Dasar).

---

## 4. Rencana Outline Sub-Bab
- Mengapa Menggunakan UDF (User-Defined Function) di Tingkat Database
- Menulis SQL Function Sederhana dan Memahami Konsep Inline Optimization
- Pengenalan Arsitektur Bahasa Prosedural PL/pgSQL
- Struktur Kode PL/pgSQL: Deklarasi Variabel, Blok Kode, Percabangan (IF/CASE), dan Perulangan (LOOP)
- Memahami Penanganan Parameter Masukan (IN, OUT, INOUT) dan Nilai Kembalian (RETURNS SETOF)

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, demo query native, trigger PL/pgSQL, dan analisis monitoring extension untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 02 Buku 06 (NULL, Predicate, dan Ekspresi SQL).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
