# 02 - BAB 02 KAPAN HARUS DENORMALISASI

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
- Memahami konsep denormalisasi sebagai strategi optimasi performa tingkat lanjut.
- Mengidentifikasi skenario bisnis yang benar-benar membutuhkan denormalisasi.
- Mengevaluasi risiko duplikasi dan anomali data akibat struktur terdenormalisasi.
- Merancang mekanisme sinkronisasi data terdenormalisasi di PostgreSQL.

## 2. Prasyarat
- Memahami konsep normalisasi database 1NF, 2NF, dan 3NF (baca: [Normal Form 1-2-3](./bab-01-normal-form-1-2-3.md)).
- Memahami kueri agregasi dan join data dari bab-bab sebelumnya.

## 3. Ringkasan Cepat
Denormalisasi adalah proses sengaja memasukkan duplikasi data (*redundancy*) atau menggabungkan tabel-tabel yang sebelumnya terpisah pada database yang sudah ternormalisasi. Tujuannya murni untuk meningkatkan performa kueri pembacaan data (*read performance*) dengan cara mengurangi jumlah operasi `JOIN` dan kalkulasi agregasi yang berat. Denormalisasi **bukanlah** pengganti normalisasi; normalisasi 3NF tetaplah desain awal wajib sebelum Anda memutuskan untuk melakukan denormalisasi secara terukur.

## 4. Istilah Penting di Bab Ini

| Istilah | Arti Singkat |
|---|---|
| Denormalisasi | Proses sengaja menduplikasi data atau merangkum tabel demi meningkatkan performa baca data. |
| Redundansi | Kejadian di mana data yang sama disimpan secara duplikat di beberapa tempat dalam database. |
| Anomali Pembaruan (Update Anomaly) | Risiko di mana data duplikat tidak terbarui secara seragam, sehingga menyebabkan inkonsistensi data. |
| Data Teragregasi Awal (Pre-calculated Data) | Data ringkasan (seperti total SUM atau COUNT) yang dihitung terlebih dahulu lalu disimpan di kolom permanen. |

## 5. Analogi Sehari-hari
Bayangkan Anda adalah seorang **Koki Restoran Bintang Lima**:

- **Desain Ternormalisasi (3NF)**:
  Setiap bahan makanan disimpan secara rapi, steril, dan terpisah di kulkas khusus (bawang di kotak bawang, daging di lemari daging, garam di stoples bumbu). Ketika ada pesanan sup, asisten koki harus berjalan membuka kulkas sayur, kulkas daging, dan stoples bumbu satu per satu untuk meracik sup (seperti melakukan `JOIN` tabel). Cara ini sangat bersih, tidak ada bawang busuk yang menulari daging, dan bahan tidak terbuang sia-sia (*zero redundancy*).
- **Desain Terdenormalisasi**:
  Di jam sibuk makan malam (*high traffic*), cara di atas terlalu lambat. Koki memutuskan untuk membuat **Bumbu Jadi Sup Instan** di pagi hari. Sayur, kaldu, dan bumbu halus dicampur terlebih dahulu di satu panci besar. Ketika ada pelanggan memesan sup, koki tinggal menuang kaldu jadi tersebut ke mangkuk. Proses penyajian menjadi super cepat (*fast read*).

## 6. Batas Analogi
Di dapur, bumbu sup instan yang sudah dibuat di pagi hari memiliki masa kedaluwarsa cepat. Selain itu, jika ada pelanggan meminta sup tanpa bawang, koki tidak bisa memisahkan bawang yang sudah terlanjur dicampur.

Di PostgreSQL, denormalisasi menghemat waktu CPU tetapi menuntut konsumsi ruang penyimpanan (*disk space*) tambahan dan mengharuskan developer menulis kode ekstra (seperti database trigger) agar bumbu instan tersebut selalu sinkron ketika ada bahan segar di kulkas yang berubah harganya.

## 7. Ilustrasi Konsep

Status Ilustrasi: DRAFT

```mermaid
graph TD
    subgraph Struktur Ternormalisasi (3NF)
        O[Tabel Pesanan: id, tgl] --- OD1[Tabel Detail: id, pesanan_id, produk_id, qty, harga]
        OD1 --> P[Tabel Produk: id, nama, kategori_id]
        P --> C[Tabel Kategori: id, nama]
    end
    
    subgraph Struktur Terdenormalisasi (Reporting-friendly)
        O_D[Tabel Pesanan: id, tgl, total_harga, nama_pelanggan, jumlah_item]
    end
```

## 8. Penjelasan Ilustrasi
Bagan di atas menggambarkan perbedaan arsitektur penyimpanan data. Pada struktur ternormalisasi (3NF), data transaksi dipecah menjadi entitas pesanan, detail pesanan, produk, dan kategori untuk meminimalkan redundansi. Namun, untuk menampilkan nilai total belanja pelanggan, sistem harus melakukan join di empat tabel tersebut. 

Pada struktur terdenormalisasi, data yang sering dibaca bersama didekatkan atau dirangkum menjadi satu baris datar di satu tabel. Operasi pembacaan data menjadi instan karena tidak memerlukan join.

## 9. Batas Ilustrasi
Visualisasi ini menyederhanakan proses denormalisasi. Di dunia nyata, kita jarang melakukan denormalisasi ekstrem hingga menyatukan seluruh tabel menjadi satu tabel tunggal raksasa. Biasanya kita hanya menerapkan teknik denormalisasi parsial (*selective denormalization*), yaitu menyimpan kolom agregat tertentu saja di tabel master.

## 10. Konsep Inti

### 1. Normalisasi Tetap Default Awal
Selalu mulai desain database Anda dengan normalisasi hingga bentuk 3NF. Jangan pernah melompati normalisasi hanya karena malas menulis query `JOIN`. Denormalisasi tanpa pondasi normalisasi yang kuat akan menciptakan struktur database yang kacau balau (*spaghetti database*).

### 2. Kapan Boleh Denormalisasi?
- **Rasio Read vs Write Sangat Tinggi**: Sistem di mana data sangat sering dibaca tetapi sangat jarang diperbarui (misalnya katalog produk e-commerce atau data statistik tahunan).
- **Kueri Agregasi Terlalu Sering Berulang**: Halaman beranda e-commerce perlu menampilkan jumlah produk di tiap kategori. Daripada menjalankan `COUNT(*)` produk dengan join tabel kategori jutaan kali per detik, lebih baik menyimpan kolom `total_produk` di tabel kategori.
- **Menjaga Data Historis**: Ketika pelanggan membeli produk seharga Rp10.000, kita **wajib** mencatat harga Rp10.000 di tabel detail pesanan, meskipun besok harga produk tersebut di tabel master naik menjadi Rp12.000. Ini adalah denormalisasi demi menjaga kebenaran data historis transaksi.

## 11. Penjelasan Detail

### 1. Risiko Utama: Inkonsistensi Data (Anomali Pembaruan)
Ketika data diduplikasi, ada risiko data tersebut berubah di satu tempat tetapi tidak di tempat lain. Misalnya, jika nama kategori diubah di tabel `kategori`, namun nama kategori yang dicache di tabel `produk` lupa diperbarui, sistem akan menampilkan data yang membingungkan bagi pengguna.

### 2. Mekanisme Sinkronisasi di PostgreSQL
Untuk menjaga agar data terdenormalisasi tetap akurat, PostgreSQL menyediakan beberapa opsi:
1. **Trigger Database**: Menulis trigger di PostgreSQL yang otomatis mengupdate kolom rangkuman setiap kali ada perubahan data di tabel detail. (Opsi terkuat karena menjamin integritas di tingkat database).
2. **Application Logic**: Sinkronisasi dilakukan oleh kode backend aplikasi di dalam satu blok transaksi ACID (`BEGIN ... COMMIT`).
3. **Background Job**: Sinkronisasi dilakukan berkala setiap jam atau malam hari menggunakan scheduler. Cocok untuk data laporan yang toleran terhadap keterlambatan data (*data latency*).
4. **Teaser: Materialized View**: PostgreSQL menyediakan fitur `Materialized View` yang menyimpan hasil kueri kompleks secara fisik di disk dan dapat disegarkan berkala dengan perintah `REFRESH MATERIALIZED VIEW`. *(Fitur ini akan dibahas mendalam pada bab-bab optimasi lanjut berikutnya)*.

## 12. Contoh SQL Dasar
Perhatikan perbandingan kueri penarikan total belanja berikut:

```sql
-- 1. Pendekatan Ternormalisasi (Harus hitung SUM dengan JOIN setiap kali dibaca)
SELECT p.pesanan_id, SUM(dp.qty * dp.harga) AS total_belanja
FROM pesanan p
INNER JOIN detail_pesanan dp ON p.pesanan_id = dp.pesanan_id
GROUP BY p.pesanan_id;

-- 2. Pendekatan Terdenormalisasi (Kolom total_belanja sudah dihitung dan disimpan)
SELECT pesanan_id, total_belanja 
FROM pesanan; 
-- Sangat cepat, tanpa JOIN, tanpa fungsi agregasi SUM!
```

## 13. Contoh SQL Praktik Project
Dalam proyek sistem inventori toko, kita menerapkan trigger otomatis di PostgreSQL untuk memperbarui jumlah produk (`total_produk`) di tabel `kategori` setiap kali ada produk baru yang dimasukkan atau dihapus:

```sql
-- Skema Tabel
CREATE TABLE kategori (
    kategori_id SERIAL PRIMARY KEY,
    nama_kategori VARCHAR(100) NOT NULL,
    total_produk INT DEFAULT 0 -- Kolom Denormalisasi
);

CREATE TABLE produk (
    produk_id SERIAL PRIMARY KEY,
    nama_produk VARCHAR(100) NOT NULL,
    kategori_id INT REFERENCES kategori(kategori_id)
);

-- Membuat fungsi trigger untuk sinkronisasi otomatis
CREATE OR REPLACE FUNCTION sinkronisasi_jumlah_produk()
RETURNS TRIGGER AS $$
BEGIN
    IF (TG_OP = 'INSERT') THEN
        UPDATE kategori 
        SET total_produk = total_produk + 1 
        WHERE kategori_id = NEW.kategori_id;
    ELSIF (TG_OP = 'DELETE') THEN
        UPDATE kategori 
        SET total_produk = total_produk - 1 
        WHERE kategori_id = OLD.kategori_id;
    END IF;
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;

-- Menempelkan trigger ke tabel produk
CREATE TRIGGER trg_produk_counter
AFTER INSERT OR DELETE ON produk
FOR EACH ROW
EXECUTE FUNCTION sinkronisasi_jumlah_produk();
```

## 14. Kesalahan Umum
- **Denormalisasi Prematur (Prematur Denormalization)**: Melakukan denormalisasi di awal desain database sebelum sistem berjalan dan sebelum ada bukti nyata masalah performa. Hal ini hanya menambah kompleksitas penulisan kode backend secara sia-sia.
- **Lupa Membuat Mekanisme Update**: Menyimpan data rangkuman tetapi tidak membuat trigger atau scheduler untuk mengupdatenya, sehingga data laporan menjadi salah.
- **Menerapkan pada Sistem Write-Heavy**: Menerapkan denormalisasi pada sistem yang sangat sering melakukan update dan insert data. Hal ini justru memperlambat performa secara keseluruhan karena server terbebani oleh operasi penulisan sinkronisasi data yang tiada henti.

## 15. Catatan Interview
- **Pertanyaan**: "Kapan Anda memutuskan untuk melakukan denormalisasi pada skema database yang sudah rapi ternormalisasi?"
- **Jawaban**: "Saya memutuskan melakukan denormalisasi setelah melakukan profil performa kueri dan menemukan adanya hambatan kinerja akibat operasi `JOIN` tabel-tabel besar atau kueri agregasi yang dijalankan terlalu sering pada sistem yang dominan operasi baca (*read-heavy*). Saya juga menggunakannya untuk menjaga integritas data historis transaksi (seperti harga barang pada saat dibeli). Sebelum menerapkan denormalisasi, saya harus memastikan telah merancang mekanisme sinkronisasi data yang andal (seperti trigger database atau application service transaction) untuk mencegah terjadinya anomali data."

## 16. Catatan Diskusi User
- **Pertanyaan Umum**: "Apakah indexing tidak cukup untuk mengatasi lambatnya JOIN sehingga kita terpaksa denormalisasi?"
- **Diskusikan**: Indeks database (*B-Tree index*) adalah pertahanan pertama yang wajib dibuat untuk mengoptimalkan `JOIN` dan filter kueri. Namun, pada skala data ratusan juta baris, operasi join indeks pun tetap membutuhkan waktu CPU dan I/O disk yang signifikan. Ketika optimasi indeks telah mencapai batas maksimalnya dan performa tetap tidak memenuhi service level agreement (SLA) aplikasi, barulah strategi denormalisasi menjadi pilihan logis berikutnya.

## 17. Latihan Kecil
1. Mengapa harga satuan produk (`unit_price`) harus dicatat ulang di dalam tabel `order_details`, padahal kolom tersebut sudah ada di tabel master `products`? Jelaskan dari sudut pandang integritas data bisnis!
2. Tuliskan skenario anomali pembaruan yang dapat terjadi jika kita menyimpan nama kategori produk secara langsung di dalam kolom tabel `produk` tanpa menggunakan tabel referensi `kategori`!

## 18. Checklist Pemahaman
- [ ] Memahami definisi denormalisasi dan tujuannya meningkatkan performa kueri baca.
- [ ] Memahami bahwa normalisasi tetap menjadi fondasi awal yang wajib diselesaikan terlebih dahulu.
- [ ] Mampu mengenali skenario bisnis yang sah untuk menerapkan denormalisasi (seperti data historis).
- [ ] Mengetahui risiko inkonsistensi data serta berbagai metode sinkronisasinya di PostgreSQL.

## 19. Hubungan dengan Materi Lain

### Posisi Materi
- Rak: [03 - Desain Data dan Schema](../../README.md)
- Buku: [Normalisasi dan Denormalisasi](../)

### Prasyarat
- [Normal Form 1-2-3](./bab-01-normal-form-1-2-3.md)

### Materi Sebelumnya
- [Normal Form 1-2-3](./bab-01-normal-form-1-2-3.md)

### Materi Berikutnya
- [Dampak Desain pada Performa](./bab-03-dampak-desain-pada-performa.md)

### Materi Terkait
- [Menyaring Grup dengan HAVING](../../02-sql-dan-querying/buku-04-agregasi-grouping-dan-having/bab-03-menyaring-grup-dengan-having.md) (Menunjukkan mahalnya kalkulasi agregasi berulang)

### Istilah Terkait
- Denormalization, Redundancy, Update Anomaly, Pre-calculated Values, Database Triggers, Materialized Views, Historical Data Integrity.

## 20. Referensi Resmi
Jangan membuka tautan berikut pada batch ini, cukup cantumkan sebagai referensi resmi yang ditargetkan untuk verifikasi nanti:
- PostgreSQL Official Documentation — perlu diverifikasi pada batch official docs verification.
- SQL standard / relational database concept — perlu diverifikasi jika nanti masuk fase source verification.

## 21. Catatan Pribadi / Project Notes
*   *Catatan Draft*: Penting untuk menanamkan pemahaman kuat kepada pembaca bahwa denormalisasi bukan solusi kemalasan join. Banyak junior developer merancang tabel 'flat' sejak awal tanpa normalisasi, yang mana itu bukanlah denormalisasi melainkan buruknya kompetensi desain database. Status verifikasi diatur ke REVIEW.
