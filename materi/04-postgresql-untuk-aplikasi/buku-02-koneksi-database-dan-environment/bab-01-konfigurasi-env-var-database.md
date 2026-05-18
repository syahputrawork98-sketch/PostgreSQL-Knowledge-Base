# 01 - BAB 01 KONFIGURASI ENV VAR DATABASE

Status: DRAFT
Rak: PostgreSQL untuk Aplikasi
Buku: Koneksi Database dan Environment
Level: Level 3 - Level 4
Tipe Materi: Tutorial
Target: Backend Developer yang menghubungkan aplikasi ke PostgreSQL.
Estimasi Baca: 10 Menit
Terakhir Diperiksa: 2026-05-18

Sumber Utama: PostgreSQL Official Documentation
Versi Referensi: PostgreSQL docs/current
Status Verifikasi Sumber: REVIEW

---

## 1. Tujuan Belajar
Di akhir bab ini, pembaca diharapkan mampu:
- Menjelaskan pentingnya keamanan memisahkan kredensial database dari kode sumber (*source code*).
- Mengonfigurasi parameter koneksi PostgreSQL menggunakan Environment Variables (env vars).
- Membedakan format parameter individual (`DB_HOST`, `DB_USER`, dll.) dengan format Connection URI (`DATABASE_URL`).
- Mengatur konfigurasi SSL Mode yang aman untuk lingkungan pengembangan (*development*) dan produksi (*production*).

## 2. Prasyarat
- Memahami konsep dasar client-server di database relasional.
- Memahami dampak desain schema (baca: [Dampak Desain pada Performa](../../../03-desain-data-dan-schema/buku-03-normalisasi-dan-denormalisasi/bab-03-dampak-desain-pada-performa.md)).

## 3. Ringkasan Cepat
Koneksi antara kode aplikasi backend (seperti Node.js, Python, Go) dengan PostgreSQL membutuhkan parameter keamanan sensitif seperti host, port, username, password, dan nama database. Praktik terbaik standar industri adalah menyimpan parameter-parameter ini di dalam *Environment Variables* di tingkat Sistem Operasi atau Container, bukan ditulis langsung (*hardcoded*) di dalam kode aplikasi. Hal ini menjaga keamanan sistem, mencegah kebocoran kredensial di repositori Git, dan mempermudah pemindahan aplikasi antar lingkungan server.

## 4. Istilah Penting di Bab Ini

| Istilah | Arti Singkat |
|---|---|
| Environment Variable | Variabel dinamis bernilai teks yang dikelola oleh Sistem Operasi atau runtime lingkungan proses aplikasi. |
| Hardcode | Praktik menulis nilai data sensitif (seperti password) secara langsung di dalam file kode sumber aplikasi. |
| Connection URI / String | Format satu baris teks alamat terpadu untuk menghubungkan aplikasi ke database. |
| SSL Mode (Secure Sockets Layer) | Parameter untuk mengatur apakah koneksi data ke PostgreSQL wajib dienkripsi atau tidak. |
| .env File | File teks lokal berisi pasangan KEY=VALUE untuk mensimulasikan environment variable pada komputer lokal. |

## 5. Analogi Sehari-hari
Bayangkan Anda memiliki sebuah **Setrika Pakaian Elektrik Canggih**:

- **Pendekatan Hardcode (Sangat Buruk)**:
  Anda menyolder langsung kabel setrika tersebut ke dalam lubang stopkontak listrik di kamar tidur Anda. Setrika tersebut bekerja dengan baik. Namun, ketika Anda harus menyetrika pakaian di ruang tamu, atau saat Anda bepergian ke luar kota, setrika tersebut tidak bisa digunakan sama sekali karena kabelnya terpaku mati di satu tempat. Jika stopkontak tersebut rusak, Anda terpaksa merusak sirkuit setrika Anda.
- **Pendekatan Environment Variable (Sangat Bagus)**:
  Setrika Anda dirancang memiliki kepala colokan universal. Stopkontak listrik di dinding kamar (Environment) menyediakan daya listrik yang siap dicolok kapan saja. Ketika Anda pindah kamar atau bepergian ke hotel, Anda cukup mencolokkan kepala setrika ke stopkontak yang disediakan di tempat baru tersebut tanpa perlu mengubah sirkuit internal setrika Anda sedikit pun. Colokan universal ini adalah representasi dari Environment Variable.

## 6. Batas Analogi
Di dunia fisik, colokan setrika hanya menghantarkan daya listrik statis tanpa data sensitif. 

Di dunia software, koneksi database menghantarkan data bisnis yang sangat sensitif (password root, data pelanggan). Oleh karena itu colokan adaptor database kita (Environment Variable) wajib diamankan dengan protokol enkripsi SSL tambahan agar aliran data tidak bisa disadap di tengah jalan oleh pihak luar (*Man-in-the-Middle Attack*).

## 7. Ilustrasi Konsep

Status Ilustrasi: DRAFT

```mermaid
graph TD
    subgraph Sistem Operasi / Container Environment
        ENV_DB_HOST["DB_HOST = localhost"]
        ENV_DB_USER["DB_USER = postgres_dev"]
        ENV_DB_PASS["DB_PASSWORD = rahasia_dummy"]
    end
    
    subgraph Aplikasi Backend
        CODE["Membaca process.env / os.environ"] --> CONN_POOL["Membentuk Connection Pool"]
        CONN_POOL --> PG["Koneksi Aman ke PostgreSQL Server"]
    end
    
    ENV_DB_HOST & ENV_DB_USER & ENV_DB_PASS --> CODE
```

## 8. Penjelasan Ilustrasi
Bagan di atas menggambarkan alur kerja pemuatan koneksi database yang aman. Kredensial database disimpan di luar kode aplikasi, yaitu di lingkungan sistem operasi / container runtime. Ketika aplikasi backend dinyalakan, kode program membaca nilai-nilai tersebut dari memori OS (`process.env` di Node.js atau `os.environ` di Python). Nilai tersebut kemudian diumpankan secara dinamis ke pustaka driver PostgreSQL untuk membentuk koneksi aman ke server database. Repositori Git hanya menyimpan kode pembacanya, bebas dari rahasia password.

## 9. Batas Ilustrasi
Ilustrasi di atas mengasumsikan file konfigurasi dibaca saat inisialisasi awal aplikasi startup. Pada arsitektur modern berskala besar, sistem dapat membaca environment variables secara dinamis dari server konfigurasi terpusat (*Dynamic Configuration Provider*) tanpa harus me-restart aplikasi.

## 10. Konsep Inti

### 1. Bahaya Fatal Hardcode Kredensial
Menulis password database langsung di dalam kode aplikasi adalah kesalahan fatal developer pemula. Bahayanya meliputi:
- **Kebocoran Git**: Jika repositori kode diunggah ke GitHub/GitLab (meskipun privat), kredensial Anda terekspos ke semua orang yang memiliki akses baca ke repositori tersebut. Jika bocor ke publik, bot peretas akan langsung memindai repositori Anda dan menyandera database Anda (*Ransomware*).
- **Ketidakfleksibelan**: Server lokal (*development*) menggunakan password sederhana, sedangkan server produksi (*production*) menggunakan password super rumit. Jika di-hardcode, Anda harus mengubah kode sumber setiap kali akan melakukan rilis aplikasi.

### 2. Parameter Utama Koneksi PostgreSQL
Ada 6 parameter dasar yang wajib dikonfigurasi melalui environment variable:
- `DB_HOST`: Alamat IP atau domain server PostgreSQL (contoh lokal: `127.0.0.1` atau `localhost`).
- `DB_PORT`: Port tempat PostgreSQL berjalan (default: `5432`).
- `DB_NAME`: Nama database spesifik yang ingin diakses aplikasi.
- `DB_USER`: Username pengguna database (contoh lokal: `postgres`).
- `DB_PASSWORD`: Password pengguna database.
- `DB_SSL_MODE`: Pengaturan enkripsi jalur koneksi.

### 3. Dua Format Penulisan di Aplikasi

#### A. Format Parameter Individual
Paling umum digunakan karena mudah dipetakan secara terpisah di file konfigurasi:
```ini
DB_HOST=127.0.0.1
DB_PORT=5432
DB_USER=postgres_dev
DB_PASSWORD=rahasia_lokal
DB_NAME=toko_db
DB_SSL_MODE=prefer
```

#### B. Format Connection URI (DATABASE_URL)
Format teks tunggal terpadu yang sangat disukai oleh platform modern seperti Heroku, Render, atau Kubernetes:
`postgresql://[USER]:[PASSWORD]@[HOST]:[PORT]/[DB_NAME]?sslmode=[SSL_MODE]`

Contoh:
`postgresql://postgres_dev:rahasia_lokal@127.0.0.1:5432/toko_db?sslmode=prefer`

---

## 11. Penjelasan Detail

### Perbedaan Konseptual SSL Mode: Local vs Production
Parameter `sslmode` mengontrol bagaimana aplikasi Anda bernegosiasi enkripsi dengan server PostgreSQL:

1. **Local Development (`sslmode=disable` atau `sslmode=prefer`)**:
   - Di komputer lokal, sertifikat SSL biasanya tidak dikonfigurasi demi kemudahan instalasi.
   - `disable` mematikan enkripsi sepenuhnya (sangat cepat untuk testing lokal).
   - `prefer` mencoba koneksi SSL terlebih dahulu; jika server tidak mendukung, ia akan turun menggunakan koneksi biasa tanpa error.
2. **Production (`sslmode=require` atau `sslmode=verify-full`)**:
   - Di server produksi cloud, data Anda mengalir melewati internet publik. Enkripsi adalah **kewajiban mutlak**.
   - `require` menjamin data yang dikirim selalu dienkripsi.
   - `verify-full` menjamin data dienkripsi DAN memverifikasi bahwa sertifikat SSL server database tersebut valid dan terdaftar resmi, mencegah pembajakan DNS.

---

## 12. Contoh SQL Dasar
Meskipun environment variable adalah konsep sistem operasi, PostgreSQL sendiri memiliki perkakas internal (`psql`) yang membaca environment variable standar untuk melakukan koneksi tanpa input manual:

```bash
# Contoh di terminal OS Anda (Linux/macOS/Windows PowerShell)
export PGHOST="127.0.0.1"
export PGPORT="5432"
export PGUSER="postgres_dev"
export PGPASSWORD="rahasia_lokal"
export PGDATABASE="toko_db"

# Ketika Anda mengetik 'psql', psql otomatis masuk ke database di atas tanpa bertanya password!
psql
```

---

## 13. Contoh SQL Praktik Project
Berikut adalah bentuk template panduan aman **`.env.example`** yang wajib dicommit ke repositori Git sebagai dokumentasi bagi tim developer lainnya.

> [!WARNING]
> Jangan pernah mengommit file `.env` asli yang berisi password nyata! Hanya commit file `.env.example` berisi nilai dummy/kosong seperti contoh di bawah ini.

```ini
# i:/Workspace/Workspace-Syahputrawork/04-Storage-Hubs/PostgreSQL-Knowledge-Base/.env.example
# ==============================================================================
# TEMPLATE KONFIGURASI DATABASE APLIKASI (DUMMY VALUES)
# Salin file ini menjadi '.env' di komputer Anda lalu isi dengan kredensial asli.
# ==============================================================================

# Pilihan 1: Menggunakan Parameter Individual
DB_HOST=localhost
DB_PORT=5432
DB_USER=your_local_username
DB_PASSWORD=your_local_password
DB_NAME=your_database_name
DB_SSL_MODE=prefer

# Pilihan 2: Menggunakan Connection URI Terpadu (Opsional di beberapa framework)
DATABASE_URL=postgresql://your_local_username:your_local_password@localhost:5432/your_database_name?sslmode=prefer
```

---

## 14. Kesalahan Umum
- **Mengommit File `.env`**: Mengabaikan penulisan file `.env` di dalam `.gitignore` sehingga file rahasia tersebut ikut terunggah ke repositori Git publik.
- **Menggunakan Connection String Prod di Local**: Secara tidak sengaja mengkoneksikan kode lokal Anda ke database produksi, yang berpotensi menghapus data asli pelanggan saat Anda melakukan uji coba kode lokal.
- **Mitos Port Default**: Berasumsi port PostgreSQL selalu 5432. Pada server hosting managed service, port database sering kali diubah secara acak demi alasan keamanan ekstra dari serangan brute force.

---

## 15. Catatan Interview
- **Pertanyaan**: "Apa keuntungan utama menggunakan `DATABASE_URL` dibandingkan parameter individual seperti `DB_HOST`, `DB_USER` secara terpisah?"
- **Jawaban**: "`DATABASE_URL` menyederhanakan konfigurasi karena seluruh alamat dikompilasi menjadi satu baris teks tunggal. Platform cloud modern seperti Heroku atau Kubernetes dapat menginjeksi kredensial database secara dinamis melalui satu variabel ini saja. Jika database cloud mengalami perpindahan alamat fisik atau perubahan password karena pemeliharaan otomatis, platform cloud cukup memperbarui nilai `DATABASE_URL` pada container tanpa harus mengubah banyak konfigurasi variabel terpisah di aplikasi kita."

---

## 16. Catatan Diskusi User
- **Pertanyaan Umum**: "Apakah aman menyimpan database password di environment variable Sistem Operasi? Bukankah admin OS tetap bisa membacanya?"
- **Diskusikan**: Ya, siapa pun yang memiliki akses root/administrator pada sistem operasi atau container tersebut dapat membaca environment variables. Namun, jika peretas sudah berhasil menembus keamanan root sistem operasi Anda, mereka sudah menguasai seluruh mesin Anda. Penggunaan env var bukan untuk melindungi data dari administrator server, melainkan untuk melindunginya dari kebocoran di repositori kode sumber (*Git leaks*).

---

## 17. Latihan Kecil
1. Mengapa menambahkan filter `?sslmode=require` sangat krusial saat menghubungkan aplikasi backend Anda ke layanan database PostgreSQL Managed Service (seperti AWS RDS atau Supabase) di internet?
2. Buatlah file konfigurasi pura-pura `.env.example` untuk sebuah proyek e-commerce lokal yang memiliki skenario database primary (tulis) dan replica (baca)!

---

## 18. Checklist Pemahaman
- [ ] Memahami bahaya fatal menyertakan password database di dalam kode sumber aplikasi.
- [ ] Mampu membedakan parameter koneksi individual dengan format Connection URI.
- [ ] Mengetahui fungsi parameter `sslmode` untuk mengontrol enkripsi data.
- [ ] Mampu merancang file `.env.example` yang aman dan informatif untuk tim developer.

---

## 19. Hubungan dengan Materi Lain

### Posisi Materi
- Rak: [04 - PostgreSQL untuk Aplikasi](../../README.md)
- Buku: [Koneksi Database dan Environment](../)

### Prasyarat
- [Dampak Desain pada Performa](../../../03-desain-data-dan-schema/buku-03-normalisasi-dan-denormalisasi/bab-03-dampak-desain-pada-performa.md)

### Materi Sebelumnya
- [Dampak Desain pada Performa](../../../03-desain-data-dan-schema/buku-03-normalisasi-dan-denormalisasi/bab-03-dampak-desain-pada-performa.md)

### Materi Berikutnya
- [Manajemen Secret Database](./bab-02-manajemen-secret-database.md)

### Materi Terkait
- [Kapan Harus Denormalisasi](../../../03-desain-data-dan-schema/buku-03-normalisasi-dan-denormalisasi/bab-02-kapan-harus-denormalisasi.md) (Mengetahui kebutuhan performa skema sebelum dihubungkan ke aplikasi)

### Istilah Terkait
- Connection String, Environment Variables, Connection URI, Dotenv, Gitignore, SSL Encryption, Verify Full, Port Mapping.

## 20. Referensi Resmi
Jangan membuka tautan berikut pada batch ini, cukup cantumkan sebagai referensi resmi yang ditargetkan untuk verifikasi nanti:
- PostgreSQL Official Documentation — perlu diverifikasi pada batch official docs verification.
- Backend environment configuration references — perlu diverifikasi jika nanti masuk fase source verification.

## 21. Catatan Pribadi / Project Notes
*   *Catatan Draft*: Sangat penting bagi developer untuk membiasakan diri menggunakan `.env.example` sejak hari pertama proyek dimulai agar tim kolaborasi tidak bingung mencari tahu variabel apa saja yang dibutuhkan sistem untuk bisa menyala. Status verifikasi diatur ke REVIEW.
