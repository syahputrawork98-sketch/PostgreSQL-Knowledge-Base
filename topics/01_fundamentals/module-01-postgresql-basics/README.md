# Module 01 - PostgreSQL Basics

## Tujuan

Memahami cara berpikir dasar saat belajar PostgreSQL agar pembaca tidak hanya menghafal perintah, tetapi juga paham object apa yang sedang dikelola dan mengapa object tersebut penting.

## Hasil Belajar

Setelah menyelesaikan module ini, pembaca diharapkan mampu:

1. menjelaskan apa itu PostgreSQL secara sederhana
2. membedakan database, schema, table, row, dan column
3. mengenali peran tipe data dalam penyimpanan data
4. memahami gambaran besar operasi CRUD
5. menghindari beberapa kesalahan umum saat baru mulai belajar

## Apa Itu PostgreSQL

PostgreSQL adalah sistem manajemen database relasional open source yang digunakan untuk menyimpan, mengelola, dan mengambil data secara terstruktur.

Dalam praktik sehari-hari, PostgreSQL sering dipakai untuk:

- aplikasi web
- sistem internal perusahaan
- layanan backend
- analisis data skala kecil sampai besar

PostgreSQL dikenal kuat karena:

- mendukung standar SQL dengan baik
- punya banyak fitur yang matang
- stabil untuk penggunaan jangka panjang
- fleksibel untuk kebutuhan aplikasi modern

## Cara Berpikir Dasar Sebelum Menulis SQL

Sebelum menulis query, pahami dulu struktur dasarnya:

- `database` adalah wadah besar untuk kumpulan object
- `schema` adalah pengelompokan object di dalam database
- `table` adalah tempat menyimpan data dalam bentuk baris dan kolom
- `row` mewakili satu data atau satu record
- `column` mewakili atribut dari data tersebut

Contoh sederhana:

- database: `school_db`
- schema: `public`
- table: `students`
- column: `student_id`, `full_name`, `birth_date`
- row: satu siswa tertentu

Kalau diibaratkan:

- `database` seperti gedung arsip
- `schema` seperti ruangan berdasarkan kategori
- `table` seperti lemari atau formulir
- `row` seperti satu lembar data
- `column` seperti field pada formulir

## PostgreSQL Sebagai Database Relasional

Database relasional menyimpan data ke dalam tabel yang punya struktur jelas. Setiap tabel biasanya mewakili satu entitas, misalnya:

- `students`
- `courses`
- `orders`
- `products`

Relasional berarti data dapat dihubungkan secara teratur antar tabel, tetapi pada tahap fundamentals kita cukup memahami dulu bahwa:

- data harus punya struktur yang jelas
- setiap kolom sebaiknya punya arti yang spesifik
- satu tabel sebaiknya punya tujuan yang jelas

## Tipe Data Dasar

Tipe data menentukan jenis nilai yang boleh disimpan oleh sebuah kolom.

Contoh tipe data yang sering ditemui:

- `INTEGER` untuk angka bulat
- `NUMERIC` untuk angka presisi
- `TEXT` untuk teks bebas
- `BOOLEAN` untuk nilai benar atau salah
- `DATE` untuk tanggal
- `TIMESTAMP` untuk tanggal dan waktu

Contoh:

```sql
CREATE TABLE students (
    student_id INTEGER,
    full_name TEXT,
    is_active BOOLEAN,
    birth_date DATE
);
```

Pemilihan tipe data penting karena memengaruhi:

- validitas data
- konsistensi struktur
- cara query bekerja
- efisiensi penyimpanan

## Gambaran Besar CRUD

CRUD adalah empat operasi dasar yang hampir selalu ada saat bekerja dengan data:

1. `CREATE` untuk menambah data
2. `READ` untuk membaca data
3. `UPDATE` untuk mengubah data
4. `DELETE` untuk menghapus data

Contoh singkat:

```sql
INSERT INTO students (student_id, full_name, is_active)
VALUES (1, 'Alya', true);

SELECT student_id, full_name, is_active
FROM students;

UPDATE students
SET is_active = false
WHERE student_id = 1;

DELETE FROM students
WHERE student_id = 1;
```

Di module ini, tujuan kita bukan menguasai detail semua query, tetapi memahami bahwa PostgreSQL dipakai untuk mengelola siklus hidup data dari dibuat sampai dihapus.

## Alur Kerja Dasar Saat Belajar PostgreSQL

Urutan berpikir yang sehat untuk pemula biasanya seperti ini:

1. pahami data apa yang ingin disimpan
2. tentukan table yang dibutuhkan
3. tentukan column dan tipe datanya
4. masukkan data contoh
5. baca ulang data dengan `SELECT`
6. ubah atau hapus data bila diperlukan

Dengan pola ini, belajar PostgreSQL terasa lebih masuk akal daripada langsung menghafal banyak syntax.

## Best Practices Awal

Beberapa kebiasaan baik sejak awal:

- gunakan nama table dan column yang jelas
- pilih tipe data yang sesuai dengan kebutuhan
- hindari menyimpan semua hal sebagai `TEXT`
- tulis query sederhana terlebih dahulu
- cek kembali data dengan `SELECT` setelah `INSERT` atau `UPDATE`
- pahami struktur sebelum mengejar query yang kompleks

## Kesalahan Umum Pemula

Kesalahan yang sering terjadi:

- belum paham beda `database`, `schema`, dan `table`
- membuat nama column yang terlalu ambigu
- memakai tipe data yang tidak tepat
- menjalankan `UPDATE` atau `DELETE` tanpa memahami `WHERE`
- terlalu cepat masuk ke query lanjutan sebelum fondasi konsepnya kuat

## Contoh Latihan Awal

Lihat contoh SQL di folder `examples/` untuk latihan pembuka yang sangat sederhana.

Mulailah dengan membaca alurnya, lalu jalankan perintah satu per satu agar terlihat hubungan antara struktur tabel dan operasi CRUD dasar.

## Ringkasan

PostgreSQL adalah database relasional yang menyimpan data secara terstruktur. Fondasi terpenting di tahap awal bukan banyaknya query yang dihafal, tetapi pemahaman tentang:

- object dasar PostgreSQL
- struktur tabel
- tipe data
- alur CRUD
- kebiasaan kerja yang aman untuk pemula

Pemahaman ini akan menjadi landasan untuk module berikutnya yang membahas instalasi, koneksi awal, dan object database dengan lebih terarah.

## Aturan Lokal Module

Lihat folder `docs/` module ini.
