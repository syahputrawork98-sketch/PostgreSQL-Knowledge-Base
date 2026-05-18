# Bab 02: Index Tidak Dipakai dan Penyebabnya

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 5 - Level 6 (Advanced Diagnostics)
*   **Buku**: [Buku 05: Query Tuning Workflow dan Anti-Pattern](./README.md)

---

## 1. Ringkasan Bab
Membahas berbagai alasan teknis mengapa indeks yang sudah dibuat diabaikan (di-scan secara sequential) oleh query optimizer.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Menganalisis mengapa optimizer lebih memilih Seq Scan meskipun indeks tersedia.
- Mengatasi masalah index ignore akibat tipe data mismatch (Implicit Casting) atau operator class salah.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 05 Bab 01 (Workflow Menganalisis Query Lambat).

---

## 4. Rencana Outline Sub-Bab
- Mitos: "Bila Ada Indeks, Database Pasti Menggunakannya"
- Penyebab 1: Tabel Terlalu Kecil (Seq Scan Lebih Murah dibanding I/O Indeks)
- Penyebab 2: Selektivitas Rendah (Kueri Mengambil Lebih dari 15-20% Total Baris Tabel)
- Penyebab 3: Implicit Type Casting (Ketidakcocokan Tipe Data Filter vs Kolom Indeks)
- Penyebab 4: Penggunaan Operator Pencocokan yang Tidak Didukung Kelas Operator Indeks B-Tree

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail teknik indexing, demo visual EXPLAIN ANALYZE, parameter statistik histogram optimizer, dan refaktor anti-pattern SQL untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 03 Buku 05 (Tipe Data PostgreSQL untuk Desain Schema).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
