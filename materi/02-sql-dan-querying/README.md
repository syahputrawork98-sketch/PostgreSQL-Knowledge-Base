# Rak 02: SQL dan Querying

*   **Status Rak**: **DRAFT / REVIEW**
*   **Target Level**: Level 1 - Level 2 (Dasar SQL)
*   **Peran**: Pintu masuk utama bagi pengembang backend untuk menguasai Standard Query Language (SQL) di PostgreSQL.
*   **Target Pembaca**: Pemula dan developer backend yang ingin membangun pemahaman querying yang efisien dan terstruktur.

---

## 1. Tujuan Rak
Rak ini bertujuan membimbing pembaca menguasai sintaks SQL standar ANSI di PostgreSQL, mulai dari kueri SELECT paling sederhana, manipulasi hasil kolom, teknik penyaringan baris data (filtering), pengurutan data (sorting), penggabungan relasi tabel (JOIN), hingga agregasi matematika serta pengelompokan grup data (GROUP BY / HAVING).

---

## 2. Kebijakan Struktur (No Fixed Limit)
Sesuai dengan [Kebijakan Kedalaman Expert-Scale](../../docs/project/book-chapter-depth-policy.md) dan [Standardisasi Struktur](../../docs/project/materi-structure-decision.md), jumlah buku dan bab pada rak ini dikembangkan secara organik mengikuti kedalaman ilmu SQL dan tidak dibatasi secara kaku.

---

## 3. Prasyarat Belajar
Sangat disarankan menyelesaikan **Rak 01 Buku 04: Fondasi Konsep Database** sebelum memulai kueri SQL di rak ini agar model mental relasi tabel logis sudah terbentuk dengan baik.

---

## 4. Daftar Buku Aktif & DRAFT

| No | Buku / Folder | Status | Fokus Materi | Jumlah Bab |
| :---: | :--- | :---: | :--- | :---: |
| 1 | [Buku 01: Query SELECT](./buku-01-dasar-sql-dan-query-select/) | **DRAFT** | Struktur dasar perintah SELECT, manipulasi proyeksi kolom, dan alias kolom/tabel. | 3 Bab |
| 2 | [Buku 02: Filtering, Sorting, dan Limit](./buku-02-filtering-sorting-dan-limit/) | **DRAFT** | Klausa WHERE, operator perbandingan/logika, limitasi data, dan pengurutan data dengan ORDER BY. | 3 Bab |
| 3 | [Buku 03: JOIN dan Relasi Query](./buku-03-join-dan-relasi-query/) | **DRAFT** | Konsep relasi tabel, INNER JOIN, LEFT JOIN, dan RIGHT JOIN logis. | 3 Bab |
| 4 | [Buku 04: Agregasi, Grouping, dan Having](./buku-04-agregasi-grouping-dan-having/) | **DRAFT** | Fungsi agregasi matematika (COUNT, SUM, AVG), GROUP BY, dan HAVING filter grup. | 3 Bab |

---

## 5. Jalur Belajar yang Disarankan
Pembaca wajib menempuh alur secara berurutan mulai dari Buku 01 (SELECT dasar), Buku 02 (Filter data), Buku 03 (JOIN relasi), hingga Buku 04 (Kalkulasi agregasi data) untuk menjamin kurikulum belajar yang solid.

---

## 6. Output yang Diharapkan
*   Kemampuan menulis kueri SELECT terstandar ANSI SQL secara mandiri di PostgreSQL.
*   Kemampuan merancang kueri laporan data transaksional menggunakan agregasi dan GROUP BY.
*   Menguasai cara menggabungkan data dari beberapa tabel relasional secara tepat tanpa bias duplikasi data.

---

## 7. Kebijakan & Manajemen Dokumen
*   **Status Penulisan**: `DRAFT` (Seluruh 12 bab aktif masih berupa draf materi awal).
*   **Status Verifikasi Sumber**: `REVIEW` (Menunggu validasi resmi dengan PostgreSQL Official Documentation).
*   **Pranala Kebijakan**:
    *   [Kebijakan Kedalaman Bab Expert-Scale](../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../docs/project/materi-expert-scale-gap-matrix.md)
    *   [Standar Penulisan Materi](../../docs/project/materi-writing-standard.md)
