# Buku 05: Query Tuning Workflow dan Anti-Pattern

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 07: Indexing, Query Planner, dan Performance](../README.md)
*   **Target Level**: Level 5 - Level 6 (Advanced Diagnostics)
*   **Tipe Materi**: Indexing Tingkat Lanjut & Query Optimization

---

## 1. Tujuan Buku
Buku ini merangkum Standard Operating Procedure (SOP) diagnosis kueri lambat di server produksi secara aman, menelaah sebab-sebab indeks diabaikan oleh database engine, membedah anti-pattern kueri SQL popular (LIKE %leading wildcard, OR, fungsi di WHERE), mengoptimalkan query pengurutan LIMIT dan pagination, serta menanggulangi dampak destruktif N+1 kueri ORM di database.

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu merancang strategi composite, partial, expression, dan covering index secara efisien, mengoperasikan EXPLAIN ANALYZE (dengan BUFFERS) secara aman untuk mengukur I/O RAM, membedah Seq/Index/Bitmap Scan dan Join nodes pada Query Plan, mengoptimalkan planner statistics (pg_stats) dan Extended Statistics, menerapkan workflow diagnostik kueri lambat, meminimalkan anomali index ignore, refaktor anti-pattern kueri, serta mengelola resiko write amplification, index bloat, dan reindex concurrent.

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dalam buku ini dikembangkan secara organik mengikuti kedalaman optimasi performa dan kebutuhan arsitektur data PostgreSQL, serta tidak dibatasi secara kaku.

---

## 4. Daftar Bab Aktif
| 1 | [Bab 01: Workflow Menganalisis Query Lambat](bab-01-workflow-menganalisis-query-lambat.md) | **DRAFT** | Performa | Membahas panduan langkah demi langkah (Standard Operating Procedure) untuk mendeteksi, mendiagnosis, dan memulihkan performa kueri lambat skala produksi secara aman. |
| 2 | [Bab 02: Index Tidak Dipakai dan Penyebabnya](bab-02-index-tidak-dipakai-dan-penyebabnya.md) | **DRAFT** | Performa | Membahas berbagai alasan teknis mengapa indeks yang sudah dibuat diabaikan (di-scan secara sequential) oleh query optimizer. |
| 3 | [Bab 03: Anti-Pattern: LIKE Leading Wildcard, OR, dan Function di WHERE](bab-03-anti-pattern-like-leading-wildcard-or-dan-function-di-where.md) | **DRAFT** | Performa | Membahas tiga kesalahan penulisan kueri (Anti-Patterns) terpopuler yang mematikan kinerja indeks, serta cara menulis ulang kueri tersebut secara efisien. |
| 4 | [Bab 04: Pagination, Sorting, dan LIMIT Performance](bab-04-pagination-sorting-dan-limit-performance.md) | **DRAFT** | Performa | Membahas masalah performa degradasi kueri pengurutan (Sorting) dan pembatasan data (LIMIT) skala besar, serta optimasi kueri pagination. |
| 5 | [Bab 05: N+1 Query dan Beban Database](bab-05-n-plus-one-query-dan-beban-database.md) | **DRAFT** | Performa | Membahas dampak destruktif dari masalah kueri berulang (N+1 Query) yang dipicu oleh ORM di aplikasi backend terhadap resource database server. |

---

## 5. Urutan Belajar
Pembaca dianjurkan menuntaskan Buku 02 dan Buku 03 terlebih dahulu untuk menguasai strategi indeks fisik dan teknik membaca query plan sebelum melangkah ke pemetaan statistik optimizer (Buku 04), workflow tuning kueri (Buku 05), dan maintenance operasional indeks (Buku 06).

---

## 6. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
