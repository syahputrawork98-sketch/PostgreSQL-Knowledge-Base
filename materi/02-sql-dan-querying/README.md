# Rak 02: SQL dan Querying

*   **Status Rak**: **DRAFT / REVIEW**
*   **Target Level**: Level 1 - Level 2 (Dasar hingga Menengah SQL Core)
*   **Peran**: Pintu masuk utama bagi pengembang backend untuk menguasai Standard Query Language (SQL) di PostgreSQL secara mendalam.
*   **Target Pembaca**: Pemula dan developer backend yang ingin membangun pemahaman querying, modifikasi data, dan komposisi kueri analitik yang efisien dan terstruktur.

---

## 1. Tujuan Rak
Rak ini bertujuan membimbing pembaca menguasai sintaks SQL standar ANSI di PostgreSQL secara komprehensif. Kurikulum rak ini mencakup penulisan kueri SELECT dasar, manipulasi proyeksi kolom, penyaringan data (WHERE), pengurutan data (ORDER BY), penggabungan relasi tabel (JOIN), kalkulasi kelompok data (Agregasi & GROUP BY), modifikasi data (DML: INSERT/UPDATE/DELETE/UPSERT), penanganan logika NULL (Three-Valued Logic), casting tipe data, subquery bersarang (uncorrelated & correlated), Common Table Expression (CTE dasar & recursive), operasi himpunan (UNION/INTERSECT/EXCEPT), serta Window Functions dasar.

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
| 5 | [Buku 05: DML dan Perubahan Data](./buku-05-dml-dan-perubahan-data/) | **DRAFT** | Penyisipan data (INSERT), pembaruan/penghapusan (UPDATE/DELETE), pengembalian kolom tergenerasi (RETURNING), dan UPSERT. | 3 Bab |
| 6 | [Buku 06: NULL, Predicate, dan Ekspresi SQL](./buku-06-null-predicate-dan-ekspresi-sql/) | **DRAFT** | Logika 3-valued NULL (TRUE/FALSE/UNKNOWN), predikat filter lanjutan, casting tipe data, dan percabangan CASE WHEN. | 3 Bab |
| 7 | [Buku 07: Subquery, CTE, dan Query Composition](./buku-07-subquery-cte-dan-query-composition/) | **DRAFT** | Kueri bersarang (uncorrelated & correlated subquery), operator EXISTS, WITH clause (CTE), dan pengantar Recursive CTE hierarkis. | 4 Bab |
| 8 | [Buku 08: Set Operations dan Window Functions](./buku-08-set-operations-dan-window-functions/) | **DRAFT** | Operasi vertikal himpunan (UNION/INTERSECT/EXCEPT) dan kueri analitik dinamis (Window Functions dasar, OVER, PARTITION BY, frame). | 3 Bab |

---

## 5. Jalur Belajar yang Disarankan
Pembaca wajib menempuh alur secara berurutan mulai dari Buku 01 s/d Buku 04 untuk menguasai query baca dasar. Dilanjutkan ke Buku 05 untuk memanipulasi data aplikasi, Buku 06 untuk memahami semantik data kosong, lalu Buku 07 & Buku 08 untuk menguasai teknik penyusunan kueri analitik kompleks penunjang fitur backend.

---

## 6. Output yang Diharapkan
*   Kemampuan menulis kueri SELECT terstandar ANSI SQL secara mandiri di PostgreSQL.
*   Mampu memodifikasi data secara aman (INSERT/UPDATE/DELETE) dengan pemanfaatan RETURNING untuk performa network backend.
*   Menguasai cara menangani data NULL dan kueri bersarang (subquery & CTE) secara efisien bebas blunder logika.
*   Menguasai Window Functions untuk menyajikan kalkulasi analitik dinamis pada dasbor laporan backend.

---

## 7. Kebijakan & Manajemen Dokumen
*   **Status Penulisan**: `DRAFT` (Seluruh 25 bab aktif masih berupa draf materi awal).
*   **Status Verifikasi Sumber**: `REVIEW` (Menunggu validasi resmi dengan PostgreSQL Official Documentation).
*   **Pranala Kebijakan**:
    *   [Kebijakan Kedalaman Bab Expert-Scale](../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../docs/project/materi-expert-scale-gap-matrix.md)
    *   [Standar Penulisan Materi](../../docs/project/materi-writing-standard.md)
