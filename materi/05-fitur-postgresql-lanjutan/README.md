# Rak 05: Fitur PostgreSQL Lanjutan

*   **Status Rak**: **DRAFT / REVIEW**
*   **Target Level**: Level 4 - Level 5 (Intermediate Advanced)
*   **Peran**: Pintu masuk utama bagi pengembang backend untuk mendalami fitur analitik dan pemrograman database tingkat lanjut di PostgreSQL.
*   **Target Pembaca**: Developer backend yang ingin memaksimalkan engine PostgreSQL untuk fitur-fitur analisis data dinamis, pencarian teks, pemrosesan semi-terstruktur, pemrograman tingkat database, dan pemanfaatan ekstensi modular.

---

## 1. Tujuan Rak
Rak ini bertujuan memandu pengembang backend untuk menguasai berbagai fitur tingkat lanjut bawaan PostgreSQL yang meningkatkan efisiensi komputasi di sisi server. Pembahasan mencakup tipe data semi-terstruktur JSON/JSONB beserta optimasi GIN Indexing, pencarian teks tingkat lanjut (Full Text Search) menggunakan tsvector/tsquery, penggunaan standard Views dan Materialized Views beserta strategi sinkronisasi non-blocking, pemrograman prosedural tingkat database menggunakan SQL/PLpgSQL functions, Stored Procedures transaksional, and database Triggers, serta pengantar extensions popular (citext, pg_trgm, uuid-ossp, pgcrypto, pg_stat_statements).

---

## 2. Kebijakan Struktur (No Fixed Limit)
Sesuai dengan [Kebijakan Kedalaman Expert-Scale](../../docs/project/book-chapter-depth-policy.md) dan [Standardisasi Struktur](../../docs/project/materi-structure-decision.md), jumlah buku dan bab pada rak ini dikembangkan secara organik mengikuti kedalaman materi dan tidak dibatasi secara kaku.

---

## 3. Prasyarat Belajar
Pembaca wajib menyelesaikan **Rak 02 (SQL dan Querying)**, **Rak 03 (Desain Data dan Schema)**, dan **Rak 04 (PostgreSQL untuk Aplikasi)** sebelum memulai rak ini, agar pemahaman kueri relasional dan integrasi backend dasar sudah matang.

---

## 4. Daftar Buku Aktif & DRAFT

| No | Buku / Folder | Status | Fokus Materi | Jumlah Bab |
| :---: | :--- | :---: | :--- | :---: |
| 1 | [Buku 01: JSONB dan Semi-Structured Data](./buku-01-jsonb-dan-semi-structured-data/) | **DRAFT** | Perbandingan JSON vs JSONB, query JSONB dasar, operator containment/existence, indexing GIN untuk JSONB, dan anti-pattern semi-structured data. | 4 Bab |
| 2 | [Buku 02: Full Text Search](./buku-02-full-text-search/) | **DRAFT** | NLP dasar di database, tsvector, tsquery, operator phrase, ranking relevansi, dan indexing GIN untuk pencarian teks skala besar. | 3 Bab |
| 3 | [Buku 03: Views dan Materialized Views](./buku-03-views-dan-materialized-views/) | **DRAFT** | View sebagai abstraksi kueri dan lapisan keamanan, materialized views analitik, dan mitigasi table-locking via REFRESH CONCURRENTLY. | 3 Bab |
| 4 | [Buku 04: Function, Procedure, dan Trigger](./buku-04-function-procedure-dan-trigger/) | **DRAFT** | User-Defined Functions SQL/PLpgSQL, Stored Procedures transaksional (COMMIT/ROLLBACK), Row-Level Triggers, dan trade-off logika bisnis di database. | 4 Bab |
| 5 | [Buku 05: Extensions Dasar PostgreSQL](./buku-05-extensions-dasar-postgresql/) | **DRAFT** | Ekosistem extension modular, citext, pg_trgm (trigram fuzzy matching), uuid-ossp, pgcrypto (hashing password), dan monitoring pg_stat_statements. | 3 Bab |

---

## 5. Jalur Belajar yang Disarankan
Selesaikan Buku 01 dan Buku 02 untuk menguasai penyimpanan semi-terstruktur dan pencarian teks modern. Lanjutkan ke Buku 03 untuk memahami teknik caching analitik menggunakan Materialized Views. Selanjutnya, pelajari Buku 04 untuk memahami logika pemrograman prosedural tingkat database. Terakhir, pelajari Buku 05 untuk memperkaya fungsionalitas database Anda dengan library/extension bawaan PostgreSQL yang tangguh.

---

## 6. Output yang Diharapkan
*   Kemampuan menyimpan dan mengindeks data semi-terstruktur JSONB secara efisien.
*   Kemampuan membangun mesin pencarian teks (Full Text Search) yang cepat dan relevan.
*   Mampu merancang views, materialized views, functions, stored procedures, trigger, dan mengaktifkan monitoring query melalui extensions.

---

## 7. Status & Kebijakan Dokumen
*   **Status Penulisan**: `DRAFT` (Seluruh 17 bab aktif masih berupa draf materi awal).
*   **Status Verifikasi Sumber**: `REVIEW` (Menunggu validasi resmi dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Bab Expert-Scale](../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../docs/project/materi-expert-scale-gap-matrix.md)
    *   [Standar Penulisan Materi](../../docs/project/materi-writing-standard.md)
