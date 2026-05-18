# Bab 03: Anti-Pattern: LIKE Leading Wildcard, OR, dan Function di WHERE

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 5 - Level 6 (Advanced Diagnostics)
*   **Buku**: [Buku 05: Query Tuning Workflow dan Anti-Pattern](./README.md)

---

## 1. Ringkasan Bab
Membahas tiga kesalahan penulisan kueri (Anti-Patterns) terpopuler yang mematikan kinerja indeks, serta cara menulis ulang kueri tersebut secara efisien.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Mengidentifikasi dan memperbaiki query LIKE ber-wildcard depan (LIKE '%abc').
- Mengganti operator OR yang memicu Seq Scan menggunakan UNION/UNION ALL atau operator IN, serta meluruskan pemakaian fungsi di WHERE.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 05 Bab 02 (Index Tidak Dipakai dan Penyebabnya).

---

## 4. Rencana Outline Sub-Bab
- Anti-Pattern 1: LIKE dengan Persentase di Depan (LIKE '%keyword') dan Solusi pg_trgm
- Anti-Pattern 2: Operator OR pada Kolom Berbeda (Memicu Seq Scan) dan Solusi UNION / UNION ALL
- Anti-Pattern 3: Membungkus Kolom Indeks di dalam Fungsi WHERE (LOWER(nama) = 'budi') dan Solusi Expression Index
- Anti-Pattern 4: Penggunaan Klausul NOT EQUAL (<>) yang Inheren Tidak Efisien untuk Indeks

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail teknik indexing, demo visual EXPLAIN ANALYZE, parameter statistik histogram optimizer, dan refaktor anti-pattern SQL untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 02 (SQL dan Querying).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
