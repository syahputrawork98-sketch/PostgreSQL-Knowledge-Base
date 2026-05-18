# Buku 01: PostgreSQL dalam Aplikasi Backend

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 04: PostgreSQL untuk Aplikasi](../README.md)
*   **Target Level**: Level 3 - Level 4 (Integrasi Backend)
*   **Tipe Materi**: Praktik Integrasi & Query Backend

---

## 1. Tujuan Buku
Buku ini bertujuan untuk memperkenalkan peran sentral database dalam arsitektur backend, mengajarkan cara kerja database driver vs connection pooling untuk menghemat resource koneksi server, mengamankan jalur komunikasi database via SSL/TLS, menyusun query dinamis untuk penanganan detail data dan pagination dinamis secara aman, serta melatih kontrol transaksional database (BEGIN/COMMIT/ROLLBACK) di dalam kode backend.

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu mengonfigurasi connection pool backend secara optimal, mengamankan jalur koneksi DB dari penyadapan, menulis query dinamis bebas SQL Injection, serta menangani error rollback transaksi backend secara mandiri.

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dirancang secara modular dan tidak dibatasi secara kaku. Berdasarkan [Matriks Celah Materi](../../../docs/project/materi-expert-scale-gap-matrix.md), buku ini sangat padat (7 bab) dan direncanakan untuk dimekarkan menjadi dua buku mandiri pada batch menengah mendatang demi kedalaman pembahasan pooling dan transaksi yang optimal.

---

## 4. Daftar Bab Aktif

| No | Bab | Status | Tipe | Ringkasan Materi |
| :---: | :--- | :---: | :---: | :--- |
| 1 | [Bab 01: Peran Database di Arsitektur Backend](./bab-01-peran-database-di-arsitektur-backend.md) | **DRAFT** | Konseptual | Aliran data dari client ke backend ke database, perbedaan raw SQL vs Query Builder vs ORM. |
| 2 | [Bab 02: Database Driver dan Connection Pooling](./bab-02-database-driver-dan-connection-pooling.md) | **DRAFT** | Praktik | Cara kerja driver database, masalah satu koneksi per request, dan konfigurasi ukuran pool (`max_connections`). |
| 3 | [Bab 03: Keamanan Koneksi Database](./bab-03-keamanan-koneksi-database.md) | **DRAFT** | Praktik | Enkripsi koneksi SSL/TLS, mode SSL (`require`/`verify-full`), dan sertifikat CA database. |
| 4 | [Bab 04: Query untuk List & Detail Data Aplikasi](./bab-04-query-untuk-list-dan-detail-data-aplikasi.md) | **DRAFT** | Praktik | Sintaks query memuat list barang e-commerce, query pencarian detail barang berdasarkan ID, dan sanitasi parameter input. |
| 5 | [Bab 05: Query untuk Filter, Sorting, dan Pagination](./bab-05-query-untuk-filter-sorting-dan-pagination.md) | **DRAFT** | Praktik | Pembuatan filter dinamis, pengurutan parameter aman, dan pagination dinamis menggunakan limit-offset vs keyset pagination. |
| 6 | [Bab 06: Transaksi Database untuk Aplikasi](./bab-06-transaksi-database-untuk-aplikasi.md) | **DRAFT** | Praktik | Logika pembungkus transaksi di backend, penanganan kegagalan query tengah jalan, dan proteksi integritas saldo bank. |
| 7 | [Bab 07: BEGIN, COMMIT, dan ROLLBACK](./bab-07-begin-commit-dan-rollback.md) | **DRAFT** | Praktik | Pengendalian perintah transaksional eksplisit di PostgreSQL, alur state mesin transaksi, dan penanganan rollback otomatis. |

---

## 5. Urutan Belajar
Pembaca wajib menempuh materi secara berurutan dari Bab 01 hingga Bab 07 untuk menjamin pemahaman integrasi backend yang sistematis dan bebas dari kebingungan transaksional.

---

## 6. Koneksi ke Project Nyata
Keterampilan yang diajarkan pada buku ini merupakan pondasi wajib dalam membangun RESTful API atau gRPC service yang terintegrasi secara andal dengan PostgreSQL pada beban kerja skala produksi industri.

---

## 7. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi langsung dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
