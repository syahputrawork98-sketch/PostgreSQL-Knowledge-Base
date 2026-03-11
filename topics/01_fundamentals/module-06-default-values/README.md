# Module 06 - Default Values

## Tujuan

Memahami peran `DEFAULT` di PostgreSQL agar pembaca dapat memberi nilai bawaan yang masuk akal pada column, mengurangi input manual yang berulang, dan menjaga data tetap lebih konsisten.

## Hasil Belajar

Setelah menyelesaikan module ini, pembaca diharapkan mampu:

1. menjelaskan apa itu `DEFAULT` dalam PostgreSQL
2. memahami kapan sebuah column layak diberi nilai bawaan
3. membuat table dengan `DEFAULT` sederhana
4. melihat pengaruh `DEFAULT` saat `INSERT`
5. menghindari kesalahan umum saat memakai nilai bawaan

## Apa Itu Default Value

`DEFAULT` adalah nilai bawaan yang akan dipakai PostgreSQL jika kita tidak memberikan nilai untuk column tertentu saat memasukkan data.

Contoh:

```sql
CREATE TABLE tasks (
    task_name TEXT,
    is_done BOOLEAN DEFAULT false
);
```

Pada contoh di atas, jika kita menambahkan data tanpa menyebut `is_done`, PostgreSQL akan memakai nilai `false`.

## Kenapa Default Value Berguna

`DEFAULT` berguna untuk:

- mengurangi input manual yang berulang
- memberi nilai awal yang konsisten
- membuat proses `INSERT` lebih praktis
- membantu struktur data lebih jelas sejak awal

Tanpa `DEFAULT`, kita mungkin harus terus menulis nilai yang sama berulang kali meskipun nilainya hampir selalu identik pada saat data pertama kali dibuat.

## Analogi Ringan

Cara mudah membayangkan `DEFAULT` adalah seperti formulir yang sudah memiliki isi bawaan pada beberapa field.

Misalnya:

- field status tugas sudah terisi `belum selesai`
- field tanggal dibuat otomatis terisi tanggal hari ini

Kalau pengguna tidak mengubah field itu, sistem tetap punya nilai yang masuk akal untuk disimpan.

Di PostgreSQL, `DEFAULT` bekerja dengan semangat yang mirip: jika tidak ada nilai yang diberikan, database mengisi nilai bawaan yang sudah ditentukan.

## Kapan Menggunakan Default Value

`DEFAULT` cocok dipakai jika:

- sebuah column sering memiliki nilai awal yang sama
- ada nilai bawaan yang logis untuk banyak data baru
- kita ingin mengurangi risiko lupa mengisi nilai tertentu

Contoh yang umum:

- status aktif awal `true`
- status selesai awal `false`
- tanggal dibuat diisi otomatis
- jumlah awal `0`

## Contoh Default Sederhana

```sql
CREATE TABLE users (
    full_name TEXT,
    is_active BOOLEAN DEFAULT true
);
```

Kalau kita menjalankan:

```sql
INSERT INTO users (full_name)
VALUES ('Alya Putri');
```

maka `is_active` akan otomatis berisi `true`.

## Default Dengan Angka

Kita juga bisa memberi nilai bawaan angka.

Contoh:

```sql
CREATE TABLE inventory (
    product_name TEXT,
    stock INTEGER DEFAULT 0
);
```

Ini berguna jika item baru secara awal dianggap belum memiliki stok masuk.

## Default Dengan Tanggal Dan Waktu

PostgreSQL juga bisa memakai nilai bawaan berbasis waktu.

Contoh:

```sql
CREATE TABLE notes (
    note_text TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

Atau:

```sql
CREATE TABLE events (
    event_name TEXT,
    event_date DATE DEFAULT CURRENT_DATE
);
```

Ini membantu ketika waktu pembuatan atau tanggal default memang sebaiknya diisi otomatis.

## Melihat Pengaruh Default Saat Insert

Perhatikan contoh berikut:

```sql
CREATE TABLE tasks (
    task_name TEXT,
    is_done BOOLEAN DEFAULT false
);

INSERT INTO tasks (task_name)
VALUES ('Belajar PostgreSQL');

SELECT task_name, is_done
FROM tasks;
```

Hasil yang diharapkan:

- `task_name` berisi `Belajar PostgreSQL`
- `is_done` berisi `false`

Jadi, walaupun `is_done` tidak ditulis saat `INSERT`, nilainya tetap ada karena `DEFAULT`.

## Default Tidak Selalu Berarti Wajib

Penting dipahami bahwa `DEFAULT` tidak sama dengan `NOT NULL`.

`DEFAULT` berarti:

- PostgreSQL punya nilai bawaan jika column tidak diberi nilai

Namun:

- ini tidak otomatis berarti semua situasi selalu aman
- aturan wajib atau tidaknya isi column tetap berkaitan dengan constraint, yang dibahas lebih lanjut di module berikutnya

## Kesalahan Umum Pemula

Kesalahan yang sering muncul:

- mengira `DEFAULT` selalu dipakai meskipun kita memberi nilai lain
- memakai nilai bawaan yang tidak benar-benar logis
- bingung membedakan `DEFAULT` dengan `NOT NULL`
- memberi `DEFAULT` hanya karena bisa, bukan karena memang dibutuhkan
- lupa mengecek hasil `INSERT` setelah membuat column dengan nilai bawaan

## Best Practices Awal

Beberapa kebiasaan baik:

- gunakan `DEFAULT` hanya jika ada nilai awal yang memang masuk akal
- pilih nilai bawaan yang mudah dipahami pembaca lain
- gunakan `DEFAULT false`, `DEFAULT true`, atau `DEFAULT 0` bila itu sesuai konteks data
- verifikasi hasil `INSERT` dengan `SELECT`
- jangan memakai nilai bawaan yang bisa menyesatkan arti data

## Contoh Latihan

Lihat folder `examples/` untuk latihan sederhana menggunakan `DEFAULT` pada `BOOLEAN`, `INTEGER`, dan `TIMESTAMP`.

Jalankan contoh langkah demi langkah agar terlihat jelas kapan nilai bawaan dipakai dan kapan nilai manual tetap bisa diberikan.

## Ringkasan

`DEFAULT` membantu PostgreSQL mengisi nilai awal secara otomatis saat data baru dibuat. Fitur ini sangat berguna untuk mengurangi input berulang dan menjaga konsistensi nilai awal.

Kalau pembaca sudah paham:

- apa itu `DEFAULT`
- kapan nilai bawaan layak dipakai
- bagaimana `DEFAULT` memengaruhi `INSERT`
- kesalahan umum saat memberi nilai bawaan

maka pembaca siap masuk ke module berikutnya tentang constraint dan integritas data.

## Aturan Lokal Module

Lihat folder `docs/` module ini.
