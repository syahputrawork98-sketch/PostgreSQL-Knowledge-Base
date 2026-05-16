# 01 - BAB 01 DATABASE TABLE ROW DAN COLUMN

Status: DRAFT
Rak: Orientasi, Sejarah, dan Fondasi PostgreSQL
Buku: Fondasi Konsep Database
Level: Level 0 - Level 1
Tipe Materi: Tutorial
Target: Pemula yang baru mengenal PostgreSQL.
Estimasi Baca: 10 Menit
Terakhir Diperiksa: 2026-05-17

Sumber Utama: PostgreSQL Official Documentation
Versi Referensi: PostgreSQL docs/current
Status Verifikasi Sumber: REVIEW

---

## 1. Tujuan Belajar
Di akhir bab ini, pembaca diharapkan mampu:
- Menjelaskan secara terperinci perbedaan dan hubungan hierarkis antara Database, Table, Row, dan Column di PostgreSQL.
- Memahami konsep tipe data (*Data Type*) sebagai aturan pengisian nilai kolom database.
- Mampu mendesain dan menulis perintah SQL dasar `CREATE TABLE` dengan pemilihan tipe data terstandarisasi.

## 2. Prasyarat
- Memahami definisi PostgreSQL sebagai sistem manajemen database (baca: [Apa Itu PostgreSQL](../../01-orientasi-sejarah-dan-fondasi-postgresql/buku-01-orientasi-postgresql/bab-01-apa-itu-postgresql.md)).

## 3. Ringkasan Cepat
Database relasional PostgreSQL mengorganisasikan data secara terstruktur dengan hierarki yang jelas: **Database** adalah wadah penyimpanan fisik/logis terluar. Di dalamnya terdapat **Table** (tabel bertopik), yang dirancang dari kolom-kolom (**Column/Field**) sebagai templat atribut data yang memiliki aturan tipe data kaku, tempat baris-baris data (**Row/Record**) disimpan sebagai satu kesatuan informasi yang nyata.

## 4. Istilah Penting di Bab Ini

| Istilah | Arti Singkat |
|---|---|
| Database | Wadah utama tingkat tertinggi tempat menyimpan seluruh file konfigurasi dan tabel-tabel aplikasi. |
| Table | Struktur dua dimensi (grid) bertopik khusus tempat data dikelompokkan secara terorganisir. |
| Row (Record) | Satu baris data tunggal horizontal yang melambangkan satu entitas objek nyata di dalam tabel. |
| Column (Field) | Satu kategori atribut data vertikal di dalam tabel yang membatasi jenis informasi. |
| Data Type | Aturan jenis tipe data (angka, teks, tanggal) yang wajib dipatuhi oleh nilai suatu kolom. |

## 5. Analogi Sehari-hari
Bayangkan Anda adalah manajer administrasi yang mengelola **Sekolah Besar (Server Database)**:
- **Database** adalah **Gedung Perpustakaan Sekolah**. Ini adalah kontainer fisik besar yang mandiri. Pintu perpustakaan terkunci secara independen dari laboratorium atau kelas olahraga.
- **Table** adalah **Buku Catatan Keuangan/Daftar Anggota** tebal yang diletakkan di rak meja perpustakaan. Setiap buku mencatat satu topik khusus, misalnya satu buku khusus mencatat "Daftar Siswa", buku lainnya mencatat "Inventori Buku".
- **Row (Baris)** adalah **Satu Baris Baris Catatan Lengkap** milik seorang siswa di dalam buku "Daftar Siswa". Misalnya, baris nomor 5 mencatat data lengkap tentang siswa bernama "Budi".
- **Column (Kolom)** adalah **Judul Isian di Bagian Atas Halaman Catatan**, seperti kolom "Nama Depan", kolom "Tanggal Lahir", dan kolom "Nomor Absen".
- **Data Type** adalah **Aturan Format Pengisian Kolom**. Misalnya, kolom "Tanggal Lahir" hanya boleh ditulis dengan format tanggal, tidak boleh diisi dengan kalimat panjang acak.

## 6. Batas Analogi
Di buku catatan kertas fisik atau spreadsheet biasa (Excel), jika Anda salah menuliskan teks di kolom tanggal, buku tersebut tidak bisa menolak coretan Anda secara otomatis. Anda hanya bisa menyadarinya secara manual saat membaca ulang berkas tersebut.

Di dalam PostgreSQL, aturan tipe data dijaga secara militer oleh engine database. Jika Anda mencoba memasukkan kata teks "Gratis" ke dalam kolom bertipe data angka (`INTEGER`) atau tanggal (`DATE`), PostgreSQL akan langsung menolak transaksi tersebut, melempar pesan error, dan membatalkan seluruh proses penyimpanan secara instan (*Strict Data Type Enforcement*).

## 7. Ilustrasi Konsep

Status Ilustrasi: DRAFT

```mermaid
graph TD
    subgraph PostgreSQL Server
        A[(Database: sekolah_db)]
        A --> B[Tabel: siswa]
        A --> C[Tabel: guru]
        subgraph Tabel: siswa [Struktur Tabel: siswa]
            B --> D[Column: id | Column: nama | Column: tanggal_lahir]
            B --> E["Row 1: 1 | 'Budi' | '2010-05-12'"]
            B --> F["Row 2: 2 | 'Siti' | '2011-08-20'"]
        end
    end
```

## 8. Penjelasan Ilustrasi
Bagan di atas memperlihatkan struktur database bernama `sekolah_db` yang menampung tabel `siswa` dan `guru`. Di dalam tabel `siswa`, strukturnya didefinisikan oleh tiga kolom (`id`, `nama`, `tanggal_lahir`) yang bertindak sebagai templat atribut. Data riil disimpan pada baris-baris horizontal (`Row 1` untuk Budi, `Row 2` untuk Siti) yang nilainya wajib tunduk pada tipe data kolomnya masing-masing.

## 9. Batas Ilustrasi
Ilustrasi di atas hanya menampilkan model konseptual dua dimensi yang disederhanakan. Dalam penyimpanan fisik hard disk, PostgreSQL menyimpan data baris sebagai blok-blok biner (*page* berukuran 8KB) yang memiliki struktur header internal yang sangat kompleks, bukan file grid teks visual seperti spreadsheet.

## 10. Konsep Inti
Pilar organisasi data dalam PostgreSQL:
1.  **Isolasi Kontainer (Database)**: Anda harus terhubung ke satu database spesifik untuk mengakses tabel di dalamnya. Objek antar database terisolasi ketat secara default.
2.  **Struktur Bertopik (Table)**: Tabel mewakili satu model konsep bisnis tunggal (contoh: tabel `produk`, tabel `pelanggan`).
3.  **Record Tunggal (Row)**: Setiap baris mewakili satu instansi objek nyata. Kualitas data ditentukan dari keunikan tiap barisnya.
4.  **Templat Karakteristik (Column)**: Menentukan informasi spesifik apa saja yang dicatat untuk suatu baris data.
5.  **Validasi Format (Data Type)**: Memaksa nilai kolom agar selalu bersih dan seragam.

## 11. Penjelasan Detail
### Mengenal Tipe Data Populer di PostgreSQL
Menentukan tipe data kolom yang tepat adalah langkah terpenting dalam perancangan database:
*   `INTEGER` / `INT`: Untuk menyimpan angka bulat tanpa desimal (misal: jumlah stok, nomor absen).
*   `VARCHAR(N)`: Teks dinamis dengan batas maksimum N karakter (misal: `VARCHAR(100)` untuk kolom nama atau email).
*   `TEXT`: Untuk menyimpan teks panjang tanpa batasan kapasitas tertentu (misal: isi artikel, detail deskripsi). Di PostgreSQL, tipe data `TEXT` sangat dioptimalkan dan memiliki performa yang sangat cepat.
*   `NUMERIC(P, S)` / `DECIMAL`: Angka desimal presisi tinggi untuk data keuangan/uang. Di mana `P` adalah total digit, dan `S` adalah jumlah digit di belakang koma (misal: `NUMERIC(12, 2)` untuk uang hingga miliaran dengan dua angka desimal).
*   `DATE`: Menyimpan tanggal saja dengan format YYYY-MM-DD.
*   `TIMESTAMP`: Menyimpan tanggal beserta jam secara presisi.

## 12. Contoh SQL Dasar
Berikut adalah cara menulis perintah SQL untuk mendefinisikan tabel baru menggunakan aturan kolom dan tipe data yang benar:

```sql
-- Membuat tabel siswa dengan tipe data yang tepat
CREATE TABLE siswa (
    siswa_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    tinggi_badan NUMERIC(5, 2), -- Menyimpan angka desimal (cth: 175.50)
    catatan_guru TEXT,
    tanggal_daftar DATE DEFAULT CURRENT_DATE
);
```

## 13. Contoh SQL Praktik Project
Dalam skenario perancangan database toko online, kita membuat tabel produk dengan tipe data presisi tinggi, dilanjutkan dengan memasukkan satu baris data (*Row*) ke dalamnya:

```sql
-- 1. Membuat tabel produk toko
CREATE TABLE produk (
    produk_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nama_produk VARCHAR(150) NOT NULL,
    harga NUMERIC(12, 2) NOT NULL,
    stok INT DEFAULT 0,
    dibuat_pada TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 2. Memasukkan satu row data produk baru (Record)
INSERT INTO produk (nama_produk, harga, stok) 
VALUES ('Kopi Cappuccino Latte', 22000.00, 30);
```

## 14. Kesalahan Umum
- **Menggunakan Teks untuk Kolom Tanggal**: Menyimpan data tanggal lahir dalam kolom bertipe data teks `VARCHAR(50)`. Akibatnya, database tidak bisa mencegah jika pengguna mengisi teks tidak valid seperti "kemarin lusa", dan proses analisis umur atau pengurutan berdasarkan tanggal terbit akan menjadi sangat lambat dan sulit ditulis.
- **Menyimpan Nomor HP dalam Tipe Data Angka**: Menggunakan `INTEGER` untuk menyimpan nomor handphone. Akibatnya, angka nol `0` di bagian depan nomor HP akan otomatis terbuang secara matematika (contoh `0812` menjadi `812`), dan nomor tersebut tidak bisa disimpan dengan benar. Gunakan selalu `VARCHAR` untuk nomor telepon.

## 15. Catatan Interview
- **Pertanyaan**: "Mengapa kita tidak boleh menyimpan data nilai uang (currency) menggunakan tipe data floating-point seperti `REAL` atau `DOUBLE PRECISION` di PostgreSQL?"
- **Jawaban**: "Karena tipe data floating-point menggunakan sistem representasi biner perkiraan (IEEE 754) yang rentan terhadap galat pembulatan (*rounding errors*) saat dilakukan kalkulasi matematika pertambahan atau perkalian dalam jumlah besar. Untuk data sensitif seperti uang atau finansial, kita wajib menggunakan tipe data `NUMERIC` atau `DECIMAL` karena bertipe *fixed-point* yang menyimpan angka secara eksak tanpa toleransi kesalahan pembulatan desimal."

## 16. Catatan Diskusi User
- **Pertanyaan Umum**: "Di spreadsheet Excel, saya bebas mengisi kolom apa saja di baris mana saja tanpa aturan kaku. Mengapa di database relasional seperti PostgreSQL pengaturannya sangat ketat?"
- **Diskusikan**: Kekakuan database relasional adalah fitur keselamatan utama. Spreadsheet cocok untuk analisis data personal cepat yang fleksibel. Namun untuk aplikasi backend yang melayani jutaan transaksi bersamaan, kita membutuhkan jaminan absolut bahwa tidak akan ada data kotor (seperti huruf masuk ke kolom nominal saldo rekening) yang bisa merusak sistem aplikasi. Kekakuan skema PostgreSQL menjaga integritas data bisnis Anda tetap bersih, terstandar, dan tepercaya.

## 17. Latihan Kecil
1. Tuliskan query SQL untuk membuat tabel bernama `buku` dengan kolom `buku_id` (Primary Key), `judul` (teks dinamis maks 200 karakter), `harga` (desimal uang), dan `tanggal_terbit` (tanggal)!
2. Jelaskan secara singkat mengapa kolom `email` pada tabel pengguna tidak cocok jika dikonfigurasikan dengan tipe data `INTEGER`!

## 18. Checklist Pemahaman
- [ ] Memahami perbedaan fungsi dan posisi hierarki Database, Table, Row, dan Column.
- [ ] Mengenal jenis tipe data standar di PostgreSQL (`INT`, `VARCHAR`, `TEXT`, `NUMERIC`, `DATE`).
- [ ] Mampu menuliskan perintah `CREATE TABLE` dengan pemilihan tipe data yang tepat.
- [ ] Memahami alasan mengapa tipe data database relasional diatur secara ketat.

## 19. Hubungan dengan Materi Lain

### Posisi Materi
- Rak: [01 - Orientasi, Sejarah, dan Fondasi PostgreSQL](../../README.md)
- Buku: [Fondasi Konsep Database](../)

### Prasyarat
- [Apa Itu PostgreSQL](../../01-orientasi-sejarah-dan-fondasi-postgresql/buku-01-orientasi-postgresql/bab-01-apa-itu-postgresql.md)

### Materi Sebelumnya
- Tidak ada (Ini adalah Bab Pembuka Buku).

### Materi Berikutnya
- [Pentingnya Primary Key](../../03-desain-data-dan-schema/buku-02-primary-key-foreign-key-dan-constraint/bab-01-pentingnya-primary-key.md)

### Materi Terkait
- [SQL dan Querying](../../02-sql-dan-querying/)

### Istilah Terkait
- Datatypes, Fixed-point, Floating-point, Schema.

## 20. Referensi Resmi
Jangan membuka tautan berikut pada batch ini, cukup cantumkan sebagai referensi resmi yang ditargetkan untuk verifikasi nanti:
- PostgreSQL Official Documentation - Tutorial Tables
  https://www.postgresql.org/docs/current/tutorial-table.html
- PostgreSQL Official Documentation - Data Definition Basics
  https://www.postgresql.org/docs/current/ddl-basics.html

## 21. Catatan Pribadi / Project Notes
*   *Catatan Draft*: Draft ini dirancang untuk menanamkan pemahaman mendasar mengenai pentingnya pemodelan tipe data yang bersih. Berikan penekanan kuat pada kesalahan-kesalahan umum (seperti penyimpanan nomor telepon dan nilai uang) agar pembaca terhindar dari blunder arsitektur sejak awal. Status verifikasi diatur ke REVIEW.
