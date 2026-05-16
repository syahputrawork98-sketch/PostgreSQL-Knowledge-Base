# 01 - BAB 01 STRUKTUR PERINTAH SELECT

Status: DRAFT
Rak: SQL dan Querying
Buku: Dasar SQL dan Query SELECT
Level: Level 1 - Level 2
Tipe Materi: Tutorial
Target: Developer yang ingin mahir menulis query PostgreSQL.
Estimasi Baca: 10 Menit
Terakhir Diperiksa: 2026-05-17

Sumber Utama: PostgreSQL Official Documentation
Versi Referensi: PostgreSQL docs/current
Status Verifikasi Sumber: REVIEW

---

## 1. Tujuan Belajar
Di akhir bab ini, pembaca diharapkan mampu:
- Memahami fungsi mendasar dari perintah `SELECT` dalam SQL.
- Menguasai penulisan sintaksis dasar `SELECT kolom FROM tabel;`.
- Memahami perbedaan, keuntungan, dan kerugian mengambil seluruh kolom (`SELECT *`) dibanding memilih kolom tertentu.
- Memahami konsep *result set* sebagai tabel virtual sementara di dalam memori.

## 2. Prasyarat
- Memahami apa itu database, tabel, baris, dan kolom (baca: [Apa Itu PostgreSQL](../../01-orientasi-sejarah-dan-fondasi-postgresql/buku-01-orientasi-postgresql/bab-01-apa-itu-postgresql.md)).
- Mengetahui bahwa SQL adalah bahasa komunikasi standar untuk mengirim instruksi ke PostgreSQL server.

## 3. Ringkasan Cepat
Perintah `SELECT` adalah gerbang utama untuk membaca dan mengambil data dari database. Perintah ini bersifat non-destruktif (tidak mengubah data asli di penyimpanan fisik). Hasil pencarian data yang dikembalikan oleh kueri `SELECT` akan disajikan dalam bentuk tabel virtual sementara di dalam memori komputer yang dinamakan **Result Set**.

## 4. Istilah Penting di Bab Ini

| Istilah | Arti Singkat |
|---|---|
| SELECT | Perintah SQL utama yang menginstruksikan database untuk membaca dan mengambil data. |
| Wildcard (*) | Simbol asterisk yang digunakan untuk mewakili seluruh kolom yang tersedia di tabel sumber. |
| FROM | Klausa SQL wajib yang menunjukkan tabel asal tempat data akan dibaca. |
| Result Set | Tabel virtual sementara di dalam memori komputer yang berisi data hasil eksekusi kueri SELECT. |
| Projection | Teknik memilih kolom spesifik saja untuk ditampilkan guna menghemat pemakaian resource memori dan jaringan. |

## 5. Analogi Sehari-hari
Bayangkan Anda memiliki sebuah **buku catatan kas keuangan (Tabel)** yang tebal. Setiap baris mencatat transaksi, dengan kolom-kolom: "Tanggal", "Nama Barang", "Kategori", "Jumlah", dan "Metode Pembayaran".
- Jika Anda ingin menyalin **seluruh halaman buku** tanpa terlewat ke selembar kertas baru, Anda melakukan tindakan setara `SELECT * FROM kas_keuangan;`.
- Namun, jika Anda hanya ingin membuat rekap ringkas berupa **Nama Barang** dan **Jumlah** uangnya saja untuk dilaporkan, Anda cukup membaca dan menyalin kedua kolom itu saja ke kertas Anda. Tindakan ini setara dengan `SELECT nama_barang, jumlah FROM kas_keuangan;`. 

Kertas rekapitulasi baru hasil salinan Anda tersebut adalah **Result Set**. Buku catatan kas keuangan asli Anda sama sekali tidak berubah atau robek setelah Anda membacanya.

## 6. Batas Analogi
Pada buku catatan kas fisik, proses pencarian dan penyalinan memerlukan waktu fisik yang lama karena mata Anda harus memindai baris demi baris secara manual. Jika halaman buku mencapai jutaan baris, mustahil dilakukan oleh satu manusia dalam sekejap. 

Di dalam PostgreSQL, proses ini didelegasikan ke mesin komputer berkecepatan tinggi yang dapat memindai jutaan baris data dalam hitungan milidetik. Selain itu, *result set* pada PostgreSQL disimpan secara dinamis di memori RAM dan dikirimkan secara elektronik melalui jaringan komputer, bukan di atas kertas fisik.

## 7. Ilustrasi Konsep

Status Ilustrasi: DRAFT

```mermaid
graph LR
    subgraph Penyimpanan Fisik (Hard Disk)
        A["Tabel Asli: Produk
        -------------------------
        id | nama | harga | stok"]
    end

    B{"Query SELECT
    nama, harga"}

    subgraph Memori RAM (Client)
        C["Result Set (Tabel Virtual)
        -------------------------
        nama | harga"]
    end

    A -->|1. Data mentah dibaca| B
    B -->|2. Proyeksi kolom| C
```

## 8. Penjelasan Ilustrasi
Diagram di atas menggambarkan bagaimana query `SELECT nama, harga FROM produk;` bekerja. Di dalam penyimpanan fisik (hard disk), tabel produk memiliki 4 kolom lengkap (`id`, `nama`, `harga`, `stok`). Ketika kueri dikirim, mesin PostgreSQL membaca data mentah dari hard disk, menyaringnya berdasarkan kolom yang diminta saja (proses *projection*), dan menghasilkan tabel virtual baru (**Result Set**) di memori RAM client yang hanya berisi kolom `nama` dan `harga`.

## 9. Batas Ilustrasi
Ilustrasi di atas hanya menggambarkan proses pemilihan kolom (*projection*) paling dasar. Ilustrasi ini tidak menggambarkan proses filter data per baris (klausa `WHERE`), proses pengurutan data (`ORDER BY`), atau bagaimana PostgreSQL memanfaatkan memori *shared buffers* untuk menghindari membaca hard disk secara fisik jika data sudah pernah diakses sebelumnya.

## 10. Konsep Inti
Syntax dasar perintah SELECT sangat sederhana namun harus ditulis dalam urutan yang tepat:

```sql
SELECT nama_kolom1, nama_kolom2 
FROM nama_tabel;
```

Aturan penting:
- Perintah SQL tidak sensitif terhadap huruf besar-kecil (*case-insensitive*), artinya `select` sama dengan `SELECT`. Namun, menggunakan huruf besar untuk kata kunci standar SQL (`SELECT`, `FROM`) adalah praktik terbaik (*best practice*) yang sangat disarankan agar kode mudah dibaca.
- Setiap akhir perintah SQL ditutup dengan tanda titik koma (`;`). Ini memberi tahu database engine bahwa perintah tersebut telah berakhir.

## 11. Penjelasan Detail
Ketika PostgreSQL menerima query `SELECT`, ia memprosesnya dalam 4 tahapan internal:
1. **Parser**: Memeriksa apakah sintaks SQL yang Anda tulis sesuai dengan aturan tata bahasa SQL.
2. **Analyzer**: Memvalidasi apakah tabel dan kolom yang Anda minta benar-benar ada di database, serta memeriksa apakah Anda memiliki izin (hak akses) untuk membacanya.
3. **Planner/Optimizer**: Tahap paling krusial di mana database membuat beberapa alternatif rencana eksekusi query (Query Plan) dan memilih yang memiliki estimasi biaya (*cost*) paling rendah dan paling cepat.
4. **Executor**: Menjalankan rencana eksekusi terpilih, mengambil data dari disk/RAM, membuat *result set*, dan mengirimkannya ke client.

### Mengapa Harus Menghindari `SELECT *` di Aplikasi Produksi?
Meskipun menggunakan tanda asterisk (`SELECT *`) terlihat praktis karena mengambil semua kolom sekaligus, kebiasaan ini sangat berbahaya untuk jangka panjang:
- **Boros Bandwidth & RAM**: Jika tabel memiliki kolom teks sangat panjang (seperti isi artikel) atau data biner, menggunakan `SELECT *` akan memaksa PostgreSQL mengirim seluruh data tersebut lewat jaringan, memperlambat aplikasi.
- **Kerapuhan Kode**: Jika di kemudian hari struktur tabel berubah (misal ditambahkan kolom baru), kode backend Anda mungkin akan mengalami error pemetaan data (*data mapping error*) karena menerima kolom yang tidak dikenal.
- **Mencegah Optimasi**: PostgreSQL memiliki fitur optimasi bernama *Index-Only Scan*. Jika Anda hanya meminta kolom yang sudah diindeks, PostgreSQL tidak perlu membaca data tabel di hard disk sama sekali. Penggunaan `SELECT *` merusak kesempatan optimasi berharga ini.

## 12. Contoh SQL Dasar
Berikut beberapa variasi pengambilan data paling dasar:

```sql
-- 1. Mengambil seluruh kolom dari tabel produk (tidak disarankan di aplikasi)
SELECT * FROM produk;

-- 2. Mengambil kolom nama dan harga saja (Proyeksi data yang efisien)
SELECT nama_produk, harga FROM produk;

-- 3. Mengevaluasi ekspresi matematika langsung tanpa membaca tabel
SELECT 100 * 50 AS hasil_perkalian;
```

## 13. Contoh SQL Praktik Project
Dalam implementasi aplikasi kasir atau e-commerce, kita sering kali hanya membutuhkan data minimal produk untuk menampilkan katalog ringkas di halaman beranda. Query berikut memproyeksikan kolom esensial saja:

```sql
-- Mengambil data esensial produk untuk beranda katalog aplikasi
SELECT nama_produk, harga, stok FROM produk;
```

## 14. Kesalahan Umum
- **Lupa Klausa FROM**: Menuliskan nama kolom tanpa menentukan tabel asal.
  *Salah*: `SELECT nama_produk;` (PostgreSQL akan mengira ini adalah fungsi atau variabel kustom, lalu menghasilkan error `column "nama_produk" does not exist`).
- **Koma Berlebih**: Menaruh tanda koma sebelum klausa FROM.
  *Salah*: `SELECT nama_produk, harga, FROM produk;` (Error sintaksis karena tanda koma setelah kolom `harga` dianggap menggantung).

## 15. Catatan Interview
- **Pertanyaan**: "Apa perbedaan mendasar antara operasi `SELECT` dengan operasi manipulasi data seperti `INSERT` atau `UPDATE` terkait dengan *state* database?"
- **Jawaban**: "`SELECT` adalah operasi *read-only* (membaca) yang bersifat non-destruktif. Operasi ini tidak merubah kondisi fisik data (*state*) di dalam database. Sementara `INSERT`, `UPDATE`, dan `DELETE` adalah operasi penulisan (*write*) yang memodifikasi kondisi fisik data secara permanen di dalam disk penyimpanan."

## 16. Catatan Diskusi User
- **Pertanyaan Umum**: "Apakah ada kasus di mana penggunaan `SELECT *` justru disarankan?"
- **Diskusikan**: Ya, `SELECT *` sangat praktis digunakan dalam proses *debugging* cepat atau eksplorasi data manual melalui command-line interface (`psql`) atau GUI tool (seperti DBeaver/pgAdmin) untuk melihat keseluruhan kolom yang tersedia dalam suatu tabel baru. Juga, `SELECT *` aman digunakan di dalam subquery dengan operator `EXISTS`, karena database engine cukup pintar untuk hanya memeriksa eksistensi baris tanpa benar-benar memproyeksikan seluruh kolom.

## 17. Latihan Kecil
1. Tuliskan query SQL yang valid untuk mengambil kolom `nama_lengkap` dan `email` dari tabel `pengguna`!
2. Jika sebuah tabel memiliki 20 kolom dan aplikasi Anda hanya membutuhkan 2 kolom saja, jelaskan secara singkat mengapa menuliskan `SELECT *` dikategorikan sebagai *bad practice*!

## 18. Checklist Pemahaman
- [ ] Memahami peran perintah `SELECT` sebagai operasi pembacaan data.
- [ ] Mampu menuliskan perintah `SELECT` dengan menyebutkan kolom secara spesifik.
- [ ] Mengetahui arti istilah *result set* dan sifat tabel virtualnya.
- [ ] Memahami alasan mengapa penggunaan `SELECT *` harus dihindari dalam kode backend aplikasi riil.

## 19. Hubungan dengan Materi Lain

### Posisi Materi
- Rak: [02 - SQL dan Querying](../../README.md)
- Buku: [Dasar SQL dan Query SELECT](../)

### Prasyarat
- [Apa Itu PostgreSQL](../../01-orientasi-sejarah-dan-fondasi-postgresql/buku-01-orientasi-postgresql/bab-01-apa-itu-postgresql.md)

### Materi Sebelumnya
- [Apa Itu PostgreSQL](../../01-orientasi-sejarah-dan-fondasi-postgresql/buku-01-orientasi-postgresql/bab-01-apa-itu-postgresql.md)

### Materi Berikutnya
- Filtering Data dengan WHERE *(Segera Datang)*

### Materi Terkait
- [Optimasi Query Planner](../../07-indexing-query-planner-dan-performance/)

### Istilah Terkait
- Projection, Table Virtual, Wildcard, Query Optimizer.

## 20. Referensi Resmi
Jangan membuka tautan berikut pada batch ini, cukup cantumkan sebagai referensi resmi yang ditargetkan untuk verifikasi nanti:
- PostgreSQL Official Documentation - Tutorial SELECT
  https://www.postgresql.org/docs/current/tutorial-select.html
- PostgreSQL Official Documentation - SELECT
  https://www.postgresql.org/docs/current/sql-select.html

## 21. Catatan Pribadi / Project Notes
*   *Catatan Draft*: Bab ini ditekankan untuk melatih insting developer agar selalu menulis kueri yang eksplisit (tidak malas menggunakan `*`). Pengisian materi fokus pada analogi yang jelas dan pencegahan kebiasaan buruk performa kueri sejak dini. Status verifikasi tetap diatur ke REVIEW.
