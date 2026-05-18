# 03 - BAB 03 DAMPAK DESAIN PADA PERFORMA

Status: DRAFT
Rak: Desain Data dan Schema
Buku: Normalisasi dan Denormalisasi
Level: Level 2 - Level 3
Tipe Materi: Tutorial
Target: Developer atau Data Modeler yang merancang struktur database.
Estimasi Baca: 10 Menit
Terakhir Diperiksa: 2026-05-18

Sumber Utama: PostgreSQL Official Documentation
Versi Referensi: PostgreSQL docs/current
Status Verifikasi Sumber: REVIEW

---

## 1. Tujuan Belajar
Di akhir bab ini, pembaca diharapkan mampu:
- Menghubungkan keputusan desain skema database dengan dampak nyata pada performa kueri.
- Menganalisis konsekuensi negatif dari tabel terlalu lebar (*wide tables*) dan normalisasi berlebihan (*over-normalization*).
- Menilai dampak pemilihan tipe data yang tidak tepat terhadap konsumsi penyimpanan (*storage*) dan kecepatan indeks.
- Mengambil keputusan desain skema yang seimbang antara kemudahan pemeliharaan (*maintainability*) dan kecepatan eksekusi kueri.

## 2. Prasyarat
- Memahami konsep normalisasi (baca: [Normal Form 1-2-3](./bab-01-normal-form-1-2-3.md)) dan denormalisasi (baca: [Kapan Harus Denormalisasi](./bab-02-kapan-harus-denormalisasi.md)).

## 3. Ringkasan Cepat
Desain skema database adalah cetak biru yang menentukan bagaimana data disimpan secara fisik pada disk. Desain skema yang buruk—seperti tabel terlalu lebar, tipe data yang asal-asalan, relasi join yang terlalu dalam, atau denormalisasi tanpa aturan—dapat menurunkan performa kueri secara drastis. PostgreSQL bekerja dengan membaca data dalam blok halaman (*pages*) berukuran 8KB. Skema yang ramping memungkinkan lebih banyak baris masuk ke dalam memori cache, mengurangi I/O disk yang mahal, dan mempercepat pencarian data secara dramatis.

## 4. Istilah Penting di Bab Ini

| Istilah | Arti Singkat |
|---|---|
| Wide Table | Tabel yang memiliki terlalu banyak kolom, sering kali menggabungkan data yang jarang diakses bersamaan. |
| Disk Page (Halaman Disk) | Unit penyimpanan terkecil di PostgreSQL (default 8KB) untuk menulis/membaca data dari disk ke RAM. |
| Buffer Cache | Memori RAM cepat tempat PostgreSQL menyimpan halaman database yang sering diakses agar tidak perlu membaca disk. |
| Over-normalization | Pembagian tabel yang terlalu ekstrem demi menghilangkan redundansi, yang berujung pada performa JOIN lambat. |
| Alignment Padding | Pemborosan ruang penyimpanan di disk karena PostgreSQL menyelaraskan data berdasarkan kelipatan byte tertentu. |

## 5. Analogi Sehari-hari
Bayangkan Anda sedang berkemas untuk melakukan **Perjalanan Liburan dengan Koper**:

- **Skema Tabel Terlalu Lebar (Wide Table)**:
  Anda memasukkan seluruh isi kamar Anda (pakaian, sepatu, buku, blender, handuk, hingga lampu tidur) ke dalam satu koper raksasa yang sangat berat. Setiap kali Anda ingin mengambil *sikat gigi* saja, Anda harus menyeret koper super berat tersebut dan membongkar seluruh isinya. Ini adalah representasi tabel lebar; Anda mengambil satu kolom kecil, tetapi server terpaksa mengangkat gigabyte kolom lainnya ke memori.
- **Skema Normalisasi Berlebihan (Over-normalization)**:
  Anda memutuskan untuk sangat rapi. Anda membungkus setiap kaos kaki di satu kotak kecil terpisah, setiap baju di kantong zipper terpisah, dan setiap kancing baju cadangan di botol kecil terpisah. Ketika ingin berpakaian lengkap, Anda terpaksa membuka 10 zipper dan botol yang berbeda-beda secara berturut-turut. Di database, ini seperti melakukan `JOIN` 10 tabel terpisah hanya untuk menampilkan satu baris profil pelanggan sederhana.

## 6. Batas Analogi
Di dunia nyata, mengangkat koper berat hanya membuat Anda lelah fisik. 

Di dalam database PostgreSQL, mengangkat "tabel berat" ke memori RAM (*Buffer Cache*) akan mengusir halaman data tabel lain yang juga penting keluar dari memori. Akibatnya, server database terpaksa terus-menerus melakukan I/O disk berulang kali yang sangat lambat, memicu bottleneck performa global yang melumpuhkan aplikasi.

## 7. Ilustrasi Konsep

Status Ilustrasi: DRAFT

```mermaid
graph TD
    subgraph Tabel Lebar (Wide Table - Tidak Efisien)
        W["1 Baris Data: 50 Kolom (Ukuran 2KB)"] --> P1["Satu Halaman Disk (8KB) hanya memuat 4 Baris"]
        P1 --> RAM1["Buffer Cache RAM cepat penuh oleh kolom tak terpakai"]
    end
    
    subgraph Tabel Ramping (Narrow Table - Efisien)
        N["1 Baris Data: 5 Kolom Utama (Ukuran 200 Byte)"] --> P2["Satu Halaman Disk (8KB) mampu memuat 40 Baris"]
        P2 --> RAM2["Buffer Cache RAM memuat 10x lebih banyak baris data"]
    end
```

## 8. Penjelasan Ilustrasi
PostgreSQL membaca data dari disk ke memori RAM (*Buffer Cache*) dalam satuan blok halaman (*page*) berukuran **8KB**. 
- Pada **Tabel Lebar**, ukuran satu baris data membengkak hingga 2KB karena banyaknya kolom (bahkan kolom kosong atau jarang dibaca). Akibatnya, satu halaman 8KB hanya bisa menampung 4 baris data saja. Kueri pencarian terpaksa membaca banyak halaman disk.
- Pada **Tabel Ramping**, baris data dirancang minimalis (200 byte). Satu halaman disk mampu memuat 40 baris data sekaligus. Dengan sekali baca halaman, PostgreSQL mendapatkan data 10 kali lebih banyak, menghemat operasi I/O secara luar biasa.

## 9. Batas Ilustrasi
Ilustrasi di atas berasumsi bahwa seluruh baris disimpan dalam format halaman datar biasa. PostgreSQL sebenarnya memiliki teknologi internal bernama **TOAST** (*The Oversized-Attribute Storage Technique*) untuk memindahkan kolom string raksasa (seperti artikel panjang) ke tabel penampungan sekunder secara otomatis agar tidak merusak ukuran halaman utama.

## 10. Konsep Inti

### 1. Masalah Desain Skema yang Merusak Performa

#### A. Tabel Terlalu Lebar (Wide Tables)
Memiliki tabel dengan 50 hingga 100+ kolom. Masalahnya:
- **Pembersihan Cache RAM**: Setiap kali kueri memanggil `SELECT id, nama FROM tabel`, PostgreSQL tetap harus memuat halaman disk berisi seluruh kolom lebar tersebut ke RAM. Memori cache server cepat habis oleh data sampah yang tidak dibutuhkan oleh kueri.
- **Overhead Transaksional**: Operasi `INSERT` dan `UPDATE` menjadi lebih lambat karena PostgreSQL harus memformat dan menulis lebih banyak byte per baris data.

#### B. Normalisasi Berlebihan (Over-normalization)
Memecah tabel terlalu ekstrem demi memenuhi teori akademis normalisasi tanpa mengindahkan pola akses kueri. Masalahnya:
- **Rantai JOIN Terlalu Panjang**: Menyatukan kembali data membutuhkan join 8 hingga 12 tabel. Query planner PostgreSQL harus menghabiskan waktu CPU yang signifikan hanya untuk merancang rute eksekusi (*execution plan*) join tersebut.

#### C. Denormalisasi Sembarangan (Reckless Denormalization)
Mencache data agregat atau data redundan di mana-mana tanpa ada sistem sinkronisasi teratur. Masalahnya:
- **Data Anomaly**: Data laporan keuangan di tabel transaksi berbeda dengan data di tabel ringkasan cache.
- **Beban Tulis Ganda**: Server database terbebani oleh operasi penulisan berulang untuk menjaga agar data duplikat tetap sinkron.

#### D. Pemilihan Tipe Data yang Tidak Tepat
- Menggunakan `TEXT` atau `VARCHAR` untuk menyimpan data tanggal (`DATE`) atau angka (`INT`).
- **Dampaknya**: PostgreSQL tidak bisa mengoptimalkan pencarian indeks karena indeks teks jauh lebih besar ukurannya dibandingkan indeks angka. Selain itu, Anda kehilangan fitur validasi bawaan tipe data database.

---

## 11. Penjelasan Detail

### Dampak Desain Skema Terhadap Elemen Query

```
                   +---------------------------+
                   |    Desain Skema Database  |
                   +-------------+-------------+
                                 |
        +------------------------+------------------------+
        |                                                 |
  [Desain Buruk]                                    [Desain Bagus]
  - JOIN: Lambat (Planner lelah)                    - JOIN: Cepat (Primary-Foreign Key bersih)
  - Filtering: Full Table Scan                      - Filtering: Index Scan Efisien
  - Agregasi: CPU & RAM Bottleneck                  - Agregasi: Terukur & Terfokus
  - Storage: Boros Disk & Cache                     - Storage: Padat (8KB page optimal)
  - Maintainability: Spaghetti skema                - Maintainability: Rapi & modular
```

- **JOIN**: Skema yang bersih menggunakan relasi foreign key yang jelas memudahkan PostgreSQL melakukan optimasi join. Sebaliknya, skema acak memaksa engine melakukan *nested loop* join lambat.
- **Filtering**: Pemilihan tipe data yang tepat (misal menggunakan UUID atau INT sebagai primary key) membuat operasi filter (`WHERE`) berjalan dalam hitungan milidetik melalui indeks, sedangkan tipe data teks acak memaksa *Full Table Scan* (membaca seluruh tabel dari awal sampai akhir).
- **Agregasi**: Skema yang rapi memisahkan data transaksional murni dari data historis/arsip sehingga agregasi harian berjalan ringan tanpa harus memindai data historis bertahun-tahun lalu.

> [!TIP]
> **Teaser Indeks**: Membuat indeks (*indexes*) adalah cara ampuh mempercepat kueri, tetapi ingat: **Indeks bukan obat ajaib untuk desain skema yang buruk**. Indeks pada tabel yang super lebar atau menggunakan tipe data yang tidak konsisten tetap akan berjalan lambat dan memakan banyak ruang disk.

---

## 12. Contoh SQL Dasar
Perhatikan contoh desain tabel penyimpan tanggal lahir berikut:

```sql
-- DESAIN BURUK: Tipe data teks untuk tanggal lahir
CREATE TABLE profil_buruk (
    id SERIAL PRIMARY KEY,
    nama VARCHAR(100),
    tanggal_lahir VARCHAR(50) -- Blunder! Menyimpan '18-Mei-2026'
);
-- Dampak: Kueri filter rentang umur terpaksa melakukan parsing teks yang sangat lambat.

-- DESAIN BAGUS: Menggunakan tipe data DATE asli
CREATE TABLE profil_bagus (
    id SERIAL PRIMARY KEY,
    nama VARCHAR(100),
    tanggal_lahir DATE -- Tepat!
);
-- Dampak: PostgreSQL mengoptimalkan penyimpanan hingga 4 byte saja per baris dan mempermudah filter umur.
```

---

## 13. Contoh SQL Praktik Project
Dalam merancang tabel log aktivitas pengguna (*user activity logs*) yang merekam jutaan baris data per hari, kita harus menghindari tabel lebar dan memisahkan kolom opsional yang jarang dibaca ke tabel sekunder:

```sql
-- Skema Tabel Log Utama (Ramping - untuk pencarian cepat)
CREATE TABLE log_aktivitas (
    log_id BIGSERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    aktivitas VARCHAR(50) NOT NULL,
    dibuat_pada TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Skema Tabel Detail Tambahan (Jarang diakses - dipisahkan)
CREATE TABLE log_aktivitas_detail (
    log_id BIGINT REFERENCES log_aktivitas(log_id) ON DELETE CASCADE,
    metadata_json JSONB, -- Data payload raksasa dipisahkan di sini
    user_agent TEXT,
    ip_address VARCHAR(45)
);
```
Dengan memisahkan data payload raksasa (`JSONB`/`TEXT`) ke tabel detail sekunder, pencarian log aktivitas harian di tabel utama `log_aktivitas` berjalan instan karena ukuran baris datanya sangat ramping.

---

## 14. Kesalahan Umum
- **Jebakan String Generik**: Menggunakan tipe data `TEXT` atau `VARCHAR(255)` untuk semua kolom (termasuk status aktif `Y/N` yang seharusnya cukup `BOOLEAN`, atau harga barang yang seharusnya `NUMERIC`).
- **Mengabaikan Foreign Key**: Menghapus constraint `FOREIGN KEY` dengan alasan mitos "mempercepat insert". Padahal, ketiadaan foreign key memicu inkonsistensi data parah (data yatim piatu) dan mempersulit query planner PostgreSQL mengoptimalkan join.
- **Merancang Skema tanpa Pola Akses**: Merancang tabel berdasarkan kenyamanan menulis kode pemrograman, bukan berdasarkan bagaimana data tersebut akan sering dibaca oleh aplikasi.

---

## 15. Catatan Interview
- **Pertanyaan**: "Bagaimana desain skema tabel yang lebar (memiliki banyak kolom) dapat memengaruhi kinerja pembacaan data di PostgreSQL?"
- **Jawaban**: "PostgreSQL membaca data dari disk ke Buffer Cache RAM dalam blok berukuran 8KB. Jika suatu tabel memiliki kolom yang terlalu banyak dan lebar, ukuran baris data menjadi besar, sehingga jumlah baris yang muat di dalam satu blok 8KB menjadi sangat sedikit. Ketika kueri dijalankan (meskipun hanya mengambil 2 kolom), PostgreSQL tetap harus memuat seluruh blok halaman berisi kolom-kolom lebar tak terpakai tersebut ke RAM. Hal ini menyebabkan RAM Buffer Cache cepat penuh oleh data sampah, meningkatkan I/O disk secara drastis, dan melambatkan kinerja kueri secara keseluruhan."

---

## 16. Catatan Diskusi User
- **Pertanyaan Umum**: "Apakah kita harus selalu memecah tabel yang memiliki lebih dari 20 kolom?"
- **Diskusikan**: Tidak ada angka ajaib batasan kolom. Kuncinya adalah **Pola Akses**. Jika 20 kolom tersebut selalu dibaca bersamaan oleh aplikasi (misalnya form input profil lengkap), biarkan bersatu. Namun, jika ada 5 kolom utama yang dibaca jutaan kali per detik, sedangkan 15 kolom lainnya hanya dibaca sekali sebulan oleh admin, Anda wajib memisahkan 15 kolom tersebut ke tabel sekunder demi performa aplikasi utama.

---

## 17. Latihan Kecil
1. Mengapa menyimpan status pembayaran dengan tipe data `VARCHAR(20)` (misal menyimpan teks 'BELUM_DIBAYAR', 'LUNAS') lebih tidak efisien dibandingkan menggunakan tipe data `SMALLINT` atau tipe data `ENUM` di PostgreSQL?
2. Buatlah rancangan skema tabel alternatif untuk memecah tabel `produk` yang awalnya lebar (menyimpan data produk, data garansi, data dimensi packing barang, dan riwayat diskon) menjadi skema ramping yang optimal untuk pencarian cepat katalog produk!

---

## 18. Checklist Pemahaman
- [ ] Memahami hubungan ukuran baris data dengan efisiensi blok halaman 8KB PostgreSQL.
- [ ] Mampu mendeteksi masalah performa akibat tabel terlalu lebar.
- [ ] Mengetahui bahaya normalisasi berlebihan dan denormalisasi sembarangan terhadap CPU planner.
- [ ] Mampu memilih tipe data PostgreSQL yang paling efisien sesuai dengan nilai data bisnis.

---

## 19. Hubungan dengan Materi Lain

### Posisi Materi
- Rak: [03 - Desain Data dan Schema](../../README.md)
- Buku: [Normalisasi dan Denormalisasi](../)

### Prasyarat
- [Kapan Harus Denormalisasi](./bab-02-kapan-harus-denormalisasi.md)

### Materi Sebelumnya
- [Kapan Harus Denormalisasi](./bab-02-kapan-harus-denormalisasi.md)

### Materi Berikutnya
- [Konfigurasi Environment Variable Database](../../../04-postgresql-untuk-aplikasi/buku-02-koneksi-database-dan-environment/bab-01-konfigurasi-env-var-database.md) (Menghubungkan performa skema dengan konfigurasi lingkungan aplikasi backend)

### Materi Terkait
- [Fungsi Agregasi COUNT, SUM, AVG](../../02-sql-dan-querying/buku-04-agregasi-grouping-dan-having/bab-01-fungsi-agregasi-count-sum-avg.md) (Agregasi pada skema yang ramping berjalan jauh lebih cepat)

### Istilah Terkait
- Wide Table, Narrow Table, Disk Page I/O, Buffer Cache, TOAST, Data Alignment, Type Cast, Full Table Scan, Index Scan.

## 20. Referensi Resmi
Jangan membuka tautan berikut pada batch ini, cukup cantumkan sebagai referensi resmi yang ditargetkan untuk verifikasi nanti:
- PostgreSQL Official Documentation — perlu diverifikasi pada batch official docs verification.
- PostgreSQL connection/configuration references — perlu diverifikasi jika nanti masuk fase source verification.

## 21. Catatan Pribadi / Project Notes
*   *Catatan Draft*: Penting untuk mengajarkan pemahaman fisik (halaman 8KB) kepada developer aplikasi agar mereka paham mengapa kueri 'SELECT *' pada tabel lebar adalah tindakan dosa besar bagi performa server. Status verifikasi diatur ke REVIEW.
