# Buku 04: Function, Procedure, dan Trigger

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 05: Fitur PostgreSQL Lanjutan](../README.md)
*   **Target Level**: Level 4 - Level 5 (Intermediate Advanced)
*   **Tipe Materi**: Fitur Analitik & Pemrograman Database

---

## 1. Tujuan Buku
Buku ini memperkenalkan pemrograman prosedural di dalam PostgreSQL kernel, meliputi penulisan SQL Functions dan bahasa prosedural PL/pgSQL, merancang Stored Procedures transaksional yang mampu mengontrol COMMIT/ROLLBACK, otomasi tugas baris data menggunakan Trigger, serta analisis arsitektur mengenai pro-kontra penempatan logika bisnis (business logic) di database server.

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu menulis query JSONB dasar dan merancang indexing GIN secara efisien, mengimplementasikan FTS (Full Text Search) dengan to_tsvector/tsquery ter-indeks, membuat standard Views untuk proteksi data, merancang Materialized Views dengan REFRESH CONCURRENTLY untuk laporan analitik cepat, menulis stored functions dan stored procedures transaksional PL/pgSQL, membuat row-level trigger untuk audit logging, serta memanfaatkan extension populer (citext, pg_trgm, pgcrypto, pg_stat_statements).

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dalam buku ini dikembangkan secara organik mengikuti kedalaman fitur PostgreSQL lanjutan dan kebutuhan industri, serta tidak dibatasi secara kaku.

---

## 4. Daftar Bab Aktif
| 1 | [Bab 01: SQL Function dan PL/pgSQL (Pengantar)](bab-01-sql-function-dan-plpgsql-pengantar.md) | **DRAFT** | Lanjutan | Pengantar penulisan fungsi database menggunakan bahasa SQL murni dan bahasa prosedural PL/pgSQL di PostgreSQL. |
| 2 | [Bab 02: Stored Procedure dan Transaction Control (Pengantar)](bab-02-stored-procedure-dan-transaction-control-pengantar.md) | **DRAFT** | Lanjutan | Pengenalan Stored Procedure di PostgreSQL serta kemampuan uniknya dalam mengontrol transaksi (COMMIT / ROLLBACK) di dalam database. |
| 3 | [Bab 03: Trigger dan Trigger Function](bab-03-trigger-dan-trigger-function.md) | **DRAFT** | Lanjutan | Membahas konsep Trigger di PostgreSQL untuk otomatisasi eksekusi fungsi prosedural berdasarkan modifikasi baris data (INSERT, UPDATE, DELETE). |
| 4 | [Bab 04: Risiko Business Logic di Database](bab-04-risiko-business-logic-di-database.md) | **DRAFT** | Lanjutan | Menganalisis perdebatan arsitektur perangkat lunak mengenai penempatan logika bisnis di tingkat database vs aplikasi backend. |

---

## 5. Urutan Belajar
Pembaca dianjurkan menyelesaikan bab secara berurutan agar alur logika pemrograman database dan fitur analitik dapat diserap secara bertahap dan sistematis.

---

## 6. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
