# Buku 04: Fondasi Konsep Database

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 01: Orientasi, Sejarah, dan Fondasi PostgreSQL](../README.md)
*   **Target Level**: Level 0 - Level 1 (Dasar)
*   **Tipe Materi**: Teoretis & Dasar Praktik

---

## 1. Tujuan Buku
Buku ini bertujuan untuk mengenalkan anatomi logis penyimpanan data pada PostgreSQL, mendefinisikan peran database, tabel, baris, kolom, namespace skema, relasi logis antar tabel, serta mengenalkan dasar penjaminan integritas data di tingkat struktur fisik database.

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu merumuskan tabel logis sederhana, memahami fungsi pengelompokan namespace skema, dan menjelaskan cara kerja relasi primer antar tabel.

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dikembangkan berdasarkan kedalaman materi fondasi dan tidak dibatasi secara kaku. Rencana bab baru dapat ditambahkan secara fleksibel untuk menampung topik fondasi database lainnya.

---

## 4. Daftar Bab Aktif & Skeleton

| No | Bab | Status | Tipe | Ringkasan Materi |
| :---: | :--- | :---: | :---: | :--- |
| 1 | [Bab 01: Database, Table, Row, dan Column](./bab-01-database-table-row-dan-column.md) | **DRAFT** | Fondasi | Pengenalan struktur fisik-logis tabel, baris data, kolom data, dan organisasi dasar database. |
| 2 | [Bab 02: Schema dan Relasi](./bab-02-schema-dan-relasi.md) | **DRAFT** | Fondasi | Memahami peran skema sebagai namespace logis, relasi antar tabel, dan pemisahan domain data logis. |
| 3 | [Bab 03: Data Integrity dan Constraint](./bab-03-data-integrity-dan-constraint.md) | *SKELETON* | Fondasi | Pengenalan awal cara kerja constraint di database untuk menjaga validitas data (Skeleton). |

---

## 5. Urutan Belajar
Pembaca wajib menuntaskan Bab 01 untuk memahami penyusun tabel dasar, dilanjutkan ke Bab 02 untuk mendalami relasi dan skema logis, sebelum beranjak ke kueri manipulasi data SQL di Rak 02.

---

## 6. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi langsung dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
