# Bab 05: Join, Sort, Hash, dan Materialize Nodes

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 5 - Level 6 (Advanced Diagnostics)
*   **Buku**: [Buku 03: EXPLAIN ANALYZE dan Query Plan](./README.md)

---

## 1. Ringkasan Bab
Membahas analisis query plan node untuk operasi penggabungan (Nested Loop, Merge Join, Hash Join), pengurutan (Sort), pembentukan tabel hash (Hash), dan caching (Materialize).

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Mengidentifikasi tiga jenis algoritma Join bawaan PostgreSQL optimizer.
- Membaca node Sort (Top-N heapsort vs External disk merge) dan mendeteksi konsumsi memori work_mem.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 03 Bab 04 (Plan Nodes: Seq Scan, Index Scan, dan Bitmap Scan).

---

## 4. Rencana Outline Sub-Bab
- Tiga Algoritma Gabung Utama: Nested Loop (Ideal untuk Data Kecil/Terkunci Indeks)
- Merge Join: Ideal untuk Data Terurut Skala Besar
- Hash Join: Membangun In-Memory Hash Table untuk Pencocokan Cepat
- Sort Node: Menelaah Pengurutan di Memori (QuickSort) vs Disk (External Merge) Akibat work_mem Terbatas
- Materialize Node: Melakukan Caching Hasil Sub-Kueri untuk Penggunaan Berulang

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail teknik indexing, demo visual EXPLAIN ANALYZE, parameter statistik histogram optimizer, dan refaktor anti-pattern SQL untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 02 Buku 03 (SQL JOIN dan Set Operations).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
