# 02 - BAB 02 INNER JOIN

Status: DRAFT
Rak: SQL dan Querying
Buku: Join dan Relasi Query
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
- Menjelaskan konsep kerja dan tujuan penggunaan klausa `INNER JOIN` di dalam PostgreSQL.
- Menuliskan sintaks kueri `INNER JOIN` secara tepat dengan memanfaatkan klausa syarat penyatuan `ON`.
- Menerapkan nama alias tabel secara disiplin untuk mencegah terjadinya ambiguitas pemanggilan kolom (*column ambiguity*).
- Menjelaskan mengapa baris data yang tidak memiliki kecocokan nilai kunci otomatis disembunyikan dari hasil keluaran `INNER JOIN`.

## 2. Prasyarat
- Memahami konsep relasi tabel menggunakan Primary Key dan Foreign Key (baca: [Konsep Relasi Antar Tabel](./bab-01-konsep-relasi-antar-tabel.md)).
- Mengetahui cara memberikan alias pada tabel di SQL (baca: [Alias Kolom dan Tabel](../buku-01-dasar-sql-dan-query-select/bab-03-alias-kolom-dan-tabel.md)).

## 3. Ringkasan Cepat
Klausa `INNER JOIN` adalah metode yang paling sering digunakan untuk menyatukan baris data dari dua tabel atau lebih di dalam SQL. Operasi ini bekerja dengan cara membandingkan setiap baris dari tabel pertama dengan setiap baris dari tabel kedua berdasarkan kriteria kecocokan kolom kunci yang kita deklarasikan di dalam klausa `ON`. Kunci utama dari perilaku `INNER JOIN` adalah eksklusivitasnya: **ia hanya akan menampilkan baris data yang memiliki pasangan cocok di kedua belah tabel**. Jika ditemukan data yang tidak memiliki pasangan rujukan di tabel lawan, data tersebut akan langsung disaring keluar dari hasil kueri.

## 4. Istilah Penting di Bab Ini

| Istilah | Arti Singkat |
|---|---|
| INNER JOIN | Operasi penyatuan tabel yang hanya mengembalikan baris-baris data yang memenuhi kondisi pencocokan di kedua tabel. |
| ON | Klausa khusus SQL untuk mendeklarasikan rumus atau syarat logika kecocokan penyatuan antar tabel. |
| Intersection | Konsep irisan matematika; daerah himpunan di mana anggota-anggotanya berada di Set A sekaligus Set B. |
| Column Ambiguity | Kondisi error di SQL ketika sistem bingung memproses kolom karena nama kolom tersebut eksis di lebih dari satu tabel yang di-join. |
| Matching Key | Kolom penghubung (biasanya jembatan PK-FK) yang nilainya dicocokkan untuk merekatkan baris data. |

## 5. Analogi Sehari-hari
Mari kita analogikan proses kerja `INNER JOIN` dengan **Acara Makan Malam Khusus Pasangan Suami Istri (Couple Dinner)**:

- **Aturan Acara Restoran**:
  Bayangkan Anda menyelenggarakan pesta makan malam mewah eksklusif di restoran romantis. Aturan masuk gerbang restoran sangat ketat: *Hanya tamu yang membawa pasangannya masing-masing yang diperbolehkan masuk ke ruang makan pesta.*
  - **Tabel Suami (Tabel A)**: Berisi daftar nama suami (cth: Budi, Joko, Candra).
  - **Tabel Istri (Tabel B)**: Berisi daftar nama istri (cth: Ani, Susi, Fitri).
  - **Klausa ON (Sertifikat Nikah)**: Satpam mencocokkan kode pernikahan di sertifikat nikah mereka (`ON Suami.id_pernikahan = Istri.id_pernikahan`).
- **Proses Penyaringan (INNER JOIN)**:
  - **Budi dan Ani** datang bersama membawa sertifikat nikah yang cocok. Satpam memperbolehkan mereka masuk dan duduk berdampingan di satu meja makan romantis (satu baris data gabungan sukses tampil).
  - **Joko** datang sendirian karena istrinya sedang bertugas dinas di luar kota. Joko **ditolak masuk** oleh satpam (baris data Joko disembunyikan karena tidak ada pasangan di Tabel Istri).
  - **Fitri** datang sendirian karena suaminya tidak suka menghadiri pesta. Fitri juga **ditolak masuk** oleh satpam (baris data Fitri disembunyikan karena tidak ada pasangan di Tabel Suami).
- **Hasil Akhir**: Hanya pasangan suami-istri yang **keduanya sama-sama hadir membawa sertifikat nikah valid** yang bisa duduk manis di dalam ruang pesta restoran tersebut. Ini adalah visualisasi sempurna dari *intersection* (irisan) data.

## 6. Batas Analogi
Di dunia sosial nyata, menolak tamu yang datang sendirian di depan pintu masuk pesta makan malam bisa memicu konflik sosial, rasa tersinggung, atau kemarahan tamu tersebut.

Di dalam SQL PostgreSQL, penyaringan baris data yang tidak memiliki pasangan berjalan sunyi, damai, aman secara logika komputasi, dan tidak memicu pesan error sistem sama sekali. Data yang tidak memiliki pasangan hanya disaring keluar secara anggun dari tabel hasil kampilan (*result set*).

## 7. Ilustrasi Konsep

Status Ilustrasi: DRAFT

```mermaid
graph LR
    subgraph Tabel Pelanggan [Tabel A: Pelanggan]
        A1[1: Syah]
        A2[2: Putra]
        A3[3: Danang]
    end
    
    subgraph Tabel Pesanan [Tabel B: Pesanan]
        B1[INV-101: Pelanggan_ID 1]
        B2[INV-102: Pelanggan_ID 2]
        B3[INV-103: Pelanggan_ID 9]
    end
    
    subgraph Hasil INNER JOIN [Result Set: Irisan A & B]
        R1[Syah - INV-101]
        R2[Putra - INV-102]
    end
    
    A1 -->|Cocok| R1
    B1 -->|Cocok| R1
    A2 -->|Cocok| R2
    B2 -->|Cocok| R2
    
    A3 -.->|Sembunyi: Tidak Ada Pesanan| Hasil INNER JOIN
    B3 -.->|Sembunyi: Pelanggan ID 9 Tidak Eksis| Hasil INNER JOIN
```

## 8. Penjelasan Ilustrasi
Bagan di atas memvisualisasikan bagaimana `INNER JOIN` bekerja memfilter data. Pelanggan ID 1 (Syah) dan ID 2 (Putra) memiliki data pesanan yang cocok di tabel pesanan, sehingga mereka berhasil disatukan di tabel hasil. Namun, Pelanggan ID 3 (Danang) tidak memiliki pesanan apa pun, dan Pesanan `INV-103` memiliki `pelanggan_id = 9` yang tidak terdaftar di tabel pelanggan. Akibatnya, kedua data yang tidak berpasangan tersebut langsung disembunyikan (garis putus-putus) dari hasil akhir kueri.

## 9. Batas Ilustrasi
Visualisasi di atas menggambarkan irisan data sederhana satu-ke-satu. Di dunia nyata, jika satu pelanggan memiliki 5 pesanan berbeda di tabel pesanan, maka baris nama pelanggan tersebut akan diduplikasi sebanyak 5 kali secara horizontal di hasil `INNER JOIN` untuk dipasangkan dengan masing-masing baris pesanannya secara akurat.

## 10. Konsep Inti

### 1. Struktur Dasar Sintaks INNER JOIN
Sintaks formal untuk menggabungkan dua tabel adalah sebagai berikut:

```sql
SELECT kolom_pilihan
FROM tabel_a
INNER JOIN tabel_b ON tabel_a.kolom_kunci = tabel_b.kolom_kunci;
```
- **FROM tabel_a**: Menentukan tabel pertama (kiri) sebagai dasar kueri.
- **INNER JOIN tabel_b**: Menentukan tabel kedua (kanan) yang ingin digabungkan.
- **ON ...**: Kriteria syarat penyatuan data. Di bagian ini, kita biasanya mencocokkan kolom Foreign Key di tabel anak dengan kolom Primary Key di tabel induk.

### 2. Pentingnya Menuliskan Alias Tabel
Saat menggabungkan tabel, seringkali kedua tabel memiliki nama kolom yang persis sama (misalnya kedua tabel memiliki kolom bernama `id`, `created_at`, atau `nama`). Jika Anda menulis kueri tanpa awalan nama tabel, PostgreSQL akan mengeluarkan error fatal **`column reference is ambiguous`**.

Untuk mengatasinya, gunakan singkatan alias tabel di bagian `FROM` dan `INNER JOIN`:

```sql
-- Penggunaan alias tabel yang bersih dan disiplin
SELECT 
    p.nama_produk,
    k.nama_kategori
FROM produk AS p
INNER JOIN kategori AS k ON p.kategori_id = k.kategori_id;
```

## 11. Penjelasan Detail

### Bagaimana Jika Kita Melakukan JOIN Tanpa Klausa ON?
Jika Anda menuliskan perintah JOIN tetapi lupa menyertakan klausa `ON` di akhir kueri, PostgreSQL akan menolak pengeksekusian kueri tersebut secara langsung karena melanggar aturan sintaks SQL. 

Di dalam database relasional tradisional, jika kita menggabungkan tabel tanpa syarat kriteria penyaringan, sistem akan melakukan operasi matematika **Cartesian Product** (*Cross Join*). Operasi ini akan memasangkan setiap baris di Tabel A dengan **setiap** baris di Tabel B secara membabi buta. Jika Tabel A memiliki 1.000 baris dan Tabel B memiliki 1.000 baris, kueri akan menghasilkan 1.000.000 baris data sampah yang tidak berguna dan dapat membuat server database Anda macet mendadak akibat kehabisan memori. Di sinilah peran krusial klausa `ON` sebagai filter pengunci keamanan data.

## 12. Contoh SQL Dasar
Berikut adalah contoh implementasi kueri `INNER JOIN` sederhana untuk menyatukan data tabel `pelanggan` dan `pesanan` di PostgreSQL:

```sql
-- Mengambil nama pelanggan beserta tanggal transaksinya
SELECT 
    p.nama AS nama_pelanggan,
    o.invoice_no AS nomor_invoice,
    o.tanggal_pesan
FROM pelanggan AS p
INNER JOIN pesanan AS o ON p.pelanggan_id = o.pelanggan_id;
```

## 13. Contoh SQL Praktik Project
Dalam skenario perancangan sistem e-commerce, kita ingin menyajikan daftar produk lengkap dengan nama kategori produknya untuk ditampilkan di halaman katalog produk toko online:

```sql
-- Kueri backend katalog produk
SELECT 
    prod.produk_id AS id_barang,
    prod.nama_produk AS nama_barang,
    prod.harga AS harga_jual,
    cat.nama_kategori AS kategori_barang
FROM produk AS prod
INNER JOIN kategori AS cat ON prod.kategori_id = cat.kategori_id
ORDER BY cat.nama_kategori ASC, prod.nama_produk ASC; -- Sorting hasil join
```

## 14. Kesalahan Umum
- **Column Ambiguity Blunder**: Lupa menuliskan nama alias tabel di depan nama kolom pada bagian `SELECT`. Contoh menulis `SELECT nama_kategori, nama_produk, id FROM produk INNER JOIN kategori...` padahal kedua tabel memiliki kolom bernama `id`. Kueri akan langsung error.
- **Salah Menghubungkan Kolom Kunci di ON**: Salah mengetik kolom kunci pencocokan, misalnya menulis `ON prod.kategori_id = cat.kategori_id` tetapi malah menulis `ON prod.produk_id = cat.kategori_id`. Kueri akan sukses dijalankan tanpa error, namun data hasil keluarannya akan acak-acakan rusak dan tidak masuk akal karena mencocokkan ID Barang dengan ID Kategori.

## 15. Catatan Interview
- **Pertanyaan**: "Apakah hasil keluaran `INNER JOIN` akan berbeda jika kita menukar posisi tabel di FROM dengan tabel di INNER JOIN? (Misal Tabel A JOIN Tabel B vs Tabel B JOIN Tabel A)?"
- **Jawaban**: "Secara logika hasil data (*result set*), urutan tabel pada `INNER JOIN` bersifat komutatif (simetris). Artinya, menukar posisi tabel kiri dan kanan tidak akan mengubah baris data yang dihasilkan; baris data yang keluar akan tetap sama persis karena ia mencari irisan kecocokan di kedua belah tabel. Namun, ia hanya akan mengubah urutan kolom bawaan jika kita menggunakan sintaks bintang `SELECT *`."

## 16. Catatan Diskusi User
- **Teaser untuk Materi Berikutnya**:
  Bagaimana jika kita tetap ingin menampilkan **seluruh** daftar pelanggan di sistem, termasuk pelanggan baru yang belum pernah melakukan transaksi belanja sama sekali? 
  - Jika kita menggunakan `INNER JOIN`, pelanggan baru tersebut akan disembunyikan.
  - Untuk memecahkan kasus ini, kita membutuhkan jenis JOIN lain bernama **Outer Join** (yaitu `LEFT JOIN` atau `RIGHT JOIN`) yang akan dibahas pada bab selanjutnya.

## 17. Latihan Kecil
1. Tuliskan kueri SQL `INNER JOIN` untuk menggabungkan tabel `karyawan` (alias `k`) dengan tabel `departemen` (alias `d`) menggunakan kolom kunci `departemen_id`! Tampilkan kolom `nama_karyawan` dan `nama_departemen`!
2. Jika tabel `siswa` memiliki 5 baris data dan tabel `kelas` memiliki 10 baris data, dan hanya ada 3 baris data yang memiliki nilai kunci yang cocok di kedua tabel tersebut, berapakah jumlah baris data yang akan keluar jika kita menjalankan kueri `INNER JOIN`? Jelaskan alasannya!

## 18. Checklist Pemahaman
- [ ] Memahami arti dan cara kerja dari klausa `INNER JOIN`.
- [ ] Mampu menuliskan sintaks `INNER JOIN` lengkap dengan instruksi `ON` pencocokan kolom kunci.
- [ ] Mengetahui penyebab error `column reference is ambiguous` dan cara mencegahnya menggunakan alias tabel.
- [ ] Memahami alasan mengapa data yang tidak memiliki pasangan cocok otomatis disaring keluar dari hasil `INNER JOIN`.

## 19. Hubungan dengan Materi Lain

### Posisi Materi
- Rak: [02 - SQL dan Querying](../../README.md)
- Buku: [Join dan Relasi Query](../)

### Prasyarat
- [Konsep Relasi Antar Tabel](./bab-01-konsep-relasi-antar-tabel.md)

### Materi Sebelumnya
- [Konsep Relasi Antar Tabel](./bab-01-konsep-relasi-antar-tabel.md)

### Materi Berikutnya
- [LEFT JOIN dan RIGHT JOIN](./bab-03-left-dan-right-join.md)

### Materi Terkait
- [Alias Kolom dan Tabel](../buku-01-dasar-sql-dan-query-select/bab-03-alias-kolom-dan-tabel.md) (Menjadi pilar penulisan alias tabel di JOIN)

### Istilah Terkait
- Inner Join, Intersection, ON Clause, Join Condition, Cartesian Product, Column Ambiguity.

## 20. Referensi Resmi
Jangan membuka tautan berikut pada batch ini, cukup cantumkan sebagai referensi resmi yang ditargetkan untuk verifikasi nanti:
- PostgreSQL Official Documentation — perlu diverifikasi pada batch official docs verification.
- SQL standard / relational database concept — perlu diverifikasi jika nanti masuk fase source verification.

## 21. Catatan Pribadi / Project Notes
*   *Catatan Draft*: Visualisasikan INNER JOIN dengan analogi couple dinner di bab ini. Analogi ini terbukti paling sukses merasuk ke pemikiran developer junior karena menggambarkan dengan sangat lugas mengapa data yang jomblo/tidak berpasangan disaring keluar tanpa memicu error sistem. Status verifikasi diatur ke REVIEW.
