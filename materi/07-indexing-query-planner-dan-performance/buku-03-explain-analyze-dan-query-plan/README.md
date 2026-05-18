# Buku 03: EXPLAIN ANALYZE dan Query Plan

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 07: Indexing, Query Planner, dan Performance](../README.md)
*   **Target Level**: Level 5 - Level 6 (Advanced Diagnostics)
*   **Tipe Materi**: Indexing Tingkat Lanjut & Query Optimization

---

## 1. Tujuan Buku
Buku ini membahas penggunaan mendalam utilitas diagnostik EXPLAIN ANALYZE secara aman di server produksi aktif, menafsirkan parameter cost, rows, actual time, dan loops, mengukur efisiensi I/O memory buffers cache, membedah query plan pemindaian data (Seq/Index/Bitmap Scan), serta menganalisis algoritma gabungan (Nested Loop, Merge, Hash Join) dan pengurutan Sort di query plan nodes.

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu merancang strategi composite, partial, expression, dan covering index secara efisien, mengoperasikan EXPLAIN ANALYZE (dengan BUFFERS) secara aman untuk mengukur I/O RAM, membedah Seq/Index/Bitmap Scan dan Join nodes pada Query Plan, mengoptimalkan planner statistics (pg_stats) dan Extended Statistics, menerapkan workflow diagnostik kueri lambat, meminimalkan anomali index ignore, refaktor anti-pattern kueri, serta mengelola resiko write amplification, index bloat, dan reindex concurrent.

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dalam buku ini dikembangkan secara organik mengikuti kedalaman optimasi performa dan kebutuhan arsitektur data PostgreSQL, serta tidak dibatasi secara kaku.

---

## 4. Daftar Bab Aktif
| 1 | [Bab 01: EXPLAIN vs EXPLAIN ANALYZE](bab-01-explain-vs-explain-analyze.md) | **DRAFT** | Performa | Membahas perbedaan krusial antara perintah EXPLAIN (estimasi perencanaan) dan EXPLAIN ANALYZE (eksekusi kueri riil) untuk diagnosis performa database. |
| 2 | [Bab 02: cost, rows, actual time, dan loops](bab-02-cost-rows-actual-time-dan-loops.md) | **DRAFT** | Performa | Membahas terminologi kunci hasil pembacaan Query Plan, melatih pembaca menafsirkan estimasi biaya (cost), jumlah baris (rows), durasi riil (actual time), serta perulangan (loops). |
| 3 | [Bab 03: Buffers dan I/O pada Query Plan](bab-03-buffers-dan-io-pada-query-plan.md) | **DRAFT** | Performa | Membahas analisis aktivitas memori cache buffer menggunakan parameter BUFFERS pada EXPLAIN ANALYZE untuk mengukur efisiensi I/O kueri. |
| 4 | [Bab 04: Plan Nodes: Seq Scan, Index Scan, dan Bitmap Scan](bab-04-plan-nodes-seq-scan-index-scan-bitmap-scan.md) | **DRAFT** | Performa | Membahas analisis mendalam mengenai tiga metode pemindaian data utama (Sequential Scan, Index Scan, Index Only Scan, dan Bitmap Index/Heap Scan) di query plan. |
| 5 | [Bab 05: Join, Sort, Hash, dan Materialize Nodes](bab-05-join-sort-hash-dan-materialize-nodes.md) | **DRAFT** | Performa | Membahas analisis query plan node untuk operasi penggabungan (Nested Loop, Merge Join, Hash Join), pengurutan (Sort), pembentukan tabel hash (Hash), dan caching (Materialize). |

---

## 5. Urutan Belajar
Pembaca dianjurkan menuntaskan Buku 02 dan Buku 03 terlebih dahulu untuk menguasai strategi indeks fisik dan teknik membaca query plan sebelum melangkah ke pemetaan statistik optimizer (Buku 04), workflow tuning kueri (Buku 05), dan maintenance operasional indeks (Buku 06).

---

## 6. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
