# 03 - BAB 03 CHECK DAN UNIQUE CONSTRAINT

Status: DRAFT
Rak: Desain Data dan Schema
Buku: Primary Key Foreign Key dan Constraint
Level: Level 2 - Level 3
Tipe Materi: Tutorial
Target: Developer atau Data Modeler yang merancang struktur database.
Estimasi Baca: 10 Menit
Terakhir Diperiksa: 2026-05-17

Sumber Utama: PostgreSQL Official Documentation
Versi Referensi: PostgreSQL docs/current
Status Verifikasi Sumber: REVIEW

---

## 1. Tujuan Belajar
Di akhir bab ini, pembaca diharapkan mampu:
- Memahami konsep Constraint (Batasan) sebagai benteng pertahanan kualitas data di PostgreSQL.
- Menerapkan batasan `UNIQUE` untuk mencegah terjadinya duplikasi data non-key (seperti email atau nomor KTP).
- Menerapkan batasan `CHECK` untuk memvalidasi nilai kolom agar mematuhi aturan bisnis secara logis.
- Menjelaskan kolaborasi sistem constraint (Primary Key, Foreign Key, Unique, Check) dalam menjaga integritas data secara menyeluruh.

## 2. Prasyarat
- Memahami peran penting Primary Key sebagai pengidentifikasi unik baris data (baca: [Pentingnya Primary Key](./bab-01-pentingnya-primary-key.md)).
- Memahami peran Foreign Key dalam menjaga sinkronisasi hubungan relasi antar tabel (baca: [Foreign Key dan Referential Integrity](./bab-02-foreign-key-dan-referential-integrity.md)).

## 3. Ringkasan Cepat
**Constraint (Batasan)** adalah aturan pengaman yang disematkan pada kolom tabel untuk mengontrol kualitas data yang diizinkan masuk ke database. Batasan **`UNIQUE`** menjamin tidak boleh ada baris data yang memiliki nilai kolom yang sama (misal: email pengguna), sedangkan batasan **`CHECK`** memastikan data memenuhi syarat logika perbandingan tertentu (misal: harga barang wajib positif, rating ulasan antara 1 hingga 5) untuk memblokir masuknya data kotor yang merusak aplikasi.

## 4. Istilah Penting di Bab Ini

| Istilah | Arti Singkat |
|---|---|
| Constraint | Aturan pengaman kolom tabel untuk menjamin integritas dan akurasi data di disk. |
| UNIQUE | Batasan yang melarang adanya nilai kembar/duplikat pada kolom tertentu. |
| CHECK | Batasan yang mengevaluasi ekspresi logika boolean sebelum baris data diizinkan disimpan. |
| Constraint Violation | Pesan error akibat transaksi data yang gagal karena melanggar aturan constraint tabel. |
| Data Garbage | Data kotor atau salah secara logika bisnis yang merusak kestabilan analisis data. |

## 5. Analogi Sehari-hari
Bayangkan Anda sedang mengelola sebuah **Gedung Konser VIP (Database Server)**:
- Gedung konser ini memiliki pintu gerbang pemeriksaan yang super ketat sebelum penonton diperbolehkan masuk.
- **UNIQUE Constraint** adalah **Penjaga Tiket Pintu Masuk**: Penjaga memindai barcode tiket Anda. Sistem komputer menjamin barcode tiket tidak boleh sama dengan penonton lain yang sudah masuk gedung. Jika terdeteksi barcode kembar (**duplikat email**), Anda langsung ditolak masuk demi mencegah penipuan tiket duplikat.
- **CHECK Constraint** adalah **Petugas Keamanan dengan Sensor Suhu & Batas Usia**: Petugas memeriksa suhu tubuh Anda (suhu tubuh wajib di bawah 37,5 derajat) dan usia Anda (usia wajib di atas 18 tahun untuk konser khusus dewasa). Jika Anda terdeteksi berumur 12 tahun (**rating ulasan negatif / harga minus**), petugas akan langsung meminta Anda keluar dari antrean masuk konser tanpa kompromi.

## 6. Batas Analogi
Di konser fisik, petugas keamanan manusia bisa saja mengantuk, menerima suap, atau luput memvalidasi karena ramainya antrean penonton yang berdesakan.

Di dalam PostgreSQL, benteng pengaman database bekerja secara otomatis, mutlak, dan tidak memiliki toleransi kesalahan. Setiap ada kueri `INSERT` atau `UPDATE` yang melanggar aturan (*Constraint Violation*), engine database akan membatalkan seluruh transaksi secara instan, mengembalikan pesan error yang jelas, dan menjaga data di disk tetap bersih dan steril dari data kotor.

## 7. Ilustrasi Konsep

Status Ilustrasi: DRAFT

```mermaid
graph TD
    A[Input Data Transaksi] --> B{1. UNIQUE: Email sudah terdaftar?}
    B -- Ya --> C[Tolak: ERROR UNIQUE Constraint]
    B -- Tidak --> D{2. CHECK: Harga >= 0?}
    D -- Tidak --> E[Tolak: ERROR CHECK Constraint]
    D -- Ya --> F[(Database: Data Disimpan Steril)]
end
```

## 8. Penjelasan Ilustrasi
Bagan di atas memperlihatkan alur penyaringan data sebelum masuk ke penyimpanan fisik database. Data masukan harus melewati dua lapis benteng pertahanan: lapis pertama `UNIQUE` constraint untuk memblokir duplikasi email, dan lapis kedua `CHECK` constraint untuk memblokir nilai harga tidak masuk akal (negatif). Hanya data yang lolos seluruh penyaringan yang diizinkan masuk ke penyimpanan database.

## 9. Batas Ilustrasi
Ilustrasi di atas menyederhanakan jenis constraint demi kemudahan pemahaman. Pada kenyataannya, PostgreSQL memproses verifikasi constraint secara paralel dan efisien, serta melibatkan validasi Primary Key dan Foreign Key secara simultan dalam satu transaksi yang aman.

## 10. Konsep Inti
### Empat Pilar Pengaman Database Relasional
1.  **Primary Key (Identitas)**: Menjamin setiap baris data memiliki identitas unik wajib ada.
2.  **Foreign Key (Relasi)**: Menjamin hubungan rujukan antar tabel tetap sinkron dan valid.
3.  **UNIQUE Constraint (Anti-Duplikasi)**: Mencegah duplikasi data unik non-primary (seperti `email`, `nomor_ktp`, `username`).
4.  **CHECK Constraint (Logika Bisnis)**: Menjaga data agar masuk akal secara logika matematika bisnis sebelum masuk ke hard disk.

### CHECK Constraint Expression
Ekspresi di dalam batasan `CHECK` menggunakan logika perbandingan matematika yang menghasilkan nilai boolean (`TRUE`/`FALSE`). Contoh:
*   `CHECK (harga >= 0)`
*   `CHECK (rating >= 1 AND rating <= 5)`
*   `CHECK (status IN ('aktif', 'nonaktif', 'pending'))`

## 11. Penjelasan Detail
### Deklarasi Batasan UNIQUE dan CHECK dalam SQL
Mari kita lihat cara mendefinisikan batasan-batasan tersebut di PostgreSQL menggunakan pendekatan pembuatan tabel yang bersih:

#### A. Menerapkan UNIQUE Constraint
Untuk mencegah pendaftaran email ganda di tabel pengguna:
```sql
CREATE TABLE pengguna (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE -- Menjamin email tidak boleh kembar
);
```

#### B. Menerapkan CHECK Constraint
Untuk mencegah masuknya harga produk minus atau stok produk di bawah nol:
```sql
CREATE TABLE produk_toko (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    harga NUMERIC(12,2) CHECK (harga >= 0), -- Harga dilarang minus
    stok INT CHECK (stok >= 0) -- Stok dilarang minus
);
```

## 12. Contoh SQL Dasar
Berikut adalah contoh pembuatan tabel dengan batasan constraint terintegrasi:

```sql
-- Membuat tabel dengan constraint tingkat kolom
CREATE TABLE akun_bank (
    akun_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nomor_rekening VARCHAR(50) UNIQUE NOT NULL,
    saldo NUMERIC(15,2) CHECK (saldo >= 0.00)
);
```

## 13. Contoh SQL Praktik Project
Dalam skenario database e-commerce riil, kita merancang tabel ulasan produk dengan penggabungan Primary Key, Foreign Key, Unique kombinasi, dan batasan CHECK multi-kondisi secara profesional:

```sql
-- Pembuatan tabel ulasan produk terproteksi penuh
CREATE TABLE ulasan_produk (
    ulasan_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    produk_id INT NOT NULL,
    email_pengulas VARCHAR(150) NOT NULL,
    rating INT NOT NULL,
    komentar TEXT,
    -- Menjamin satu email hanya bisa mengulas satu produk sekali (Unique kombinasi)
    CONSTRAINT uq_email_produk UNIQUE (produk_id, email_pengulas),
    -- Validasi rating wajib berada di rentang 1 hingga 5 bintang
    CONSTRAINT chk_rating_range CHECK (rating >= 1 AND rating <= 5)
);
```

## 14. Kesalahan Umum
- **Mengandalkan Validasi Backend Saja**: Mempercayakan validasi keunikan data murni di tingkat kode program backend saja tanpa memasang constraint di database. Jika terjadi bug pada backend (seperti *race condition* saat dua pendaftar menekan tombol register bersamaan), database tanpa UNIQUE constraint akan membiarkan email kembar lolos masuk, yang akan merusak sistem login aplikasi secara permanen.
- **CHECK Constraint Terlalu Kaku**: Menulis batasan `CHECK` yang terlalu kaku sehingga mengunci data yang sebenarnya valid di masa depan (misalnya membatasi harga produk minimal harus 10 ribu rupiah, padahal di masa depan toko ingin menjual produk promosi seharga seribu rupiah).

## 15. Catatan Interview
- **Pertanyaan**: "Apa perbedaan fungsional antara `PRIMARY KEY` dengan `UNIQUE` constraint di PostgreSQL?"
- **Jawaban**: "Ada dua perbedaan utama. Pertama, dalam satu tabel kita hanya diperbolehkan memiliki **satu** `PRIMARY KEY`, sedangkan kita bebas membuat **banyak** kolom bertipe `UNIQUE` constraint (seperti kolom email, nomor HP, dan username sekaligus). Kedua, kolom `PRIMARY KEY` secara otomatis melarang keras nilai kosong (`NOT NULL`), sementara kolom `UNIQUE` constraint secara default memperbolehkan nilai kosong (`NULL`) dimasukkan ke dalam tabel (bahkan PostgreSQL memperbolehkan banyak nilai `NULL` kembar di kolom UNIQUE karena `NULL` diartikan sebagai data tidak diketahui, bukan duplikasi)."

## 16. Catatan Diskusi User
- **Pertanyaan Umum**: "Saya mendengar ada juga constraint canggih bernama *Exclusion Constraint*. Kapan kita memakainya?"
- **Diskusikan**: *Exclusion Constraint* adalah fitur tingkat mahir di PostgreSQL yang digunakan untuk kasus rumit, seperti mendeteksi bentrokan jadwal ruangan (mencegah dua pemesanan ruang rapat bertabrakan jamnya secara bersamaan). Untuk tingkat pemula Level 0-4 ini, kita fokus menguasai `UNIQUE` dan `CHECK` constraint dasar yang merupakan kebutuhan 90% perancangan skema aplikasi industri.

## 17. Latihan Kecil
1. Tuliskan query SQL untuk membuat tabel bernama `rekening` yang memiliki kolom `rekening_id` (Primary Key), `nomor_rekening` (wajib unik), dan `saldo` (CHECK dilarang di bawah 0)!
2. Mengapa jika Anda mencoba memasukkan data ulasan dengan nilai rating `6` ke tabel `ulasan_produk` di atas akan langsung menghasilkan pesan error *Constraint Violation*?

## 18. Checklist Pemahaman
- [ ] Memahami arti dan fungsi utama constraint bagi kualitas data database.
- [ ] Mampu memasang batasan `UNIQUE` untuk mencegah duplikasi email atau nomor KTP.
- [ ] Mampu menyusun ekspresi logika matematika pada batasan `CHECK` untuk validasi harga/rating.
- [ ] Memahami perbedaan perilaku nilai `NULL` pada kolom Primary Key vs UNIQUE.

## 19. Hubungan dengan Materi Lain

### Posisi Materi
- Rak: [03 - Desain Data dan Schema](../../README.md)
- Buku: [Primary Key Foreign Key dan Constraint](../)

### Prasyarat
- [Pentingnya Primary Key](./bab-01-pentingnya-primary-key.md)
- [Foreign Key dan Referential Integrity](./bab-02-foreign-key-dan-referential-integrity.md)

### Materi Sebelumnya
- [Foreign Key dan Referential Integrity](./bab-02-foreign-key-dan-referential-integrity.md)

### Materi Berikutnya
- [Peran Database di Arsitektur Backend](../../04-postgresql-untuk-aplikasi/buku-01-postgresql-dalam-backend-application/bab-01-peran-database-di-arsitektur-backend.md)

### Materi Terkait
- [SQL dan Querying](../../02-sql-dan-querying/)

### Istilah Terkait
- UNIQUE Index, Boolean Check, Data Corruption, Violation Error.

## 20. Referensi Resmi
Jangan membuka tautan berikut pada batch ini, cukup cantumkan sebagai referensi resmi yang ditargetkan untuk verifikasi nanti:
- PostgreSQL Official Documentation - Constraints
  https://www.postgresql.org/docs/current/ddl-constraints.html

## 21. Catatan Pribadi / Project Notes
*   *Catatan Draft*: Tanamkan mentalitas bahwa database adalah benteng pertahanan data terakhir. Tunjukkan secara nyata bahaya duplikasi email dan harga minus bagi stabilitas aplikasi e-commerce agar developer terbiasa disiplin memasang constraint sejak fase awal perancangan tabel. Status verifikasi diatur ke REVIEW.
