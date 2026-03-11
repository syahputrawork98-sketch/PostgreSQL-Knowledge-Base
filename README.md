# PostgreSQL Knowledge Base

> Basis pengetahuan PostgreSQL yang disusun untuk belajar bertahap: **Knowledge Base -> Topic -> Module**

## Tentang Proyek Ini

**PostgreSQL Knowledge Base** adalah repositori yang dirancang untuk memecah pengetahuan PostgreSQL menjadi unit belajar kecil yang lebih mudah dipahami.

Alih-alih membaca satu dokumentasi besar dari awal sampai akhir, repositori ini mengelompokkan materi ke dalam struktur yang jelas dan sistematis.

Struktur operasional repositori ini adalah:
- **Knowledge Base** -> seluruh repositori
- **Topic** -> kelompok topik utama PostgreSQL
- **Module** -> unit belajar kecil yang fokus pada satu topik

Sebagai analogi pembelajaran, struktur ini juga bisa dibayangkan seperti perpustakaan:
- **Perpustakaan** -> seluruh repositori
- **Rak** -> kelompok topik
- **Buku kecil** -> unit belajar kecil

Pendekatan ini membuat pengetahuan lebih mudah:
- dipelajari
- dijelajahi
- dipelihara
- dikembangkan

---

## Konsep Arsitektur

Repositori ini dibangun menggunakan model berikut:

```text
Knowledge Base
`-- Topic
    `-- Module
```

Sebagai metafora pembelajaran:

```text
Perpustakaan
`-- Rak
    `-- Buku kecil
```

Implementasi di dalam repositori:

```text
Repository (Knowledge Base)
`-- Topic (Folder Topic)
    `-- Module (Folder Module)
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
|-- topics/
|   |-- 01_fundamentals/
|   |   |-- README.md
|   |   |-- docs/
|   |   `-- module-01-.../
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
2. `topics/<topic>/docs/`: aturan dan penjelasan level topic.
3. `topics/<topic>/<module>/docs/`: aturan dan penjelasan level module.

### 1) Root `docs/`

Root `docs` hanya membahas hal dalam scope root, bukan aturan detail topic atau module.

Contoh isi:

```text
docs/
|-- library-concept.md
|-- repository-structure.md
|-- versioning-system.md
`-- contribution-guidelines.md
```

### 2) Topic `docs/`

Setiap topic wajib punya folder `docs` untuk aturan di scope topic.

Contoh:

```text
topics/03_indexing/docs/
|-- topic-scope.md
|-- topic-structure-rules.md
`-- topic-writing-guidelines.md
```

Cakupan utamanya:
- apa saja yang wajib ada di folder topic
- cara menulis `README.md` topic
- cara menyusun katalog dan urutan baca module di topic tersebut

### 3) Module `docs/`

Setiap module wajib punya folder `docs` untuk aturan di scope module.

Contoh:

```text
topics/03_indexing/module-01-btree-index/docs/
|-- module-scope.md
|-- writing-guidelines.md
`-- contribution-guidelines.md
```

Cakupan utamanya:
- aturan penulisan module
- aturan kontribusi module
- penjelasan tambahan yang spesifik untuk module tersebut

---

## Struktur Topic

Setiap **topic** adalah folder yang berisi kumpulan module dengan topik yang sama.

Contoh topic:

```text
topics/03_indexing/
```

Struktur topic:

```text
03_indexing/
|-- README.md
|-- docs/
|-- module-01-btree-index/
|-- module-02-gin-index/
|-- module-03-gist-index/
`-- module-04-partial-index/
```

### README Topic

README pada topic berfungsi sebagai:
- pengantar topik
- katalog module pada topic tersebut
- urutan membaca module

Folder `docs` pada topic berfungsi sebagai aturan lokal topic dan tidak mengatur detail isi module.

---

## Struktur Module

Setiap **module** berada di dalam folder sendiri.

Contoh:

```text
module-01-btree-index/
```

Struktur module:

```text
module-01-btree-index/
|-- README.md
|-- docs/
|-- CHANGELOG.md
`-- examples/
```

### README Module

README pada module berisi isi utama module tersebut, seperti:
- penjelasan konsep
- sintaks SQL
- contoh penggunaan
- best practices
- kesalahan umum

Folder `docs` pada module menyimpan aturan kontribusi dan penulisan yang berlaku untuk module itu.

---

## Prinsip Scope Aturan

Agar aturan tidak saling bertabrakan, prinsipnya adalah:

1. Aturan hanya berlaku untuk scope tempat aturan tersebut ditulis.
2. Root tidak mengatur detail topic/module.
3. Topic tidak mengatur detail internal module.
4. Module bebas memiliki aturan penulisan sendiri selama tidak melanggar aturan global root.

Jika terjadi irisan, gunakan aturan yang paling dekat dengan konteks kerja:
- kerja di module -> ikuti aturan module
- kerja di topic -> ikuti aturan topic
- kerja di root -> ikuti aturan root

---

## Log History Module

Setiap module memiliki **riwayat perubahan** yang disimpan dalam file `CHANGELOG.md`.

Contoh isi:

```text
Version: 1.0.0
Topic: 03
Module: 01
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

Untuk menjaga konsistensi repositori, sistem penomoran digunakan.

### Topic

Topic menggunakan format:

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

### Module

Module menggunakan format:

```text
module-01
module-02
module-03
```

Contoh:

```text
module-01-btree-index
module-02-gin-index
module-03-partial-index
```

---

## Tujuan Repositori

Repositori ini bertujuan untuk menjadi:
- basis pengetahuan PostgreSQL yang terstruktur
- sumber belajar PostgreSQL yang lebih mudah dicerna
- referensi praktik terbaik PostgreSQL
- kumpulan unit belajar kecil yang fokus
- fondasi pembelajaran PostgreSQL jangka panjang

---

## Prinsip Penulisan Module

Tidak ada template tunggal yang dipaksakan untuk semua module.

Setiap module mendefinisikan aturan penulisan dan kontribusinya sendiri di folder `docs` module masing-masing.

---

## Prinsip Evolusi Topic Dan Module

Struktur topic dan module di repositori ini bersifat hidup.

Artinya:
- jumlah module pada suatu topic tidak dianggap final secara kaku
- module dapat dipecah, digabung, dipindah, atau diurutkan ulang
- perubahan dilakukan jika pemetaan dari sumber resmi PostgreSQL menunjukkan struktur yang lebih tepat
- perubahan juga dapat dilakukan jika pengalaman belajar menunjukkan bahwa struktur saat ini terlalu besar, terlalu kecil, atau kurang jelas

Tujuan prinsip ini adalah menjaga repositori tetap:
- akurat terhadap sumber utama
- utuh sebagai jalur belajar
- nyaman dipelajari manusia
- mudah dipahami AI

## Dua Mode Pemetaan Topic

Repositori ini menggunakan dua pendekatan pemetaan topic:

1. `Foundational topics` menggunakan **pedagogical mapping**
   Topic seperti `01_fundamentals` dan `02_queries` disusun terutama untuk kenyamanan belajar manusia. Struktur module pada topic ini boleh lebih bebas dari struktur dokumentasi resmi selama jalur belajarnya lebih jelas.

2. `Technical topics` menggunakan **source-aligned mapping**
   Topic seperti `03_indexing`, `04_performance`, `05_transactions`, dan topic teknis lain setelahnya boleh disusun lebih dekat ke struktur dokumentasi resmi PostgreSQL agar lebih mudah ditelusuri, diverifikasi, dan dipahami oleh AI maupun manusia.

Kedua mode ini sama-sama sah. Yang penting adalah alasan pemetaannya jelas dan tetap menjaga kualitas jalur belajar.

---

## Visi Jangka Panjang

Repositori ini dirancang untuk berkembang menjadi basis pengetahuan PostgreSQL yang lengkap, terstruktur, dan nyaman dipelajari.

Tujuan akhirnya adalah membuat sistem dokumentasi yang:
- mudah dipelajari oleh pemula
- berguna bagi praktisi
- terorganisasi dengan jelas
- dapat berkembang dalam jangka panjang

---

## Status

Repositori ini sedang dalam tahap pembangunan awal.

Struktur pembelajaran sedang disusun dan module akan ditambahkan secara bertahap.

---

## Prinsip Utama

> Pengetahuan PostgreSQL harus disusun sebagai unit belajar yang jelas, bukan seperti kumpulan catatan yang tersebar.
