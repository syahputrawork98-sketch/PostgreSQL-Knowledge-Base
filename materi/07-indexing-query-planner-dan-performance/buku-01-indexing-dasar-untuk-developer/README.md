# Buku 01: Indexing Dasar untuk Developer

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 07: Indexing, Query Planner, dan Performance](../README.md)
*   **Target Level**: Level 3 - Level 4 (Developer-facing)
*   **Tipe Materi**: Praktik Diagnostik & Optimasi Performa

---

## 1. Tujuan Buku
Buku ini bertujuan untuk memperkenalkan konsep indeks B-Tree sebagai struktur data bantu percepatan kueri, mengulas batas-batas kegunaan indeks, melatih penulisan perintah diagnostik `EXPLAIN` untuk menganalisis optimasi kueri planner, serta melatih pembaca membaca rencana kueri logis (*query plan*) dasar.

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu mendiagnosis scan type yang tidak efisien, merumuskan indeks B-Tree yang tepat untuk kolom WHERE/JOIN, serta membaca node tree cost estimation dari query planner.

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dirancang secara modular dan tidak dibatasi secara kaku. Berdasarkan [Matriks Celah Materi](../../../docs/project/materi-expert-scale-gap-matrix.md), buku ini direncanakan untuk dimekarkan menjadi dua buku mandiri pada batch menengah mendatang: satu membahas indeks lanjutan (GIN, GiST, BRIN, partial, expression) dan satu khusus diagnostik cost query planner.

---

## 4. Daftar Bab Aktif

| No | Bab | Status | Tipe | Ringkasan Materi |
| :---: | :--- | :---: | :---: | :--- |
| 1 | [Bab 01: Apa Itu Index Database](./bab-01-apa-itu-index-database.md) | **DRAFT** | Konseptual | Konsep index B-Tree, analogi indeks halaman buku, overhead penulisan data akibat indeks, dan performa tulis. |
| 2 | [Bab 02: Kapan Index Membantu Query](./bab-02-kapan-index-membantu-query.md) | **DRAFT** | Praktik | Index lookup pada equality filter, inequality, range filter, and multicolumn filter awal. |
| 3 | [Bab 03: Apa Itu EXPLAIN](./bab-03-apa-itu-explain.md) | **DRAFT** | Praktik | Sintaks perintah `EXPLAIN`, perbedaan `EXPLAIN` vs `EXPLAIN ANALYZE` (estimasi vs eksekusi riil), dan parameter output. |
| 4 | [Bab 04: Membaca Query Plan Dasar](./bab-04-membaca-query-plan-dasar.md) | **DRAFT** | Praktik | Membaca sequential scan node, index scan, bitmap index scan, cost estimation, filter/recheck condition, dan visualisasi node. |

---

## 5. Urutan Belajar
Pembaca wajib menempuh materi secara berurutan dari Bab 01 hingga Bab 04 untuk menjamin pemahaman optimasi performa kueri yang teratur dan solid.

---

## 6. Koneksi ke Project Nyata
Kemampuan mendiagnosis query plan dasar menggunakan EXPLAIN merupakan keahlian mutlak bagi backend developer dalam memotong respon time API yang lambat dari orde detik menjadi milidetik pada database produksi e-commerce atau SaaS berskala jutaan data.

---

## 7. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi langsung dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
