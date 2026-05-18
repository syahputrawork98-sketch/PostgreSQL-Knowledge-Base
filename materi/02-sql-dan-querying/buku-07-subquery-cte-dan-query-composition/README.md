# Buku 07: Subquery, CTE, dan Query Composition

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 02: SQL dan Querying](../README.md)
*   **Target Level**: Level 2 (Menengah)
*   **Tipe Materi**: Praktik Kueri & Dasar Transaksi

---

## 1. Tujuan Buku
Buku ini membahas teknik komposisi kueri kompleks di PostgreSQL, mendalami penggunaan kueri bersarang (Subquery dasar dan Correlated Subquery), serta merancang kueri terstruktur yang mudah dibaca menggunakan Common Table Expression (CTE) dasar dan pengenalan Recursive CTE.

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu menulis kueri tingkat lanjut secara modular, menghindari perangkap performa, serta menangani modifikasi dan kalkulasi baris data secara profesional.

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dalam buku ini dikembangkan mengikuti kedalaman pemahaman materi SQL Core dan tidak dibatasi secara kaku. Buku ini dapat berkembang secara berkala sesuai kebutuhan kedalaman PostgreSQL di masa mendatang.

---

## 4. Daftar Bab Aktif
| 1 | [Bab 01: Subquery Dasar (Uncorrelated)](bab-01-subquery-dasar.md) | **DRAFT** | Praktik | Membahas penggunaan kueri bersarang independen (uncorrelated subquery) di dalam klausa SELECT, FROM, dan WHERE untuk menyajikan filter data dinamis. |
| 2 | [Bab 02: Correlated Subquery](bab-02-correlated-subquery.md) | **DRAFT** | Praktik | Membahas subquery berkorelasi (correlated subquery) yang bergantung pada baris tabel luar, alur eksekusinya yang berulang, serta penggunaan optimal operator EXISTS. |
| 3 | [Bab 03: CTE (Common Table Expression) Dasar](bab-03-cte-common-table-expression-dasar.md) | **DRAFT** | Praktik | Membahas teknik penataan kueri SQL agar bersih, modular, dan mudah dibaca menggunakan klausa WITH (Common Table Expression / CTE) sebagai tabel temporer berlingkup kueri. |
| 4 | [Bab 04: Recursive CTE (Pengantar)](bab-04-recursive-cte-pengantar.md) | **DRAFT** | Praktik | Mengenalkan dasar-dasar Recursive CTE (WITH RECURSIVE) untuk memproses struktur data hierarkis seperti bagan organisasi atau kategori produk bertingkat di PostgreSQL. |

---

## 5. Urutan Belajar
Pembaca diwajibkan menyelesaikan bab secara berurutan untuk menjamin kurikulum belajar yang solid dan pemahaman bertahap yang mendalam.

---

## 6. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi langsung dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
