# Rak 03: Desain Data dan Schema

*   **Status Rak**: **DRAFT / REVIEW**
*   **Target Level**: Level 2 - Level 3 (Desain Data & Relasional)
*   **Peran**: Pintu masuk utama bagi pengembang backend untuk menguasai Data Modeling dan skema fisik di PostgreSQL.
*   **Target Pembaca**: Developer backend dan arsitek database pemula-menengah yang ingin mendesain database kokoh, adaptif, dan berskala besar.

---

## 1. Tujuan Rak
Rak ini bertujuan membimbing pembaca menguasai seni merancang skema database fisik yang kokoh. Kurikulum rak ini mencakup penggunaan namespace skema logis, pembuatan tabel fisik, pemilihan tipe data optimal (primitif, date/time/timezone, auto-increment PK vs UUID, ENUM/ARRAY/RANGE/JSONB pengantar), penjaminan integritas data tingkat database menggunakan PK/FK/CHECK/UNIQUE/EXCLUDE/DEFERRABLE constraints, penerapan generated columns & domain kustom, teori normalisasi (1NF, 2NF, 3NF) vs denormalisasi taktis, manajemen evolusi skema zero-downtime (ALTER TABLE locking & Expand-Contract pattern), serta pengenalan table partitioning deklaratif.

---

## 2. Kebijakan Struktur (No Fixed Limit)
Sesuai dengan [Kebijakan Kedalaman Expert-Scale](../../docs/project/book-chapter-depth-policy.md) and [Standardisasi Struktur](../../docs/project/materi-structure-decision.md), jumlah buku dan bab pada rak ini dikembangkan secara organik mengikuti kebutuhan kedalaman ilmu data modeling dan tidak dibatasi secara kaku.

---

## 3. Prasyarat Belajar
Pembaca disarankan menyelesaikan seluruh materi di **Rak 02: SQL dan Querying** sebelum memulai rak ini, agar memiliki keterampilan penulisan query yang memadai saat memanipulasi skema tabel baru.

---

## 4. Daftar Buku Aktif & DRAFT

| No | Buku / Folder | Status | Fokus Materi | Jumlah Bab |
| :---: | :--- | :---: | :--- | :---: |
| 1 | [Buku 01: Konsep Table, Schema, dan Relasi](./buku-01-konsep-table-schema-dan-relasi/) | **DRAFT** | Penggunaan namespace schema, pembuatan table fisik, tipe data optimal, dan relasi 1-to-1 / 1-to-many. | 3 Bab |
| 2 | [Buku 02: Primary Key, Foreign Key, dan Constraint](./buku-02-primary-key-foreign-key-dan-constraint/) | **DRAFT** | Pentingnya Primary Key, Foreign Key & referential integrity, serta CHECK/UNIQUE constraints. | 3 Bab |
| 3 | [Buku 03: Normalisasi dan Denormalisasi](./buku-03-normalisasi-dan-denormalisasi/) | **DRAFT** | Teori Normal Form 1-2-3, pembenaran denormalisasi taktis, dan dampak desain database pada performa cache. | 3 Bab |
| 4 | [Buku 04: Desain Schema untuk Aplikasi](./buku-04-desain-schema-untuk-aplikasi/) | **DRAFT** | Pola desain skema SaaS multi-tenant, e-commerce transaksional tinggi, dan standardisasi penamaan. | 3 Bab |
| 5 | [Buku 05: Tipe Data PostgreSQL untuk Desain Schema](./buku-05-tipe-data-postgresql-untuk-desain-schema/) | **DRAFT** | Karakter, angka, date/time/timezone, AUTO_INCREMENT (identity/serial) vs UUID PK, ENUM, ARRAY, RANGE, dan JSONB pengantar. | 4 Bab |
| 6 | [Buku 06: Constraint Lanjutan dan Integritas Data](./buku-06-constraint-lanjutan-dan-integritas-data/) | **DRAFT** | Partial unique index untuk soft-delete, Exclusion constraint (GiST) untuk non-overlapping, Deferrable constraint, Generated column, dan Domain kustom. | 4 Bab |
| 7 | [Buku 07: Schema Evolution dan Perubahan Struktur](./buku-07-schema-evolution-dan-perubahan-struktur/) | **DRAFT** | Perintah ALTER TABLE, lock table, deployment zero-downtime (Expand & Contract pattern), dan migrasi data latar belakang bertahap. | 3 Bab |
| 8 | [Buku 08: Partitioning dan Desain Data Skala Besar](./buku-08-partitioning-dan-desain-data-skala-besar/) | **DRAFT** | Konsep partisi tabel parent-child, partisi deklaratif Range, List, dan Hash, pemilihan Partition Key, dan Partition Pruning. | 3 Bab |

---

## 5. Jalur Belajar yang Disarankan
Sangat direkomendasikan menyelesaikan Buku 01 s/d Buku 03 untuk fondasi desain skema dasar. Lanjutkan ke Buku 04 untuk melihat penerapan di dunia nyata (SaaS & E-commerce). Setelah itu, pelajari Buku 05 (tipe data lanjutan) dan Buku 06 (constraint canggih) untuk menjamin kualitas integritas data. Terakhir, pelajari Buku 07 (perubahan skema aman di produksi) dan Buku 08 (partisi tabel besar) untuk bekal arsitektur senior.

---

## 6. Output yang Diharapkan
*   Kemampuan merancang tabel fisik yang kokoh dengan tipe data optimal di PostgreSQL.
*   Menguasai cara menjamin integritas referensial dan validasi bisnis tingkat database melalui constraint canggih.
*   Mampu merancang perubahan skema di database produksi tanpa memicu downtime (*zero-downtime deployment*).
*   Memahami konsep pembagian data skala besar (*table partitioning*) secara logis dan fisik.

---

## 7. Kebijakan & Manajemen Dokumen
*   **Status Penulisan**: `DRAFT` (Seluruh 26 bab aktif masih berupa draf materi awal).
*   **Status Verifikasi Sumber**: `REVIEW` (Menunggu validasi resmi dengan PostgreSQL Official Documentation).
*   **Pranala Kebijakan**:
    *   [Kebijakan Kedalaman Bab Expert-Scale](../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../docs/project/materi-expert-scale-gap-matrix.md)
    *   [Standar Penulisan Materi](../../docs/project/materi-writing-standard.md)
