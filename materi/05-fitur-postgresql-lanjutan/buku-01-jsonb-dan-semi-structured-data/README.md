# Buku 01: JSONB dan Semi-Structured Data

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 05: Fitur PostgreSQL Lanjutan](../README.md)
*   **Target Level**: Level 4 - Level 5 (Intermediate Advanced)
*   **Tipe Materi**: Fitur Analitik & Pemrograman Database

---

## 1. Tujuan Buku
Buku ini membahas perbandingan esensial tipe data JSON vs JSONB, cara kerja penyimpanan binary terurai, penulisan kueri pencarian dan modifikasi JSONB dasar, pengantar pengindeksan GIN untuk data semi-terstruktur, serta analisis mendalam mengenai anomali anti-pattern penyalahgunaan JSONB dalam perancangan database relasional.

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu menulis query JSONB dasar dan merancang indexing GIN secara efisien, mengimplementasikan FTS (Full Text Search) dengan to_tsvector/tsquery ter-indeks, membuat standard Views untuk proteksi data, merancang Materialized Views dengan REFRESH CONCURRENTLY untuk laporan analitik cepat, menulis stored functions dan stored procedures transaksional PL/pgSQL, membuat row-level trigger untuk audit logging, serta memanfaatkan extension populer (citext, pg_trgm, pgcrypto, pg_stat_statements).

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dalam buku ini dikembangkan secara organik mengikuti kedalaman fitur PostgreSQL lanjutan dan kebutuhan industri, serta tidak dibatasi secara kaku.

---

## 4. Daftar Bab Aktif
| 1 | [Bab 01: JSON vs JSONB dan Use Case](bab-01-json-vs-jsonb-dan-use-case.md) | **DRAFT** | Lanjutan | Membahas perbedaan esensial antara tipe data JSON (teks mentah) dan JSONB (binary terurai) di PostgreSQL, serta use case yang tepat untuk semi-structured data. |
| 2 | [Bab 02: Query JSONB Dasar](bab-02-query-jsonb-dasar.md) | **DRAFT** | Lanjutan | Membahas penggunaan operator pencarian dan fungsi manipulasi data JSONB bawaan PostgreSQL. |
| 3 | [Bab 03: JSONB Indexing (Pengantar)](bab-03-jsonb-indexing-pengantar.md) | **DRAFT** | Lanjutan | Pengenalan teknik pengindeksan data JSONB menggunakan Index GIN (Generalized Inverted Index) untuk mempercepat pencarian data semi-terstruktur. |
| 4 | [Bab 04: Anti-Pattern JSONB dalam Desain Relasional](bab-04-anti-pattern-jsonb-dalam-desain-relasional.md) | **DRAFT** | Lanjutan | Menganalisis kesalahan umum (anti-patterns) penyalahgunaan JSONB sebagai pengganti tabel relasional standar di PostgreSQL. |

---

## 5. Urutan Belajar
Pembaca dianjurkan menyelesaikan bab secara berurutan agar alur logika pemrograman database dan fitur analitik dapat diserap secara bertahap dan sistematis.

---

## 6. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
