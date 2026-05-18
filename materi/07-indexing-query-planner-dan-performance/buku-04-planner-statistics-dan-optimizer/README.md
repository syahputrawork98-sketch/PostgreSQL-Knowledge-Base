# Buku 04: Planner Statistics dan Optimizer

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 07: Indexing, Query Planner, dan Performance](../README.md)
*   **Target Level**: Level 5 - Level 6 (Advanced Diagnostics)
*   **Tipe Materi**: Indexing Tingkat Lanjut & Query Optimization

---

## 1. Tujuan Buku
Buku ini membedah kalkulasi query optimizer berbasis biaya (CBO), meneliti relasi Selektivitas (Selectivity) dan Kardinalitas (Cardinality), mengulas peran utilitas ANALYZE dan parameter pg_stats (MCV & Histogram), membedah akar masalah misestimation akibat data skew, serta mengenali teknik perbaikan akurasi query plan menggunakan Extended Statistics multi-kolom.

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu merancang strategi composite, partial, expression, dan covering index secara efisien, mengoperasikan EXPLAIN ANALYZE (dengan BUFFERS) secara aman untuk mengukur I/O RAM, membedah Seq/Index/Bitmap Scan dan Join nodes pada Query Plan, mengoptimalkan planner statistics (pg_stats) dan Extended Statistics, menerapkan workflow diagnostik kueri lambat, meminimalkan anomali index ignore, refaktor anti-pattern kueri, serta mengelola resiko write amplification, index bloat, dan reindex concurrent.

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dalam buku ini dikembangkan secara organik mengikuti kedalaman optimasi performa dan kebutuhan arsitektur data PostgreSQL, serta tidak dibatasi secara kaku.

---

## 4. Daftar Bab Aktif
| 1 | [Bab 01: Statistics, Selectivity, dan Cardinality](bab-01-statistics-selectivity-dan-cardinality.md) | **DRAFT** | Performa | Membahas matematika dasar di balik keputusan Query Optimizer PostgreSQL, meliputi metrik Selektivitas (Selectivity) dan Kardinalitas (Cardinality). |
| 2 | [Bab 02: ANALYZE dan Statistik Tabel](bab-02-analyze-dan-statistik-tabel.md) | **DRAFT** | Performa | Membahas utilitas ANALYZE di PostgreSQL untuk mengumpulkan dan memperbarui statistik tabel demi memelihara akurasi perencanaan kueri. |
| 3 | [Bab 03: Misestimation dan Query Plan yang Salah](bab-03-misestimation-dan-query-plan-yang-salah.md) | **DRAFT** | Performa | Membahas masalah salah perkiraan (Misestimation) oleh optimizer akibat data yang miring (Data Skew) atau statistik usang, serta dampaknya pada pemilihan rencana kueri yang buruk. |
| 4 | [Bab 04: Extended Statistics (Pengantar)](bab-04-extended-statistics-pengantar.md) | **DRAFT** | Performa | Pengenalan fitur Extended Statistics menggunakan perintah CREATE STATISTICS untuk membantu optimizer memahami hubungan korelasi antar-kolom. |

---

## 5. Urutan Belajar
Pembaca dianjurkan menuntaskan Buku 02 dan Buku 03 terlebih dahulu untuk menguasai strategi indeks fisik dan teknik membaca query plan sebelum melangkah ke pemetaan statistik optimizer (Buku 04), workflow tuning kueri (Buku 05), dan maintenance operasional indeks (Buku 06).

---

## 6. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
