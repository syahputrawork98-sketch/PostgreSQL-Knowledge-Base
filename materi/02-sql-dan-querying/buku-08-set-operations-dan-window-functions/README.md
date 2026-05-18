# Buku 08: Set Operations dan Window Functions

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 02: SQL dan Querying](../README.md)
*   **Target Level**: Level 2 (Menengah)
*   **Tipe Materi**: Praktik Kueri & Dasar Transaksi

---

## 1. Tujuan Buku
Buku ini mengulas operasi himpunan data (UNION, INTERSECT, EXCEPT) serta mengenalkan kekuatan Window Functions di PostgreSQL untuk melakukan kalkulasi baris bernilai dinamis tanpa menggabungkan baris data.

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu menulis kueri tingkat lanjut secara modular, menghindari perangkap performa, serta menangani modifikasi dan kalkulasi baris data secara profesional.

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dalam buku ini dikembangkan mengikuti kedalaman pemahaman materi SQL Core dan tidak dibatasi secara kaku. Buku ini dapat berkembang secara berkala sesuai kebutuhan kedalaman PostgreSQL di masa mendatang.

---

## 4. Daftar Bab Aktif
| 1 | [Bab 01: UNION, INTERSECT, dan EXCEPT](bab-01-union-intersect-dan-except.md) | **DRAFT** | Praktik | Membahas kueri operasi himpunan untuk menggabungkan hasil kueri secara vertikal menggunakan UNION, menyaring irisan data dengan INTERSECT, serta mengecualikan himpunan data dengan EXCEPT. |
| 2 | [Bab 02: Window Functions Dasar](bab-02-window-functions-dasar.md) | **DRAFT** | Praktik | Mengenalkan konsep Window Functions bawaan PostgreSQL menggunakan klausa OVER(), menulis kueri kalkulasi kumulatif dinamis tanpa mereduksi jumlah baris data. |
| 3 | [Bab 03: Partition, Order, dan Frame pada Window Function](bab-03-partition-order-dan-frame-pada-window-function.md) | **DRAFT** | Praktik | Membahas pengelompokan data dinamis dalam Window Function menggunakan PARTITION BY, pengurutan, serta spesifikasi frame (ROWS/RANGE) untuk kalkulasi running-total tingkat lanjut. |

---

## 5. Urutan Belajar
Pembaca diwajibkan menyelesaikan bab secara berurutan untuk menjamin kurikulum belajar yang solid dan pemahaman bertahap yang mendalam.

---

## 6. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi langsung dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
