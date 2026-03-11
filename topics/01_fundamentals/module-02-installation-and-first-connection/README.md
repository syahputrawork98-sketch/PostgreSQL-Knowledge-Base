# Module 02 - Installation And First Connection

## Tujuan

Memahami langkah awal untuk menyiapkan PostgreSQL di komputer lokal, terhubung ke server PostgreSQL, dan membuat database pertama sebagai fondasi latihan pada module berikutnya.

## Hasil Belajar

Setelah menyelesaikan module ini, pembaca diharapkan mampu:

1. menjelaskan komponen dasar yang dibutuhkan untuk mulai memakai PostgreSQL
2. memilih jalur instalasi yang sesuai dengan sistem kerja
3. melakukan koneksi awal menggunakan client PostgreSQL
4. membuat database pertama untuk latihan
5. mengenali masalah koneksi awal yang umum terjadi

## Gambaran Besar Sebelum Instalasi

Saat orang berkata "install PostgreSQL", biasanya ada beberapa komponen yang perlu dipahami:

- `PostgreSQL server` adalah layanan utama yang menyimpan dan mengelola data
- `psql` adalah command-line client untuk terhubung ke server
- GUI client seperti pgAdmin, DBeaver, atau tool lain bersifat pendukung

Untuk belajar fundamentals, target minimum kita adalah:

1. PostgreSQL server terpasang
2. server bisa berjalan
3. kita bisa terhubung ke server
4. kita bisa membuat satu database latihan

## Opsi Instalasi Umum

Beberapa jalur instalasi yang umum dipakai:

- installer resmi untuk Windows
- package manager di Linux
- package manager seperti Homebrew di macOS
- container seperti Docker bila ingin lingkungan yang terisolasi

Untuk pemula, pilihan paling sederhana biasanya:

- Windows: installer resmi yang sekaligus menyertakan tool dasar
- Linux: package manager distribusi
- macOS: Homebrew atau installer resmi

Yang penting bukan metode mana yang paling keren, tetapi metode yang membuat pembaca bisa cepat sampai ke tahap koneksi dan latihan.

## Informasi Yang Perlu Disiapkan

Saat instalasi atau konfigurasi awal, biasanya kita perlu mengenali beberapa parameter dasar:

- `host`
- `port`
- `username`
- `password`
- nama database tujuan

Pada setup lokal sederhana, nilai yang sering dipakai adalah:

- `host`: `localhost`
- `port`: `5432`
- `username`: sesuai user PostgreSQL yang dibuat saat instalasi

Nilai ini bisa berbeda pada mesin atau lingkungan tertentu, jadi pembaca harus terbiasa melihat konfigurasi nyata yang dipakai di sistemnya.

## Analogi Ringan Untuk Koneksi

Cara sederhana untuk membayangkan koneksi awal adalah seperti masuk ke sebuah gedung yang punya alamat dan aturan akses:

- `host` seperti alamat gedung yang dituju
- `port` seperti pintu masuk yang dipakai
- `username` dan `password` seperti identitas akses
- nama `database` seperti ruangan kerja tujuan setelah kita berhasil masuk

Analogi ini membantu menjelaskan bahwa koneksi gagal tidak selalu berarti PostgreSQL rusak. Bisa jadi alamatnya salah, pintunya salah, identitasnya salah, atau ruangan yang dituju memang belum ada.

## Mengecek Apakah PostgreSQL Sudah Terpasang

Salah satu pengecekan awal yang paling berguna adalah memastikan client `psql` tersedia.

Contoh:

```bash
psql --version
```

Kalau perintah ini berhasil, biasanya client PostgreSQL sudah tersedia di terminal.

Namun ini belum otomatis berarti server sudah berjalan. Karena itu, langkah berikutnya adalah mencoba koneksi.

## Koneksi Pertama Dengan psql

Contoh koneksi dasar:

```bash
psql -h localhost -p 5432 -U postgres -d postgres
```

Arti parameter:

- `-h` menentukan host
- `-p` menentukan port
- `-U` menentukan user
- `-d` menentukan database tujuan

Kalau koneksi berhasil, biasanya kita masuk ke prompt `psql` dan bisa menjalankan query SQL.

Contoh verifikasi sederhana:

```sql
SELECT current_database(), current_user;
```

Query ini membantu memastikan kita benar-benar sudah terhubung ke database yang diinginkan dengan user yang dipakai.

## Membuat Database Pertama

Setelah koneksi berhasil, langkah belajar yang baik adalah membuat database latihan sendiri.

Contoh:

```sql
CREATE DATABASE playground_db;
```

Lalu pindah koneksi ke database tersebut.

Di `psql`, perpindahan koneksi bisa dilakukan dengan:

```text
\c playground_db
```

Setelah itu, cek lagi:

```sql
SELECT current_database();
```

Dengan pola ini, pembaca belajar bahwa:

- server PostgreSQL bisa menampung banyak database
- koneksi selalu terjadi ke database tertentu
- berpindah database adalah bagian dari workflow dasar

## Alur Setup Awal Yang Disarankan

Urutan sederhana yang aman untuk pemula:

1. pasang PostgreSQL
2. cek `psql --version`
3. pastikan service/server PostgreSQL berjalan
4. konek ke database default seperti `postgres`
5. jalankan query verifikasi
6. buat database latihan sendiri
7. konek ke database latihan

## Tool Yang Sering Dipakai Pemula

Tool dasar yang sering dipakai di tahap awal:

- `psql` untuk latihan yang dekat dengan SQL asli
- pgAdmin untuk eksplorasi visual
- editor teks atau IDE untuk menyimpan file `.sql`

Module ini tetap menempatkan `psql` sebagai titik awal terbaik karena:

- ringan
- langsung
- membantu memahami koneksi dan konteks database
- tidak menyembunyikan perintah penting di balik antarmuka GUI

## Kesalahan Umum Saat Koneksi Pertama

Masalah yang paling sering ditemui:

- PostgreSQL server belum berjalan
- `psql` belum masuk ke `PATH`
- salah `username` atau `password`
- salah `host` atau `port`
- mencoba konek ke database yang belum ada

Contoh gejala dan arah cek:

- `connection refused`: biasanya service belum berjalan atau host/port salah
- `password authentication failed`: biasanya user atau password salah
- `database does not exist`: nama database tujuan salah atau belum dibuat
- `psql is not recognized`: client belum terpasang dengan benar atau belum ada di `PATH`

## Best Practices Awal

Beberapa kebiasaan baik sejak awal:

- gunakan satu database latihan khusus
- catat parameter koneksi yang dipakai
- verifikasi koneksi dengan query sederhana
- biasakan membedakan masalah client, server, dan credential
- mulai dari terminal lebih dulu sebelum terlalu bergantung pada GUI

## Contoh Latihan

Lihat folder `examples/` untuk contoh alur koneksi awal dan pembuatan database latihan.

Tujuan contoh ini bukan untuk mencakup semua variasi instalasi, tetapi memberi jalur latihan minimum yang konsisten untuk pemula.

## Ringkasan

Instalasi dan koneksi awal adalah gerbang masuk ke semua pembelajaran PostgreSQL berikutnya. Di tahap ini, yang paling penting adalah memastikan:

- PostgreSQL server tersedia
- client bisa dipakai
- koneksi berhasil
- database latihan siap digunakan

Kalau empat hal ini sudah beres, pembaca siap masuk ke pembahasan object database dan struktur data pada module berikutnya.

## Aturan Lokal Module

Lihat folder `docs/` module ini.
