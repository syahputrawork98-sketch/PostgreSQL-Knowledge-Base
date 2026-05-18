# Buku 06: NULL, Predicate, dan Ekspresi SQL

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 02: SQL dan Querying](../README.md)
*   **Target Level**: Level 1 - Level 2 (Dasar ke Menengah)
*   **Tipe Materi**: Praktik Kueri & Dasar Transaksi

---

## 1. Tujuan Buku
Buku ini mendalami penanganan nilai absen (NULL) di PostgreSQL menggunakan Three-Valued Logic (TRUE, FALSE, UNKNOWN), menguasai operator filter tingkat lanjut (IN, BETWEEN, LIKE, ILIKE), serta menggunakan ekspresi casting tipe data dan fungsi bawaan database dasar.

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu menulis kueri tingkat lanjut secara modular, menghindari perangkap performa, serta menangani modifikasi dan kalkulasi baris data secara profesional.

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dalam buku ini dikembangkan mengikuti kedalaman pemahaman materi SQL Core dan tidak dibatasi secara kaku. Buku ini dapat berkembang secara berkala sesuai kebutuhan kedalaman PostgreSQL di masa mendatang.

---

## 4. Daftar Bab Aktif
| 1 | [Bab 01: NULL dan Three-Valued Logic](bab-01-null-dan-three-valued-logic.md) | **DRAFT** | Praktik | Mempelajari konsep nilai kosong/absen (NULL) di database relasional, cara membandingkan NULL menggunakan IS NULL / IS NOT NULL, serta memahami Three-Valued Logic (3VL) yang krusial. |
| 2 | [Bab 02: Predicate IN, BETWEEN, LIKE, dan ILIKE](bab-02-predicate-in-between-like-dan-ilike.md) | **DRAFT** | Praktik | Membahas penggunaan predikat filter pencarian tingkat menengah, memfilter dalam daftar (IN), memfilter jangkauan (BETWEEN), serta pencarian pola teks (LIKE dan ILIKE). |
| 3 | [Bab 03: Ekspresi, Casting, dan Function Dasar](bab-03-ekspresi-casting-dan-function-dasar.md) | **DRAFT** | Praktik | Mengenalkan cara melakukan konversi tipe data (casting) secara eksplisit, mengevaluasi ekspresi kondisional CASE WHEN, serta menggunakan fungsi manipulasi string/tanggal dasar bawaan PostgreSQL. |

---

## 5. Urutan Belajar
Pembaca diwajibkan menyelesaikan bab secara berurutan untuk menjamin kurikulum belajar yang solid dan pemahaman bertahap yang mendalam.

---

## 6. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi langsung dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
