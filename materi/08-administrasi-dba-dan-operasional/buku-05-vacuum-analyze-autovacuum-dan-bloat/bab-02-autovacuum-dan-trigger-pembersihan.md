# Bab 02: Autovacuum dan Trigger Pembersihan

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 6 - Level 7 (DBA & System Administration)
*   **Buku**: [Buku 05: VACUUM, ANALYZE, Autovacuum, dan Bloat](./README.md)

---

## 1. Ringkasan Bab
Membahas daemon otomatis Autovacuum di PostgreSQL, rumus pemicuan aktivitas pembersihan, serta parameter tuning dasar.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami parameter pemicu autovacuum (scale factor dan threshold).
- Mendiagnosis kemacetan autovacuum akibat transaksi panjang.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 05 Bab 01 (VACUUM dan Dead Tuple).

---

## 4. Rencana Outline Sub-Bab
- Mengenal Daemon Autovacuum: Pekerja Latar Belakang (Background Worker)
- Rumus Matematis Pemicuan Autovacuum: autovacuum_vacuum_threshold + autovacuum_vacuum_scale_factor * number_of_tuples
- Dampak Transaksi Menggantung (Long-running Transactions) yang Menghambat Kerja Autovacuum
- Tuning Kecepatan Autovacuum: autovacuum_vacuum_cost_limit dan autovacuum_vacuum_cost_delay
- Praktik Terbaik: Mengapa Autovacuum Tidak Boleh Dimatikan di Produksi

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail psql commands, SQL privileges script, memory configuration limits, autovacuum thresholds, pg_dump shell scripts, dan monitoring queries untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 06 Buku 03 Bab 04 (Lock Wait Timeout dan Observasi Lock).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
