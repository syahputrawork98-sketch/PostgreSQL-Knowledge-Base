# Buku 05: DML dan Perubahan Data

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 02: SQL dan Querying](../README.md)
*   **Target Level**: Level 1 - Level 2 (Dasar ke Menengah)
*   **Tipe Materi**: Praktik Kueri & Dasar Transaksi

---

## 1. Tujuan Buku
Buku ini membahas manipulasi data (DML) di PostgreSQL, mengulas cara menyisipkan, memperbarui, dan menghapus baris data, memanfaatkan klausa RETURNING untuk optimasi round-trip aplikasi backend, serta menangani konflik penyisipan data menggunakan UPSERT (ON CONFLICT).

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu menulis kueri tingkat lanjut secara modular, menghindari perangkap performa, serta menangani modifikasi dan kalkulasi baris data secara profesional.

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dalam buku ini dikembangkan mengikuti kedalaman pemahaman materi SQL Core dan tidak dibatasi secara kaku. Buku ini dapat berkembang secara berkala sesuai kebutuhan kedalaman PostgreSQL di masa mendatang.

---

## 4. Daftar Bab Aktif
| 1 | [Bab 01: INSERT dan RETURNING](bab-01-insert-dan-returning.md) | **DRAFT** | Praktik | Pengenalan manipulasi data (DML) penyisipan baris baru menggunakan perintah INSERT INTO, multi-row insert, dan optimalisasi round-trip network backend menggunakan klausa RETURNING. |
| 2 | [Bab 02: UPDATE, DELETE, dan RETURNING](bab-02-update-delete-dan-returning.md) | **DRAFT** | Praktik | Membahas cara memperbarui (UPDATE) dan menghapus (DELETE) data secara aman di PostgreSQL menggunakan filter WHERE, bahaya kueri tanpa filter, serta pemanfaatan klausa RETURNING. |
| 3 | [Bab 03: UPSERT (ON CONFLICT)](bab-03-upsert-on-conflict.md) | **DRAFT** | Praktik | Membahas penanganan konflik penyisipan data unik (duplicate key) di PostgreSQL menggunakan perintah ON CONFLICT, baik melakukan modifikasi data (DO UPDATE) maupun mengabaikan (DO NOTHING). |

---

## 5. Urutan Belajar
Pembaca diwajibkan menyelesaikan bab secara berurutan untuk menjamin kurikulum belajar yang solid dan pemahaman bertahap yang mendalam.

---

## 6. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi langsung dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
