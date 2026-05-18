# Buku 04: Query untuk Fitur Aplikasi

*   **Status Buku**: **SKELETON** (Belum Ditulis)
*   **Rak**: [Rak 04: PostgreSQL untuk Aplikasi](../README.md)
*   **Target Level**: Level 3 - Level 4 (Fitur Backend)
*   **Tipe Materi**: Praktik Kueri Backend & Kasus Nyata

---

## 1. Tujuan Buku
Buku ini dirancang untuk membahas penulisan kueri SQL spesifik yang sering digunakan untuk mengimplementasikan fitur aplikasi backend standar, seperti penanganan kueri autentikasi pengguna secara aman, implementasi pagination dinamis berkinerja tinggi, dan kueri pencarian teks tingkat dasar.

---

## 2. Hasil Belajar (Direncanakan)
Setelah menyelesaikan buku ini, pembaca diharapkan mampu menulis query login/register yang aman dari serangan eksploitasi credential, mendesain kueri paging dinamis yang optimal tanpa mengorbankan memori CPU, serta menerapkan pencarian teks dasar menggunakan operator database standar.

---

## 3. Kebijakan Struktur (No Fixed Limit)
Buku ini masih berupa skeleton. Jumlah bab tidak dibatasi secara kaku dan berhak dikembangkan secara organik untuk menampung pola kueri fitur backend canggih lainnya (seperti soft-delete, pencatatan histori histori audit, dll.).

---

## 4. Daftar Bab (Skeleton / Direncanakan)

| No | Bab | Status | Tipe | Ringkasan Rencana Materi |
| :---: | :--- | :---: | :---: | :--- |
| 1 | [Bab 01: Query untuk Autentikasi User](./bab-01-query-untuk-autentikasi-user.md) | *SKELETON* | Praktik | Penanganan query user registration, lookup credential login secara aman, dan mitigasi penyerangan SQL injection. |
| 2 | [Bab 02: Query untuk Pagination](./bab-02-query-untuk-pagination.md) | *SKELETON* | Praktik | Sintaks kueri paging dinamis, performa offset-limit, dan kueri keyset pagination (cursor-based pagination). |
| 3 | [Bab 03: Query untuk Pencarian Dasar](./bab-03-query-untuk-pencarian-dasar.md) | *SKELETON* | Praktik | Pencarian pola string dasar, penggunaan clause `LIKE`, operator case-insensitive `ILIKE`, dan pengenalan indeks indexing awal. |

---

## 5. Hubungan dengan Buku Lain
Buku ini mengaplikasikan seluruh dasar querying dari Rak 02 langsung ke dalam pemenuhan fitur bisnis backend aplikasi yang didiskusikan di Buku 01.

---

## 6. Status & Kebijakan Dokumen
*   **Status Penulisan**: `SKELETON` (Menunggu alokasi pengerjaan di bawah persetujuan User).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
