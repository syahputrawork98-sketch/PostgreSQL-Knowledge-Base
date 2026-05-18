# Bab 02: Query JSONB Dasar

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 4 - Level 5 (Intermediate Advanced)
*   **Buku**: [Buku 01: JSONB dan Semi-Structured Data](./README.md)

---

## 1. Ringkasan Bab
Membahas penggunaan operator pencarian dan fungsi manipulasi data JSONB bawaan PostgreSQL.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Menguasai penggunaan operator panah (->, ->>) dan operator pencocokan kontainer (@>, <@).
- Mampu memperbarui, menambah, atau menghapus elemen di dalam objek/array JSONB secara terprogram.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 01 Bab 01 (JSON vs JSONB dan Use Case).

---

## 4. Rencana Outline Sub-Bab
- Operator Akses Nilai: -> (Objek/Array JSONB) dan ->> (Teks/String)
- Operator Containment & Existence: @> (Mengandung) dan ? (Mencari Key)
- Fungsi Manipulasi JSONB: jsonb_set, jsonb_insert, dan jsonb_strip_nulls
- Melakukan De-strukturisasi JSONB ke Baris Relasional Menggunakan jsonb_to_record / jsonb_to_recordset
- Latihan Menulis Query Pencarian Produk Berdasarkan Atribut Dinamis

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, demo query native, trigger PL/pgSQL, dan analisis monitoring extension untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 02 (SQL dan Querying).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
