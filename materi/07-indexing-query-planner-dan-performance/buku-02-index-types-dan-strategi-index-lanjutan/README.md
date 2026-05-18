# Buku 02: Index Types dan Strategi Index Lanjutan

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 07: Indexing, Query Planner, dan Performance](../README.md)
*   **Target Level**: Level 5 - Level 6 (Advanced Diagnostics)
*   **Tipe Materi**: Indexing Tingkat Lanjut & Query Optimization

---

## 1. Tujuan Buku
Buku ini membahas tipe-tipe indeks tingkat lanjut di PostgreSQL, meliputi arsitektur internal B-Tree (High-Balanced Tree), strategi perancangan Composite Index berdasarkan urutan kolom (Leading Column) dan skip scan, teknik optimasi ukuran via Partial Index bersyarat, Expression Index berbasis fungsi, serta Covering Index menggunakan klausa INCLUDE untuk memicu eksekusi super cepat Index-Only Scan.

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu merancang strategi composite, partial, expression, dan covering index secara efisien, mengoperasikan EXPLAIN ANALYZE (dengan BUFFERS) secara aman untuk mengukur I/O RAM, membedah Seq/Index/Bitmap Scan dan Join nodes pada Query Plan, mengoptimalkan planner statistics (pg_stats) dan Extended Statistics, menerapkan workflow diagnostik kueri lambat, meminimalkan anomali index ignore, refaktor anti-pattern kueri, serta mengelola resiko write amplification, index bloat, dan reindex concurrent.

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dalam buku ini dikembangkan secara organik mengikuti kedalaman optimasi performa dan kebutuhan arsitektur data PostgreSQL, serta tidak dibatasi secara kaku.

---

## 4. Daftar Bab Aktif
| 1 | [Bab 01: B-Tree Index Lebih Dalam](bab-01-btree-index-lebih-dalam.md) | **DRAFT** | Performa | Membahas arsitektur internal B-Tree di PostgreSQL (High-Balanced Tree), pencarian range, sorting, serta keunikan penanganan nilai NULL. |
| 2 | [Bab 02: Composite Index dan Urutan Kolom](bab-02-composite-index-dan-urutan-kolom.md) | **DRAFT** | Performa | Membahas aturan pembuatan Composite Index (indeks multi-kolom), signifikansi urutan kolom (Leading Column), serta fenomena Index Skip Scan. |
| 3 | [Bab 03: Partial Index](bab-03-partial-index.md) | **DRAFT** | Performa | Membahas pembuatan Partial Index (indeks bersyarat) menggunakan klausa WHERE untuk memangkas ukuran indeks fisik secara dramatis. |
| 4 | [Bab 04: Expression Index](bab-04-expression-index.md) | **DRAFT** | Performa | Membahas teknik pembuatan Expression Index (indeks berbasis fungsi/ekspresi) untuk mengoptimalkan kueri yang menyaring data menggunakan manipulasi fungsi. |
| 5 | [Bab 05: Covering Index dan Index-Only Scan](bab-05-covering-index-dan-index-only-scan.md) | **DRAFT** | Performa | Membahas konsep Covering Index menggunakan klausa INCLUDE untuk menampung kolom tambahan non-indeks, demi memicu eksekusi super cepat Index-Only Scan. |

---

## 5. Urutan Belajar
Pembaca dianjurkan menuntaskan Buku 02 dan Buku 03 terlebih dahulu untuk menguasai strategi indeks fisik dan teknik membaca query plan sebelum melangkah ke pemetaan statistik optimizer (Buku 04), workflow tuning kueri (Buku 05), dan maintenance operasional indeks (Buku 06).

---

## 6. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
