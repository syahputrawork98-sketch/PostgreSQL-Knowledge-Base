# Bab 01: Workflow Menganalisis Query Lambat

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 5 - Level 6 (Advanced Diagnostics)
*   **Buku**: [Buku 05: Query Tuning Workflow dan Anti-Pattern](./README.md)

---

## 1. Ringkasan Bab
Membahas panduan langkah demi langkah (Standard Operating Procedure) untuk mendeteksi, mendiagnosis, dan memulihkan performa kueri lambat skala produksi secara aman.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Menguasai workflow standar mulai dari identifikasi kueri lambat, pembacaan plan, hingga penerapan indeks/refaktor kueri.
- Menjaga keamanan database produksi selama proses diagnosis kueri.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 03 Bab 03 (Buffers dan I/O pada Query Plan).

---

## 4. Rencana Outline Sub-Bab
- Langkah 1: Identifikasi Kueri Lambat (Melalui pg_stat_statements atau log_min_duration_statement)
- Langkah 2: Menangkap Query Plan secara Aman (Gunakan EXPLAIN ANALYZE di Staging / ROLLBACK di Prod)
- Langkah 3: Menemukan Hambatan Utama (Seq Scan Raksasa, Disk Merge Sort, I/O Buffers Tinggi)
- Langkah 4: Merancang Solusi Hipotesis (Taktik Indeks, Extended Stats, Refaktor Query SQL)
- Langkah 5: Validasi Hasil dan Monitoring Dampak Pasca Rilis

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail teknik indexing, demo visual EXPLAIN ANALYZE, parameter statistik histogram optimizer, dan refaktor anti-pattern SQL untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 04 Buku 05 (Connection Pooling dan Trade-off Akses Data).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
