# Bab 03: JSONB Indexing (Pengantar)

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 4 - Level 5 (Intermediate Advanced)
*   **Buku**: [Buku 01: JSONB dan Semi-Structured Data](./README.md)

---

## 1. Ringkasan Bab
Pengenalan teknik pengindeksan data JSONB menggunakan Index GIN (Generalized Inverted Index) untuk mempercepat pencarian data semi-terstruktur.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami cara kerja Index GIN dalam mengindeks setiap kunci dan nilai di dalam JSONB.
- Mampu membandingkan performa pencarian JSONB sebelum dan sesudah menerapkan GIN Index.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 01 Bab 02 (Query JSONB Dasar).

---

## 4. Rencana Outline Sub-Bab
- Tantangan Kinerja Kueri JSONB Tanpa Indeks
- Apa Itu Generalized Inverted Index (GIN) dan Cara Kerjanya
- Sintaks Pembuatan GIN Index pada Kolom JSONB
- Memilih Kelas Operator GIN: jsonb_ops (Default) vs jsonb_path_ops (Optimasi Ukuran)
- Menguji Kecepatan Query GIN Indexing Menggunakan EXPLAIN

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, demo query native, trigger PL/pgSQL, dan analisis monitoring extension untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 07 (Indexing, Query Planner, dan Performance).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
