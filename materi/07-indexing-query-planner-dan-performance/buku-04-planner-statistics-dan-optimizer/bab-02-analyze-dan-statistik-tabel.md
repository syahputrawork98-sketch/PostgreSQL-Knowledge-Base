# Bab 02: ANALYZE dan Statistik Tabel

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 5 - Level 6 (Advanced Diagnostics)
*   **Buku**: [Buku 04: Planner Statistics dan Optimizer](./README.md)

---

## 1. Ringkasan Bab
Membahas utilitas ANALYZE di PostgreSQL untuk mengumpulkan dan memperbarui statistik tabel demi memelihara akurasi perencanaan kueri.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami fungsi perintah ANALYZE dan perbedaannya dengan VACUUM.
- Mengenal catalog view pg_stats untuk melihat nilai Most Common Values (MCV) dan histogram selektivitas kolom.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 04 Bab 01 (Statistics, Selectivity, dan Cardinality).

---

## 4. Rencana Outline Sub-Bab
- Mengapa Statistik Tabel Bisa Usang dan Kapan Wajib Diperbarui
- Perintah ANALYZE: Sintaks Dasar dan Cara Kerja Sampling Baris
- Mendalami Catalog View pg_stats: Most Common Values (MCV), Histogram, dan n_distinct
- Parameter default_statistics_target: Mengatur Akurasi Statistik Kolom
- Peran Autovacuum Daemon dalam Menjalankan Auto-Analyze secara Berkala

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail teknik indexing, demo visual EXPLAIN ANALYZE, parameter statistik histogram optimizer, dan refaktor anti-pattern SQL untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 08 DBA & Operasional.

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
