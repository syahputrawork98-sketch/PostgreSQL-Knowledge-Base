# PostgreSQL Knowledge Base

> Perpustakaan pengetahuan PostgreSQL yang terstruktur seperti perpustakaan nyata: **Perpustakaan -> Rak -> Buku**

## Tentang Proyek Ini

**PostgreSQL Knowledge Base** adalah repositori yang dirancang sebagai perpustakaan pengetahuan tentang PostgreSQL.

Alih-alih menyimpan catatan secara acak atau tersebar, repositori ini mengorganisasikan pengetahuan PostgreSQL dalam struktur yang jelas dan sistematis.

Struktur utama repositori ini mengikuti konsep perpustakaan:
- **Perpustakaan** -> seluruh repositori
- **Rak** -> kategori utama topik PostgreSQL
- **Buku** -> panduan atau dokumentasi tentang satu topik tertentu

Pendekatan ini membuat pengetahuan lebih mudah:
- dipelajari
- dijelajahi
- dipelihara
- dikembangkan

---

## Konsep Arsitektur

Repositori ini dibangun menggunakan model berikut:

```text
Perpustakaan
`-- Rak
    `-- Buku
```

Implementasi di dalam repositori:

```text
Repository (Library)
`-- Shelf (Folder Rak)
    `-- Book (Folder Buku)
        |-- README.md
        |-- docs/
        `-- CHANGELOG.md
```

---

## Struktur Repositori

Struktur utama repositori ini adalah sebagai berikut:

```text
postgresql-knowledge-base/
|-- README.md
|-- docs/
|-- shelves/
|   |-- 01_fundamentals/
|   |   |-- README.md
|   |   |-- docs/
|   |   `-- book-01-.../
|   |       |-- README.md
|   |       |-- docs/
|   |       |-- CHANGELOG.md
|   |       `-- examples/
|   |-- 02_queries/
|   |-- 03_indexing/
|   |-- 04_performance/
|   |-- 05_transactions/
|   |-- 06_replication/
|   |-- 07_security/
|   |-- 08_extensions/
|   |-- 09_administration/
|   `-- 10_troubleshooting/
`-- assets/
```

---

## Arsitektur `docs` Bertingkat

Repositori ini menggunakan **3 level folder `docs`** agar aturan tidak saling bertabrakan:

1. `docs/` di root: aturan dan penjelasan level repositori.
2. `shelves/<rak>/docs/`: aturan dan penjelasan level rak.
3. `shelves/<rak>/<book>/docs/`: aturan dan penjelasan level buku.

### 1) Root `docs/`

Root `docs` hanya membahas hal dalam scope root (global repositori), bukan aturan detail rak atau buku.

Contoh isi:

```text
docs/
|-- library-concept.md
|-- repository-structure.md
|-- versioning-system.md
`-- contribution-guidelines.md
```

### 2) Rack `docs/`

Setiap rak wajib punya folder `docs` untuk aturan di scope rak.

Contoh:

```text
shelves/03_indexing/docs/
|-- rack-scope.md
|-- rack-structure-rules.md
`-- rack-writing-guidelines.md
```

Cakupan utamanya:
- apa saja yang wajib ada di folder rak
- cara menulis `README.md` rak
- cara menyusun katalog dan urutan baca buku di rak tersebut

### 3) Book `docs/`

Setiap buku wajib punya folder `docs` untuk aturan di scope buku.

Contoh:

```text
shelves/03_indexing/book-01-btree-index/docs/
|-- book-scope.md
|-- writing-guidelines.md
`-- contribution-guidelines.md
```

Cakupan utamanya:
- aturan penulisan buku
- aturan kontribusi buku
- penjelasan tambahan yang spesifik untuk buku tersebut

---

## Struktur Rak

Setiap **rak** adalah folder yang berisi kumpulan buku dengan topik yang sama.

Contoh rak:

```text
shelves/03_indexing/
```

Struktur rak:

```text
03_indexing/
|-- README.md
|-- docs/
|-- book-01-btree-index/
|-- book-02-gin-index/
|-- book-03-gist-index/
`-- book-04-partial-index/
```

### README Rak

README pada rak berfungsi sebagai:
- pengantar topik
- katalog buku pada rak tersebut
- urutan membaca buku

Folder `docs` pada rak berfungsi sebagai aturan lokal rak dan tidak mengatur detail isi buku.

---

## Struktur Buku

Setiap **buku** berada di dalam folder sendiri.

Contoh:

```text
book-01-btree-index/
```

Struktur buku:

```text
book-01-btree-index/
|-- README.md
|-- docs/
|-- CHANGELOG.md
`-- examples/
```

### README Buku

README pada buku berisi isi utama buku tersebut, seperti:
- penjelasan konsep
- sintaks SQL
- contoh penggunaan
- best practices
- kesalahan umum

Folder `docs` pada buku menyimpan aturan kontribusi dan penulisan yang berlaku untuk buku itu.

---

## Prinsip Scope Aturan

Agar aturan tidak saling bertabrakan, prinsipnya adalah:

1. Aturan hanya berlaku untuk scope tempat aturan tersebut ditulis.
2. Root tidak mengatur detail rak/buku.
3. Rak tidak mengatur detail internal buku.
4. Buku bebas memiliki aturan penulisan sendiri selama tidak melanggar aturan global root.

Jika terjadi irisan, gunakan aturan yang paling dekat dengan konteks kerja:
- kerja di buku -> ikuti aturan buku
- kerja di rak -> ikuti aturan rak
- kerja di root -> ikuti aturan root

---

## Log History Buku

Setiap buku memiliki **riwayat perubahan** yang disimpan dalam file `CHANGELOG.md`.

Contoh isi:

```text
Version: 1.0.0
Shelf: 03
Book: 01
Title: B-Tree Index

Perubahan:
- Penjelasan konsep dasar B-Tree
- Contoh pembuatan index
- Contoh query menggunakan index
```

Contoh versi berikutnya:

```text
Version: 1.1.0

Perubahan:
- Menambahkan contoh EXPLAIN ANALYZE
- Menambahkan best practices
```

---

## Sistem Penomoran

Untuk menjaga konsistensi perpustakaan, sistem penomoran digunakan.

### Rak

Rak menggunakan format:

```text
01
02
03
```

Contoh:

```text
01_fundamentals
02_queries
03_indexing
```

### Buku

Buku menggunakan format:

```text
book-01
book-02
book-03
```

Contoh:

```text
book-01-btree-index
book-02-gin-index
book-03-partial-index
```

---

## Tujuan Repositori

Repositori ini bertujuan untuk menjadi:
- perpustakaan pengetahuan PostgreSQL
- referensi PostgreSQL yang terstruktur
- sumber pembelajaran PostgreSQL
- dokumentasi praktik terbaik PostgreSQL
- kumpulan studi kasus PostgreSQL

---

## Prinsip Penulisan Buku

Tidak ada template tunggal yang dipaksakan untuk semua buku.

Setiap buku mendefinisikan aturan penulisan dan kontribusinya sendiri di folder `docs` buku masing-masing.

---

## Visi Jangka Panjang

Repositori ini dirancang untuk berkembang menjadi **perpustakaan PostgreSQL yang lengkap dan terstruktur**.

Tujuan akhirnya adalah membuat sistem dokumentasi yang:
- mudah dipelajari oleh pemula
- berguna bagi praktisi
- terorganisasi seperti perpustakaan nyata
- dapat berkembang dalam jangka panjang

---

## Status

Repositori ini sedang dalam tahap pembangunan awal.

Struktur perpustakaan sedang disusun dan buku-buku akan ditambahkan secara bertahap.

---

## Prinsip Utama

> Pengetahuan PostgreSQL harus disusun seperti perpustakaan, bukan seperti kumpulan catatan yang tersebar.
