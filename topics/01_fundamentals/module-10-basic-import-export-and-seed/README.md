# Module 10 - Basic Import Export And Seed

## Tujuan

Memahami cara menyiapkan data awal dan memindahkan data sederhana di PostgreSQL agar pembaca dapat mengisi data latihan, mencoba query dengan dataset nyata, dan mengenali perbedaan antara seed, import, dan export.

## Hasil Belajar

Setelah menyelesaikan module ini, pembaca diharapkan mampu:

1. menjelaskan perbedaan seed, import, dan export
2. membuat data awal sederhana dengan `INSERT`
3. mengenali penggunaan dasar `COPY` atau `\copy`
4. memahami kapan data perlu diekspor
5. menghindari kesalahan umum saat menyiapkan data latihan

## Kenapa Module Ini Penting

Belajar PostgreSQL akan terasa jauh lebih jelas jika kita punya data latihan yang cukup.

Tanpa data:

- query sulit diuji
- filtering dan sorting tidak terasa nyata
- perubahan data sulit diamati

Karena itu, pembaca perlu mengenal cara dasar untuk:

- menyiapkan data awal
- memasukkan data dari file sederhana
- mengeluarkan data ke format yang mudah dibaca atau dipakai ulang

## Apa Itu Seed

`seed` adalah data awal yang sengaja dibuat untuk kebutuhan latihan, pengujian, atau setup awal.

Biasanya seed:

- jumlahnya tidak terlalu besar
- strukturnya sederhana
- ditulis manual atau disimpan dalam file SQL

Contoh seed sederhana:

```sql
INSERT INTO students (student_id, full_name, is_active)
VALUES
    (1, 'Alya Putri', true),
    (2, 'Bima Saputra', true),
    (3, 'Citra Lestari', false);
```

Ini adalah cara paling mudah untuk menyiapkan data latihan pertama.

## Apa Itu Import

`import` berarti memasukkan data dari sumber luar ke PostgreSQL.

Untuk tahap awal, bentuk yang paling mudah dipahami biasanya file CSV.

Gagasan sederhananya:

- data sudah ada di file
- PostgreSQL membaca file itu
- lalu data dimasukkan ke table yang sesuai

## Apa Itu Export

`export` berarti mengeluarkan data dari PostgreSQL ke format lain.

Tujuannya bisa bermacam-macam:

- melihat data di luar database
- membagikan hasil ke alat lain
- menyimpan salinan data sederhana

Untuk tahap fundamentals, export ke CSV adalah contoh yang paling mudah dipahami.

## Seed Dengan File SQL

Seed sering dibuat dalam bentuk file `.sql`.

Contoh isi file seed:

```sql
INSERT INTO products (product_id, product_name, price)
VALUES
    (1, 'Mechanical Keyboard', 799000.00),
    (2, 'Wireless Mouse', 299000.00);
```

Keuntungan pendekatan ini:

- mudah dibaca
- mudah dijalankan ulang
- cocok untuk dataset kecil sampai menengah pada latihan awal

## Import Dasar Dengan COPY Dan \copy

Di PostgreSQL, data CSV sering dikenalkan lewat `COPY` atau `\copy`.

Contoh bentuk umum:

```sql
\copy products(product_id, product_name, price)
FROM 'products.csv'
WITH (FORMAT csv, HEADER true);
```

Untuk tahap awal, cukup pahami:

- file CSV punya kolom yang harus cocok dengan struktur table
- urutan kolom penting
- header file sering perlu diperhatikan

Dalam praktik pemula, `\copy` sering lebih mudah dicoba dari `psql` karena lebih dekat dengan file lokal pengguna.

## Export Dasar Ke CSV

Contoh export sederhana:

```sql
\copy (
    SELECT product_id, product_name, price
    FROM products
) TO 'products-export.csv'
WITH (FORMAT csv, HEADER true);
```

Ini berguna ketika kita ingin melihat hasil query di file CSV atau membawanya ke tool lain.

## Kapan Pakai Seed, Import, Atau Export

Gunakan:

- `seed` jika kita ingin menyiapkan data awal latihan dengan cepat
- `import` jika data sudah tersedia di file luar
- `export` jika data perlu dikeluarkan dari PostgreSQL

Untuk pemula, seed manual biasanya langkah terbaik terlebih dahulu. Setelah itu, barulah import/export dasar terasa lebih masuk akal.

## Kesalahan Umum Pemula

Kesalahan yang sering muncul:

- mengira seed dan import adalah hal yang sama persis
- memasukkan data ke column yang urutannya tidak cocok
- memakai file CSV yang tidak sesuai dengan struktur table
- tidak mengecek hasil setelah import
- terlalu cepat masuk ke backup/restore penuh padahal hanya butuh seed sederhana

## Best Practices Awal

Beberapa kebiasaan baik:

- mulai dari seed kecil yang mudah dibaca
- cek struktur table sebelum import
- cocokkan urutan kolom dengan isi file
- verifikasi hasil dengan `SELECT`
- gunakan nama file yang jelas untuk seed atau export

## Contoh Latihan

Lihat folder `examples/` untuk contoh seed SQL sederhana dan contoh penggunaan dasar `\copy` untuk import/export CSV.

Mulailah dari seed manual, lalu baca contoh import/export sebagai pengenalan awal, bukan sebagai keharusan yang harus langsung dikuasai semua.

## Ringkasan

Seed, import, dan export membantu pembaca bergerak dari sekadar membuat struktur table menjadi menyiapkan data latihan yang benar-benar bisa dipakai.

Kalau pembaca sudah paham:

- beda seed, import, dan export
- cara membuat seed sederhana
- gagasan dasar `\copy` untuk CSV
- pentingnya verifikasi setelah data masuk atau keluar

maka pembaca siap masuk ke module berikutnya tentang kesalahan umum pemula.

## Aturan Lokal Module

Lihat folder `docs/` module ini.
