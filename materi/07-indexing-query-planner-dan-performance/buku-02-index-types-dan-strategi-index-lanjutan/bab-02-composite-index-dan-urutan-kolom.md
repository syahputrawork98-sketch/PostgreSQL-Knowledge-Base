# Bab 02: Composite Index dan Urutan Kolom

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 5 - Level 6 (Advanced Diagnostics)
*   **Buku**: [Buku 02: Index Types dan Strategi Index Lanjutan](./README.md)

---

## 1. Ringkasan Bab
Membahas aturan pembuatan Composite Index (indeks multi-kolom), signifikansi urutan kolom (Leading Column), serta fenomena Index Skip Scan.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Mampu merancang indeks multi-kolom yang optimal berdasarkan tingkat selektivitas data.
- Memahami mengapa urutan kolom dalam indeks komposit sangat menentukan apakah indeks tersebut akan digunakan atau diabaikan oleh optimizer.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 02 Bab 01 (B-Tree Index Lebih Dalam).

---

## 4. Rencana Outline Sub-Bab
- Definisi Composite Index: Menggabungkan Beberapa Atribut dalam Satu Pohon Indeks
- Pentingnya Leading Column (Kolom Pertama): Aturan Kiri-ke-Kanan
- Menentukan Urutan Kolom Berdasarkan Kueri Filtering vs Sorting
- Kapan Composite Index Digunakan Sebagian (Partial Match)
- Memahami Konsep Index Skip Scan di PostgreSQL

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail teknik indexing, demo visual EXPLAIN ANALYZE, parameter statistik histogram optimizer, dan refaktor anti-pattern SQL untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 03 (Desain Data dan Schema).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
