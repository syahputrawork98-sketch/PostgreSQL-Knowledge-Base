# Buku 02: Full Text Search

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 05: Fitur PostgreSQL Lanjutan](../README.md)
*   **Target Level**: Level 4 - Level 5 (Intermediate Advanced)
*   **Tipe Materi**: Fitur Analitik & Pemrograman Database

---

## 1. Tujuan Buku
Buku ini membahas konsep pencarian teks tingkat lanjut (Full Text Search) di PostgreSQL, cara kerja NLP dasar (Tokenization, Stemming, Stopwords), manipulasi tipe data tsvector dan tsquery, penilaian kemiripan teks (Ranking), serta optimalisasi pencarian super cepat berskala besar menggunakan Generalized Inverted Index (GIN).

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu menulis query JSONB dasar dan merancang indexing GIN secara efisien, mengimplementasikan FTS (Full Text Search) dengan to_tsvector/tsquery ter-indeks, membuat standard Views untuk proteksi data, merancang Materialized Views dengan REFRESH CONCURRENTLY untuk laporan analitik cepat, menulis stored functions dan stored procedures transaksional PL/pgSQL, membuat row-level trigger untuk audit logging, serta memanfaatkan extension populer (citext, pg_trgm, pgcrypto, pg_stat_statements).

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dalam buku ini dikembangkan secara organik mengikuti kedalaman fitur PostgreSQL lanjutan dan kebutuhan industri, serta tidak dibatasi secara kaku.

---

## 4. Daftar Bab Aktif
| 1 | [Bab 01: Konsep Full Text Search di PostgreSQL](bab-01-konsep-full-text-search-di-postgresql.md) | **DRAFT** | Lanjutan | Membahas konsep dasar Full Text Search (FTS) di PostgreSQL dibandingkan pencarian string tradisional (LIKE / ILIKE). |
| 2 | [Bab 02: tsvector, tsquery, dan Ranking Dasar](bab-02-tsvector-tsquery-dan-ranking-dasar.md) | **DRAFT** | Lanjutan | Membahas implementasi FTS di PostgreSQL menggunakan tipe data tsvector (lexemes terindeks), tipe query tsquery, dan penilaian relevansi (ranking). |
| 3 | [Bab 03: Indexing Full Text Search (Pengantar)](bab-03-indexing-full-text-search-pengantar.md) | **DRAFT** | Lanjutan | Membahas teknik pengindeksan Full Text Search menggunakan GIN Index untuk mendukung pencarian teks skala besar secara efisien. |

---

## 5. Urutan Belajar
Pembaca dianjurkan menyelesaikan bab secara berurutan agar alur logika pemrograman database dan fitur analitik dapat diserap secara bertahap dan sistematis.

---

## 6. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
