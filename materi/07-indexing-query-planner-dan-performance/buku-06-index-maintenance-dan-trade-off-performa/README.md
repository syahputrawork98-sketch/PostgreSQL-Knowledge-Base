# Buku 06: Index Maintenance dan Trade-off Performa

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 07: Indexing, Query Planner, dan Performance](../README.md)
*   **Target Level**: Level 5 - Level 6 (Advanced Diagnostics)
*   **Tipe Materi**: Indexing Tingkat Lanjut & Query Optimization

---

## 1. Tujuan Buku
Buku ini mengulas konsekuensi operasional penulisan indeks, meneliti konsep Write Amplification akibat akumulasi indeks ganda, menganalisis penumpukan ruang kosong halaman indeks (Index Bloat), serta mendiskusikan taktik pemeliharaan non-blocking menggunakan REINDEX CONCURRENTLY.

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu merancang strategi composite, partial, expression, dan covering index secara efisien, mengoperasikan EXPLAIN ANALYZE (dengan BUFFERS) secara aman untuk mengukur I/O RAM, membedah Seq/Index/Bitmap Scan dan Join nodes pada Query Plan, mengoptimalkan planner statistics (pg_stats) dan Extended Statistics, menerapkan workflow diagnostik kueri lambat, meminimalkan anomali index ignore, refaktor anti-pattern kueri, serta mengelola resiko write amplification, index bloat, dan reindex concurrent.

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dalam buku ini dikembangkan secara organik mengikuti kedalaman optimasi performa dan kebutuhan arsitektur data PostgreSQL, serta tidak dibatasi secara kaku.

---

## 4. Daftar Bab Aktif
| 1 | [Bab 01: Terlalu Banyak Index dan Write Amplification](bab-01-terlalu-banyak-index-dan-write-amplification.md) | **DRAFT** | Performa | Membahas trade-off pembuatan indeks, dampak negatif terlalu banyak indeks terhadap perlambatan kueri modifikasi data (INSERT/UPDATE/DELETE). |
| 2 | [Bab 02: Index Bloat dan Maintenance (Pengantar)](bab-02-index-bloat-dan-maintenance-pengantar.md) | **DRAFT** | Performa | Membahas masalah keausan internal halaman indeks B-Tree (Index Bloat) akibat operasi UPDATE/DELETE yang intensif di MVCC. |
| 3 | [Bab 03: REINDEX dan Concurrent Index Operation (Pengantar)](bab-03-reindex-dan-concurrent-index-operation-pengantar.md) | **DRAFT** | Performa | Membahas teknik perbaikan indeks yang ter-bloat menggunakan perintah REINDEX secara aman menggunakan opsi CONCURRENTLY di lingkungan produksi. |

---

## 5. Urutan Belajar
Pembaca dianjurkan menuntaskan Buku 02 dan Buku 03 terlebih dahulu untuk menguasai strategi indeks fisik dan teknik membaca query plan sebelum melangkah ke pemetaan statistik optimizer (Buku 04), workflow tuning kueri (Buku 05), dan maintenance operasional indeks (Buku 06).

---

## 6. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
