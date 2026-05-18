# Rak 04: PostgreSQL untuk Aplikasi

*   **Status Rak**: **DRAFT / REVIEW**
*   **Target Level**: Level 3 - Level 4 (Integrasi Aplikasi & Siklus Hidup Skema)
*   **Peran**: Pintu masuk utama bagi pengembang backend untuk mengintegrasikan PostgreSQL dengan arsitektur backend modern.
*   **Target Pembaca**: Developer backend yang ingin mengelola koneksi database, mengoptimalkan query dinamis aplikasi, serta mengelola evolusi skema melalui migrasi skema ter-versioning.

---

## 1. Tujuan Rak
Rak ini bertujuan memandu pengembang backend untuk menghubungkan aplikasi secara aman dan efisien ke PostgreSQL. Pembaca akan belajar mengenai cara kerja database driver vs connection pooling, penanganan enkripsi SSL/TLS, kueri filter-sort-pagination dinamis, penanganan transaksi transaksional (BEGIN/COMMIT/ROLLBACK), pemisahan kredensial via env variables, serta pengelolaan daur hidup skema menggunakan database migration, seeding data, dan schema version control.

---

## 2. Kebijakan Struktur (No Fixed Limit)
Sesuai dengan [Kebijakan Kedalaman Expert-Scale](../../docs/project/book-chapter-depth-policy.md) and [Standardisasi Struktur](../../docs/project/materi-structure-decision.md), jumlah buku dan bab pada rak ini dikembangkan secara organik mengikuti kedalaman integrasi backend dan tidak dibatasi secara kaku.

---

## 3. Prasyarat Belajar
Pembaca wajib menyelesaikan **Rak 02 (SQL dan Querying)** dan **Rak 03 (Desain Data dan Schema)** sebelum memulai rak ini, agar pemahaman querying dan data modeling dasar sudah matang.

---

## 4. Daftar Buku Aktif & Skeleton

| No | Buku / Folder | Status | Fokus Materi | Jumlah Bab |
| :---: | :--- | :---: | :--- | :---: |
| 1 | [Buku 01: PostgreSQL dalam Aplikasi Backend](./buku-01-postgresql-dalam-backend-application/) | **DRAFT** | Driver vs Pooling, keamanan SSL, query dinamis (list/detail/filter/sorting/pagination), dan kontrol transaksi backend. | 7 Bab |
| 2 | [Buku 02: Koneksi Database dan Environment](./buku-02-koneksi-database-dan-environment/) | **DRAFT** | Konfigurasi Environment Variables, manajemen rahasia sensitif (Secret), dan diagnosis gangguan koneksi (Troubleshooting). | 3 Bab |
| 3 | [Buku 03: Migration, Seed, dan Versioning](./buku-03-migration-seed-dan-versioning-schema/) | **DRAFT** | Alur kerja Database Migration, Seeding dasar, Seeding vs Migration vs Prod, dan kontrol versi skema database. | 4 Bab |
| 4 | [Buku 04: Query untuk Fitur Aplikasi](./buku-04-query-untuk-fitur-aplikasi/) | *SKELETON* | Query autentikasi user, pagination dinamis backend, dan pencarian teks dasar. | 3 Bab (Skeleton) |

---

## 5. Jalur Belajar yang Disarankan
Pembaca direkomendasikan menyelesaikan Buku 01 terlebih dahulu (menghubungkan backend dan query dasar aplikasi), dilanjutkan ke Buku 02 untuk pengamanan environment deployment, lalu Buku 03 untuk tata kelola siklus skema database di lingkungan tim pengembang.

---

## 6. Output yang Diharapkan
*   Kemampuan mengintegrasikan database driver dan connection pooling ke dalam backend secara efisien.
*   Mampu menulis kueri penanganan pagination dan filtering dinamis yang aman dari serangan SQL Injection.
*   Menguasai alur kerja database migration dan schema versioning untuk kolaborasi tim berskala besar.

---

## 7. Kebijakan & Manajemen Dokumen
*   **Status Penulisan**: `DRAFT` (Seluruh 14 bab aktif masih berupa draf materi awal).
*   **Status Verifikasi Sumber**: `REVIEW` (Menunggu validasi resmi dengan PostgreSQL Official Documentation).
*   **Pranala Kebijakan**:
    *   [Kebijakan Kedalaman Bab Expert-Scale](../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../docs/project/materi-expert-scale-gap-matrix.md)
    *   [Standar Penulisan Materi](../../docs/project/materi-writing-standard.md)
