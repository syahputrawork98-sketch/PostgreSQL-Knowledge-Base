# PostgreSQL Knowledge Base

> Perpustakaan pengetahuan PostgreSQL yang terstruktur seperti perpustakaan nyata: **Perpustakaan → Rak → Buku**

## Tentang Proyek Ini

**PostgreSQL Knowledge Base** adalah repositori yang dirancang sebagai perpustakaan pengetahuan tentang PostgreSQL.

Alih-alih menyimpan catatan secara acak atau tersebar, repositori ini mengorganisasikan pengetahuan PostgreSQL dalam struktur yang jelas dan sistematis.

Struktur utama repositori ini mengikuti konsep perpustakaan:

- **Perpustakaan** → seluruh repositori
- **Rak** → kategori utama topik PostgreSQL
- **Buku** → panduan atau dokumentasi tentang satu topik tertentu

Pendekatan ini membuat pengetahuan lebih mudah:

- dipelajari
- dijelajahi
- dipelihara
- dikembangkan

---

# Konsep Arsitektur

Repositori ini dibangun menggunakan model berikut:


Perpustakaan
└── Rak
└── Buku


Implementasi di dalam repository:


Repository (Library)
└── Shelf (Folder Rak)
└── Book (Folder Buku)
├── README.md
└── CHANGELOG.md


---

# Struktur Repository

Struktur utama repository ini adalah sebagai berikut:


postgresql-knowledge-base
│
├── README.md
├── docs/
│
├── shelves/
│ ├── 01_fundamentals/
│ ├── 02_queries/
│ ├── 03_indexing/
│ ├── 04_performance/
│ ├── 05_transactions/
│ ├── 06_replication/
│ ├── 07_security/
│ ├── 08_extensions/
│ ├── 09_administration/
│ └── 10_troubleshooting/
│
└── assets/


---

# Folder `docs`

Folder **docs** berisi dokumentasi tambahan yang menjelaskan konsep dan aturan perpustakaan ini.

Contoh isi folder `docs`:


docs/
│
├── library-concept.md
├── repository-structure.md
├── shelf-guidelines.md
├── book-writing-guidelines.md
├── versioning-system.md
└── contribution-guidelines.md


README di root berfungsi sebagai **halaman utama perpustakaan**, sedangkan `docs` menjelaskan sistem perpustakaan ini secara lebih detail.

---

# Struktur Rak

Setiap **rak** adalah sebuah folder yang berisi kumpulan buku dengan topik yang sama.

Contoh rak:


shelves/03_indexing


Struktur rak:


03_indexing
│
├── README.md
│
├── book-01-btree-index/
├── book-02-gin-index/
├── book-03-gist-index/
└── book-04-partial-index/


### README Rak

README pada rak berfungsi sebagai:

- pengantar topik
- katalog buku pada rak tersebut
- urutan membaca buku

---

# Struktur Buku

Setiap **buku** berada di dalam folder sendiri.

Contoh:


book-01-btree-index


Struktur buku:


book-01-btree-index
│
├── README.md
├── CHANGELOG.md
└── examples/


### README Buku

README pada buku berisi isi utama buku tersebut, seperti:

- penjelasan konsep
- sintaks SQL
- contoh penggunaan
- best practices
- kesalahan umum

---

# Log History Buku

Setiap buku memiliki **riwayat perubahan**.

Riwayat ini disimpan dalam file:


CHANGELOG.md


Contoh isi:


Version: 1.0.0
Shelf: 03
Book: 01
Title: B-Tree Index

Perubahan:

Penjelasan konsep dasar B-Tree

Contoh pembuatan index

Contoh query menggunakan index


Contoh versi berikutnya:


Version: 1.1.0

Perubahan:

Menambahkan contoh EXPLAIN ANALYZE

Menambahkan best practices


---

# Sistem Penomoran

Untuk menjaga konsistensi perpustakaan, sistem penomoran digunakan.

### Rak

Rak menggunakan format:


01
02
03


Contoh:


01_fundamentals
02_queries
03_indexing


### Buku

Buku menggunakan format:


book-01
book-02
book-03


Contoh:


book-01-btree-index
book-02-gin-index
book-03-partial-index


---

# Tujuan Repository

Repository ini bertujuan untuk menjadi:

- perpustakaan pengetahuan PostgreSQL
- referensi PostgreSQL yang terstruktur
- sumber pembelajaran PostgreSQL
- dokumentasi praktik terbaik PostgreSQL
- kumpulan studi kasus PostgreSQL

---

# Prinsip Penulisan Buku

Setiap buku sebaiknya mengikuti struktur berikut:

1. Pendahuluan
2. Konsep dasar
3. Sintaks SQL
4. Contoh penggunaan
5. Best practices
6. Kesalahan umum
7. Referensi tambahan

---

# Visi Jangka Panjang

Repository ini dirancang untuk berkembang menjadi **perpustakaan PostgreSQL yang lengkap dan terstruktur**.

Tujuan akhirnya adalah membuat sistem dokumentasi yang:

- mudah dipelajari oleh pemula
- berguna bagi praktisi
- terorganisasi seperti perpustakaan nyata
- dapat berkembang dalam jangka panjang

---

# Status

Repository ini sedang dalam tahap pembangunan awal.

Struktur perpustakaan sedang disusun dan buku-buku akan ditambahkan secara bertahap.

---

# Prinsip Utama

> Pengetahuan PostgreSQL harus disusun seperti perpustakaan, bukan seperti kumpulan catatan yang tersebar.
