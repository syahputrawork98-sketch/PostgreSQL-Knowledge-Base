# Rak 03: Desain Data dan Schema

*   **Status Rak**: **DRAFT / REVIEW**
*   **Target Level**: Level 2 - Level 3 (Desain Data & Relasional)
*   **Peran**: Pintu masuk utama bagi pengembang backend untuk menguasai Data Modeling dan skema fisik di PostgreSQL.
*   **Target Pembaca**: Developer backend dan arsitek database pemula-menengah yang ingin mendesain database kokoh dan adaptif.

---

## 1. Tujuan Rak
Rak ini bertujuan membimbing pembaca menguasai seni merancang skema database fisik yang kokoh, memahami fungsi namespace skema logis, membuat tipe data optimal, menjamin integritas data tingkat database menggunakan PK/FK dan CHECK constraints, serta menguasai teori normalisasi (1NF, 2NF, 3NF) vs denormalisasi taktis untuk performa kueri baca.

---

## 2. Kebijakan Struktur (No Fixed Limit)
Sesuai dengan [Kebijakan Kedalaman Expert-Scale](../../docs/project/book-chapter-depth-policy.md) and [Standardisasi Struktur](../../docs/project/materi-structure-decision.md), jumlah buku dan bab pada rak ini dikembangkan secara organik mengikuti kebutuhan kedalaman ilmu data modeling dan tidak dibatasi secara kaku.

---

## 3. Prasyarat Belajar
Pembaca disarankan menyelesaikan seluruh materi di **Rak 02: SQL dan Querying** sebelum memulai rak ini, agar memiliki keterampilan penulisan query yang memadai saat memanipulasi skema tabel baru.

---

## 4. Daftar Buku Aktif & Skeleton

| No | Buku / Folder | Status | Fokus Materi | Jumlah Bab |
| :---: | :--- | :---: | :--- | :---: |
| 1 | [Buku 01: Konsep Table, Schema, dan Relasi](./buku-01-konsep-table-schema-dan-relasi/) | **DRAFT** | Penggunaan namespace schema, pembuatan table fisik, tipe data optimal, dan relasi 1-to-1 / 1-to-many. | 3 Bab |
| 2 | [Buku 02: Primary Key, Foreign Key, dan Constraint](./buku-02-primary-key-foreign-key-dan-constraint/) | **DRAFT** | Pentingnya Primary Key, Foreign Key & referential integrity, serta CHECK/UNIQUE constraints. | 3 Bab |
| 3 | [Buku 03: Normalisasi dan Denormalisasi](./buku-03-normalisasi-dan-denormalisasi/) | **DRAFT** | Teori Normal Form 1-2-3, pembenaran denormalisasi taktis, dan dampak desain database pada performa cache. | 3 Bab |
| 4 | [Buku 04: Desain Schema untuk Aplikasi](./buku-04-desain-schema-untuk-aplikasi/) | *SKELETON* | Skema SaaS multi-tenant, e-commerce transaksional tinggi, dan standardisasi penamaan. | 3 Bab (Skeleton) |

---

## 5. Jalur Belajar yang Disarankan
Sangat direkomendasikan menyelesaikan Buku 01 (pembuatan tabel dasar), Buku 02 (penguncian integritas via constraint), Buku 03 (strategi normalisasi), lalu Buku 04 (praktik skema e-commerce/SaaS) untuk membentuk keterampilan perancangan yang utuh.

---

## 6. Output yang Diharapkan
*   Kemampuan merancang tabel fisik yang kokoh dengan tipe data optimal di PostgreSQL.
*   Menguasai cara menjamin integritas referensial data antar tabel di tingkat database engine.
*   Mampu memutuskan secara objektif kapan harus melakukan denormalisasi data untuk optimasi performa aplikasi backend.

---

## 7. Kebijakan & Manajemen Dokumen
*   **Status Penulisan**: `DRAFT` (Seluruh 9 bab aktif masih berupa draf materi awal).
*   **Status Verifikasi Sumber**: `REVIEW` (Menunggu validasi resmi dengan PostgreSQL Official Documentation).
*   **Pranala Kebijakan**:
    *   [Kebijakan Kedalaman Bab Expert-Scale](../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../docs/project/materi-expert-scale-gap-matrix.md)
    *   [Standar Penulisan Materi](../../docs/project/materi-writing-standard.md)
