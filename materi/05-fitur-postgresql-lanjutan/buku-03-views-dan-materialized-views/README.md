# Buku 03: Views dan Materialized Views

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 05: Fitur PostgreSQL Lanjutan](../README.md)
*   **Target Level**: Level 4 - Level 5 (Intermediate Advanced)
*   **Tipe Materi**: Fitur Analitik & Pemrograman Database

---

## 1. Tujuan Buku
Buku ini membahas penggunaan Standard Views sebagai lapisan abstraksi data, pembuatan Materialized Views untuk menyimpan hasil query analitik lambat secara fisik di disk, taktik update online menggunakan REFRESH CONCURRENTLY, serta pengelolaan risiko keusangan data analitik (Staleness) di tingkat aplikasi.

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu menulis query JSONB dasar dan merancang indexing GIN secara efisien, mengimplementasikan FTS (Full Text Search) dengan to_tsvector/tsquery ter-indeks, membuat standard Views untuk proteksi data, merancang Materialized Views dengan REFRESH CONCURRENTLY untuk laporan analitik cepat, menulis stored functions dan stored procedures transaksional PL/pgSQL, membuat row-level trigger untuk audit logging, serta memanfaatkan extension populer (citext, pg_trgm, pgcrypto, pg_stat_statements).

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dalam buku ini dikembangkan secara organik mengikuti kedalaman fitur PostgreSQL lanjutan dan kebutuhan industri, serta tidak dibatasi secara kaku.

---

## 4. Daftar Bab Aktif
| 1 | [Bab 01: View Sebagai Abstraksi Query](bab-01-view-sebagai-abstraksi-query.md) | **DRAFT** | Lanjutan | Membahas pembuatan standard Views di PostgreSQL sebagai lapisan abstraksi query relasional dan perlindungan data sensitif. |
| 2 | [Bab 02: Materialized View dan Refresh Strategy](bab-02-materialized-view-dan-refresh-strategy.md) | **DRAFT** | Lanjutan | Membahas pembuatan Materialized Views untuk menyimpan hasil kueri analitik secara fisik, serta strategi pembaruan datanya. |
| 3 | [Bab 03: Risiko Staleness dan Refresh Concurrently](bab-03-risiko-staleness-dan-refresh-concurrently.md) | **DRAFT** | Lanjutan | Membahas konsekuensi keusangan data (Staleness) pada Materialized View serta solusi pembaruan non-blocking menggunakan opsi CONCURRENTLY. |

---

## 5. Urutan Belajar
Pembaca dianjurkan menyelesaikan bab secara berurutan agar alur logika pemrograman database dan fitur analitik dapat diserap secara bertahap dan sistematis.

---

## 6. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
