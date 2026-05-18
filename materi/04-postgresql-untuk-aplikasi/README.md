# Rak 04: PostgreSQL untuk Aplikasi

*   **Status Rak**: **DRAFT / REVIEW**
*   **Target Level**: Level 3 - Level 4 (Integrasi Aplikasi & Siklus Hidup Skema)
*   **Peran**: Pintu masuk utama bagi pengembang backend untuk mengintegrasikan PostgreSQL dengan arsitektur backend modern.
*   **Target Pembaca**: Developer backend yang ingin mengelola koneksi database secara efisien, menulis query dinamis yang aman, mengelola transaksi di service layer secara kokoh, serta mengendalikan daur hidup skema tanpa downtime.

---

## 1. Tujuan Rak
Rak ini bertujuan memandu pengembang backend untuk menghubungkan aplikasi secara aman dan efisien ke PostgreSQL. Kurikulum rak ini mencakup penggunaan database driver vs connection pooling, penanganan enkripsi SSL/TLS, kueri dinamis (list/detail/filter/sorting), penanganan transaksi transaksional (BEGIN/COMMIT/ROLLBACK), pemisahan kredensial via env variables, manajemen rahasia sensitif (Secret), alur kerja database migration, seeding data, dan schema version control.

Selain itu, diperluas dengan topik integrasi tingkat menengah: parameterized query dan prepared statement untuk keamanan SQL Injection, penentuan transaction boundary di Service Layer aplikasi, penanganan transient error (Retry & Idempotency), optimasi dynamic filtering & keyset pagination, penentuan connection pool sizing yang efisien, pengenalan pgBouncer, trade-off ORM vs Native SQL, serta mitigasi risiko rollback migrasi database.

---

## 2. Kebijakan Struktur (No Fixed Limit)
Sesuai dengan [Kebijakan Kedalaman Expert-Scale](../../docs/project/book-chapter-depth-policy.md) and [Standardisasi Struktur](../../docs/project/materi-structure-decision.md), jumlah buku dan bab pada rak ini dikembangkan secara organik mengikuti kedalaman integrasi backend dan tidak dibatasi secara kaku.

---

## 3. Prasyarat Belajar
Pembaca wajib menyelesaikan **Rak 02 (SQL dan Querying)** dan **Rak 03 (Desain Data dan Schema)** sebelum memulai rak ini, agar pemahaman querying dan data modeling dasar sudah matang.

---

## 4. Daftar Buku Aktif & DRAFT

| No | Buku / Folder | Status | Fokus Materi | Jumlah Bab |
| :---: | :--- | :---: | :--- | :---: |
| 1 | [Buku 01: PostgreSQL dalam Aplikasi Backend](./buku-01-postgresql-dalam-backend-application/) | **DRAFT** | Driver vs Pooling, keamanan SSL, query dinamis (list/detail/filter/sorting/pagination), dan kontrol transaksi backend. | 7 Bab |
| 2 | [Buku 02: Koneksi Database dan Environment](./buku-02-koneksi-database-dan-environment/) | **DRAFT** | Konfigurasi Environment Variables, manajemen rahasia sensitif (Secret), dan diagnosis gangguan koneksi (Troubleshooting). | 3 Bab |
| 3 | [Buku 03: Migration, Seed, dan Versioning](./buku-03-migration-seed-dan-versioning-schema/) | **DRAFT** | Alur kerja Database Migration, Seeding dasar, Seeding vs Migration vs Prod, dan kontrol versi skema database. | 4 Bab |
| 4 | [Buku 04: Query untuk Fitur Aplikasi](./buku-04-query-untuk-fitur-aplikasi/) | **DRAFT** | Query autentikasi user, pagination dinamis backend, dan pencarian teks dasar. | 3 Bab |
| 5 | [Buku 05: Query Aman dan Parameterized Query](./buku-05-query-aman-dan-parameterized-query/) | **DRAFT** | SQL Injection, Parameterized query ($1, $2), prepared statement native, validasi input dinamis, dan least privilege database user. | 3 Bab |
| 6 | [Buku 06: Transaction Boundary di Service Layer](./buku-06-transaction-boundary-di-service-layer/) | **DRAFT** | Transaction Boundary di Service layer, error handling transaksi, retry transient error (deadlock/serialization), idempotency, dan race conditions. | 3 Bab |
| 7 | [Buku 07: Pagination, Filtering, dan Query Pattern Aplikasi](./buku-07-pagination-filtering-dan-query-pattern-aplikasi/) | **DRAFT** | Offset pagination vs Keyset (cursor-based) pagination, O(1) paging performance, dynamic filtering, dynamic sorting risk. | 3 Bab |
| 8 | [Buku 08: Connection Pooling dan Trade-off Akses Data](./buku-08-connection-pooling-dan-tradeoff-akses-data/) | **DRAFT** | Connection pool sizing optimal, pgBouncer session/transaction pooling, trade-off ORM vs Native SQL, dan mitigasi partial migration failure. | 4 Bab |

---

## 5. Jalur Belajar yang Disarankan
Pembaca direkomendasikan menyelesaikan Buku 01 s/d Buku 03 untuk fondasi integrasi database backend dasar. Lanjutkan ke Buku 04 untuk memahami query fitur nyata. Setelah itu, pelajari Buku 05 (keamanan kueri) dan Buku 06 (transaksi tingkat Service Layer) untuk menjamin kekokohan aplikasi. Terakhir, pelajari Buku 07 (pagination & dynamic query optimal) dan Buku 08 (pooling & deployment zero-downtime) untuk arsitektur backend skala produksi modern.

---

## 6. Output yang Diharapkan
*   Kemampuan mengintegrasikan database driver dan connection pooling ke dalam backend secara efisien dan aman.
*   Mampu menulis kueri penanganan pagination dan filtering dinamis berkinerja tinggi yang aman dari serangan SQL Injection.
*   Menguasai siklus hidup database migration, rollback safety, dan schema versioning untuk kolaborasi tim berskala besar.

---

## 7. Kebijakan & Manajemen Dokumen
*   **Status Penulisan**: `DRAFT` (Seluruh 30 bab aktif masih berupa draf materi awal).
*   **Status Verifikasi Sumber**: `REVIEW` (Menunggu validasi resmi dengan PostgreSQL Official Documentation).
*   **Pranala Kebijakan**:
    *   [Kebijakan Kedalaman Bab Expert-Scale](../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../docs/project/materi-expert-scale-gap-matrix.md)
    *   [Standar Penulisan Materi](../../docs/project/materi-writing-standard.md)
