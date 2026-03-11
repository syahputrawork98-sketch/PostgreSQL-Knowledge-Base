# Module 09 - Basic Filtering Sorting And Limiting

## Tujuan

Memahami cara menyaring, mengurutkan, dan membatasi hasil query di PostgreSQL agar pembaca bisa mengambil data yang lebih relevan, lebih rapi, dan lebih fokus.

## Hasil Belajar

Setelah menyelesaikan module ini, pembaca diharapkan mampu:

1. menggunakan `WHERE` untuk menyaring data
2. menggunakan `ORDER BY` untuk mengurutkan hasil
3. menggunakan `LIMIT` untuk membatasi jumlah row
4. memahami fungsi dasar `OFFSET`
5. menggabungkan beberapa elemen query sederhana dengan aman

## Kenapa Filtering Dan Sorting Penting

Saat jumlah data mulai bertambah, `SELECT * FROM table` saja sering tidak cukup.

Kita biasanya ingin:

- melihat data tertentu saja
- mengurutkan hasil agar lebih mudah dibaca
- menampilkan sebagian kecil data

Di sinilah `WHERE`, `ORDER BY`, `LIMIT`, dan `OFFSET` mulai sangat berguna.

## Table Contoh

Contoh table sederhana:

```sql
CREATE TABLE products (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT NOT NULL,
    price NUMERIC(10,2),
    is_available BOOLEAN DEFAULT true
);
```

## Filtering Dengan WHERE

`WHERE` dipakai untuk memilih row yang memenuhi kondisi tertentu.

Contoh:

```sql
SELECT product_id, product_name, price
FROM products
WHERE is_available = true;
```

Artinya, hanya row dengan `is_available = true` yang ditampilkan.

Contoh lain:

```sql
SELECT product_id, product_name, price
FROM products
WHERE price >= 100000;
```

Ini berguna ketika kita tidak ingin membaca semua data, tetapi hanya data yang sesuai kebutuhan.

## Operator Dasar Di WHERE

Beberapa operator yang sering dipakai pemula:

- `=` sama dengan
- `!=` atau `<>` tidak sama dengan
- `>` lebih besar dari
- `<` lebih kecil dari
- `>=` lebih besar atau sama dengan
- `<=` lebih kecil atau sama dengan

Contoh:

```sql
SELECT *
FROM products
WHERE price <= 500000;
```

## Sorting Dengan ORDER BY

`ORDER BY` dipakai untuk mengurutkan hasil query.

Contoh urut naik:

```sql
SELECT product_name, price
FROM products
ORDER BY price ASC;
```

Contoh urut turun:

```sql
SELECT product_name, price
FROM products
ORDER BY price DESC;
```

Secara umum:

- `ASC` berarti urut naik
- `DESC` berarti urut turun

Kalau tidak ditulis, urutan default biasanya `ASC`.

## Limit Dengan LIMIT

`LIMIT` dipakai untuk membatasi jumlah row yang ditampilkan.

Contoh:

```sql
SELECT product_name, price
FROM products
ORDER BY price DESC
LIMIT 3;
```

Ini berarti hanya tiga row teratas yang akan ditampilkan setelah proses pengurutan dilakukan.

`LIMIT` berguna ketika:

- kita hanya butuh beberapa data pertama
- kita ingin melihat sampel data
- kita ingin hasil query lebih ringkas

## Mengenal OFFSET

`OFFSET` dipakai untuk melewati sejumlah row pertama sebelum mulai menampilkan hasil.

Contoh:

```sql
SELECT product_name, price
FROM products
ORDER BY price DESC
LIMIT 3 OFFSET 2;
```

Artinya:

- urutkan data dulu
- lewati dua row pertama
- lalu tampilkan tiga row berikutnya

Untuk tahap fundamentals, cukup pahami bahwa `OFFSET` membantu menggeser titik awal hasil query.

## Menggabungkan WHERE, ORDER BY, LIMIT, Dan OFFSET

Contoh gabungan:

```sql
SELECT product_name, price
FROM products
WHERE is_available = true
ORDER BY price DESC
LIMIT 5 OFFSET 0;
```

Alur berpikir sederhananya:

1. ambil data dari table
2. saring dengan `WHERE`
3. urutkan dengan `ORDER BY`
4. batasi hasil dengan `LIMIT`
5. geser titik awal bila perlu dengan `OFFSET`

## Kesalahan Umum Pemula

Kesalahan yang sering terjadi:

- lupa bahwa `WHERE` menyaring sebelum hasil ditampilkan
- salah memahami urutan `ASC` dan `DESC`
- memakai `LIMIT` tanpa sadar hasil belum diurutkan
- memakai `OFFSET` tanpa benar-benar paham data mana yang sedang dilewati
- membuat query terlalu rumit sebelum menguasai bentuk dasarnya

## Best Practices Awal

Beberapa kebiasaan baik:

- mulai dari `SELECT` sederhana lalu tambah `WHERE` jika perlu
- gunakan `ORDER BY` saat hasil perlu dibaca dengan urutan yang jelas
- gunakan `LIMIT` untuk eksplorasi awal data
- kombinasikan satu per satu, jangan sekaligus terlalu banyak
- cek ulang apakah hasil query sudah benar-benar sesuai maksud

## Contoh Latihan

Lihat folder `examples/` untuk contoh query bertahap menggunakan `WHERE`, `ORDER BY`, `LIMIT`, dan `OFFSET`.

Jalankan dari query paling sederhana, lalu tambahkan satu elemen per langkah agar pola berpikir query tetap jelas.

## Ringkasan

Filtering, sorting, dan limiting membantu pembaca mengambil data yang lebih relevan daripada sekadar membaca semua row mentah.

Kalau pembaca sudah paham:

- fungsi `WHERE`
- fungsi `ORDER BY`
- fungsi `LIMIT`
- fungsi dasar `OFFSET`
- cara menggabungkan semuanya secara sederhana

maka pembaca siap masuk ke module berikutnya tentang import, export, dan seed dasar.

## Aturan Lokal Module

Lihat folder `docs/` module ini.
