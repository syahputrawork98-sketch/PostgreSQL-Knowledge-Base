# Module 08 - Basic CRUD Operations

## Tujuan

Memahami operasi CRUD dasar di PostgreSQL agar pembaca dapat menambah, membaca, mengubah, dan menghapus data dengan aman dan terarah.

## Hasil Belajar

Setelah menyelesaikan module ini, pembaca diharapkan mampu:

1. menjelaskan arti CRUD
2. menjalankan `INSERT`, `SELECT`, `UPDATE`, dan `DELETE`
3. membaca perubahan data setelah tiap operasi
4. memahami pentingnya `WHERE` pada perubahan data
5. menghindari kesalahan awal saat memanipulasi data

## Apa Itu CRUD

CRUD adalah empat operasi dasar saat bekerja dengan data:

1. `CREATE` untuk menambah data
2. `READ` untuk membaca data
3. `UPDATE` untuk mengubah data
4. `DELETE` untuk menghapus data

Hampir semua aplikasi yang memakai database melakukan empat hal ini dalam berbagai bentuk.

## Kenapa CRUD Penting

Setelah memahami database, table, tipe data, `DEFAULT`, dan constraint, pembaca perlu mulai berinteraksi langsung dengan data yang ada di dalam table.

CRUD penting karena:

- inilah operasi yang paling sering dipakai sehari-hari
- pembaca mulai melihat bagaimana data bergerak di database
- pemahaman CRUD menjadi dasar untuk query yang lebih lanjut

## Table Contoh

Agar pembahasan konsisten, kita gunakan contoh table sederhana:

```sql
CREATE TABLE students (
    student_id INTEGER PRIMARY KEY,
    full_name TEXT NOT NULL,
    is_active BOOLEAN DEFAULT true
);
```

## CREATE Dengan INSERT

Untuk menambah data baru, gunakan `INSERT`.

Contoh:

```sql
INSERT INTO students (student_id, full_name, is_active)
VALUES (1, 'Alya Putri', true);
```

Kita juga bisa menambah beberapa row sekaligus:

```sql
INSERT INTO students (student_id, full_name, is_active)
VALUES
    (2, 'Bima Saputra', true),
    (3, 'Citra Lestari', false);
```

Hal penting:

- sebutkan column yang ingin diisi
- pastikan nilai sesuai urutan column
- pastikan tipe data dan constraint tidak dilanggar

## READ Dengan SELECT

Untuk membaca data, gunakan `SELECT`.

Contoh membaca semua row:

```sql
SELECT *
FROM students;
```

Contoh membaca column tertentu saja:

```sql
SELECT student_id, full_name
FROM students;
```

`SELECT` adalah cara paling aman untuk mengecek kondisi data sebelum dan sesudah perubahan.

## UPDATE Untuk Mengubah Data

Untuk mengubah data yang sudah ada, gunakan `UPDATE`.

Contoh:

```sql
UPDATE students
SET is_active = false
WHERE student_id = 2;
```

Di sini:

- `SET` menentukan perubahan nilainya
- `WHERE` menentukan row mana yang diubah

Tanpa `WHERE`, semua row bisa ikut berubah.

## DELETE Untuk Menghapus Data

Untuk menghapus data, gunakan `DELETE`.

Contoh:

```sql
DELETE FROM students
WHERE student_id = 3;
```

Seperti `UPDATE`, `DELETE` juga perlu perhatian besar pada `WHERE`.

Tanpa `WHERE`, semua row di table bisa terhapus.

## Urutan Kerja Yang Aman

Pola kerja sederhana yang baik:

1. lakukan `SELECT` dulu untuk melihat data saat ini
2. jalankan `INSERT`, `UPDATE`, atau `DELETE`
3. jalankan `SELECT` lagi untuk memastikan hasilnya sesuai harapan

Pola ini sangat membantu pemula menghindari perubahan yang tidak disadari.

## Kesalahan Umum Pemula

Kesalahan yang sering terjadi:

- lupa menyebut nama column saat `INSERT`
- urutan nilai pada `INSERT` tidak cocok dengan column
- menjalankan `UPDATE` tanpa `WHERE`
- menjalankan `DELETE` tanpa `WHERE`
- tidak mengecek hasil perubahan dengan `SELECT`

## Best Practices Awal

Beberapa kebiasaan baik:

- tulis `INSERT` dengan nama column yang jelas
- biasakan cek data dengan `SELECT` sebelum mengubah atau menghapus
- gunakan `WHERE` dengan hati-hati
- mulai dari contoh kecil sebelum mengubah banyak row
- pahami bahwa `UPDATE` dan `DELETE` bisa sangat berbahaya jika ceroboh

## Contoh Latihan

Lihat folder `examples/` untuk latihan CRUD bertahap menggunakan table sederhana.

Jalankan dari atas ke bawah agar terlihat jelas bagaimana data:

- ditambahkan
- dibaca
- diubah
- dihapus

## Ringkasan

CRUD adalah fondasi interaksi dengan data di PostgreSQL. Dengan memahami `INSERT`, `SELECT`, `UPDATE`, dan `DELETE`, pembaca mulai benar-benar bekerja dengan data, bukan hanya mendefinisikan struktur.

Kalau pembaca sudah paham:

- arti CRUD
- cara menambah, membaca, mengubah, dan menghapus data
- pentingnya `WHERE`
- pentingnya verifikasi dengan `SELECT`

maka pembaca siap masuk ke module berikutnya tentang filtering, sorting, dan limiting dasar.

## Aturan Lokal Module

Lihat folder `docs/` module ini.
