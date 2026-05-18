# Buku 05: Extensions Dasar PostgreSQL

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 05: Fitur PostgreSQL Lanjutan](../README.md)
*   **Target Level**: Level 4 - Level 5 (Intermediate Advanced)
*   **Tipe Materi**: Fitur Analitik & Pemrograman Database

---

## 1. Tujuan Buku
Buku ini mengulas sistem extensibilitas modular di PostgreSQL, cara kerja pemasangan extension via CREATE EXTENSION, serta pengenalan fungsionalitas extension bawaan terpopuler seperti citext (case-insensitive string), pg_trgm (fuzzy trigram matching), uuid-ossp (UUID generator), pgcrypto (hashing & enkripsi), dan pg_stat_statements (query analysis).

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu menulis query JSONB dasar dan merancang indexing GIN secara efisien, mengimplementasikan FTS (Full Text Search) dengan to_tsvector/tsquery ter-indeks, membuat standard Views untuk proteksi data, merancang Materialized Views dengan REFRESH CONCURRENTLY untuk laporan analitik cepat, menulis stored functions dan stored procedures transaksional PL/pgSQL, membuat row-level trigger untuk audit logging, serta memanfaatkan extension populer (citext, pg_trgm, pgcrypto, pg_stat_statements).

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dalam buku ini dikembangkan secara organik mengikuti kedalaman fitur PostgreSQL lanjutan dan kebutuhan industri, serta tidak dibatasi secara kaku.

---

## 4. Daftar Bab Aktif
| 1 | [Bab 01: Konsep Extension di PostgreSQL](bab-01-konsep-extension-di-postgresql.md) | **DRAFT** | Lanjutan | Membahas ekosistem extensibilitas (Extension) di PostgreSQL yang memungkinkannya menambah tipe data, indeks, dan fungsionalitas baru. |
| 2 | [Bab 02: pg_trgm, citext, dan uuid-ossp (Pengantar)](bab-02-pg-trgm-citext-dan-uuid-ossp-pengantar.md) | **DRAFT** | Lanjutan | Pengenalan tiga extension bawaan yang sangat populer untuk kemudahan manipulasi teks tidak sensitif huruf besar/kecil, fuzzy matching trigram, dan pembuatan UUID v4. |
| 3 | [Bab 03: pgcrypto dan pg_stat_statements (Pengantar)](bab-03-pgcrypto-dan-pg-stat-statements-pengantar.md) | **DRAFT** | Lanjutan | Pengenalan extension pgcrypto untuk enkripsi data di dalam database dan pg_stat_statements untuk monitoring kueri lambat skala produksi. |

---

## 5. Urutan Belajar
Pembaca dianjurkan menyelesaikan bab secara berurutan agar alur logika pemrograman database dan fitur analitik dapat diserap secara bertahap dan sistematis.

---

## 6. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
