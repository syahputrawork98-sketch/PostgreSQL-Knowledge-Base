# Bab 03: REINDEX dan Concurrent Index Operation (Pengantar)

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 5 - Level 6 (Advanced Diagnostics)
*   **Buku**: [Buku 06: Index Maintenance dan Trade-off Performa](./README.md)

---

## 1. Ringkasan Bab
Membahas teknik perbaikan indeks yang ter-bloat menggunakan perintah REINDEX secara aman menggunakan opsi CONCURRENTLY di lingkungan produksi.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Mampu membedakan perintah REINDEX standar (blocking) vs REINDEX CONCURRENTLY (non-blocking).
- Memahami prasyarat, batas aman, dan alur kerja internal operasi indeks secara konkuren di server aktif.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 06 Bab 02 (Index Bloat dan Maintenance (Pengantar)).

---

## 4. Rencana Outline Sub-Bab
- Mengembalikan Performa B-Tree: Kapan Harus Melakukan Pembangunan Ulang Indeks (Rebuilding)
- Bahaya REINDEX Standar: Mengunci Tabel untuk Operasi Tulis (Exclusive Lock)
- Solusi Online: CREATE INDEX CONCURRENTLY dan REINDEX CONCURRENTLY
- Alur Kerja Internal Operasi Concurrent (Dua Tahap Scan Tabel)
- Mengatasi Masalah Indeks Invalid (Invalid Indexes) Akibat Kegagalan Proses Concurrent

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail teknik indexing, demo visual EXPLAIN ANALYZE, parameter statistik histogram optimizer, dan refaktor anti-pattern SQL untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 08 DBA & Operasional.

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
