# Buku 03: Filosofi dan Mental Model PostgreSQL

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 01: Orientasi, Sejarah, dan Fondasi PostgreSQL](../README.md)
*   **Target Level**: Level 0 - Level 1 (Dasar)
*   **Tipe Materi**: Teoretis & Filosofis

---

## 1. Tujuan Buku
Buku ini bertujuan untuk membentuk model mental (*mental model*) yang benar mengenai database relasional, mendalami pentingnya integritas data yang kokoh di sisi server database, memahami batasan fungsionalitas, serta menggunakan analogi kehidupan nyata untuk mempermudah pemahaman cara kerja internal PostgreSQL.

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu menjelaskan konsep dasar ACID transaksi, mendefinisikan mengapa integritas database adalah tanggung jawab mutlak mesin database (bukan aplikasi backend semata), serta menggunakan analogi logis untuk menjelaskan cara kerja tabel dan baris data.

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dalam buku ini dikembangkan berdasarkan kedalaman filosofi data dan tidak dibatasi secara kaku. Buku ini bebas tumbuh untuk mengakomodasi deep-dive filosofis data lainnya.

---

## 4. Daftar Bab Aktif

| No | Bab | Status | Tipe | Ringkasan Materi |
| :---: | :--- | :---: | :---: | :--- |
| 1 | [Bab 01: Filosofi Relational Database](./bab-01-filosofi-relational-database.md) | **DRAFT** | Filosofis | Memahami data terstruktur, konsep ACID, dan kenapa model relasional bertahan puluhan tahun di industri. |
| 2 | [Bab 02: PostgreSQL Sebagai Penjaga Integritas Data](./bab-02-postgresql-sebagai-penjaga-integritas-data.md) | **DRAFT** | Filosofis | Menelaah mengapa server database harus menjadi benteng terakhir validasi data guna mencegah data corrupt. |
| 3 | [Bab 03: Analogi PostgreSQL untuk Pemula](./bab-03-analogi-postgresql-untuk-pemula.md) | **DRAFT** | Analogi | Analogi lemari arsip dinamis, batasan-batasan analogi, dan pemetaan ke komponen fisik database. |

---

## 5. Urutan Belajar
Disarankan membaca secara berurutan dari Bab 01 hingga Bab 03 untuk membentuk alur pemikiran logis yang teratur mengenai pengelolaan data.

---

## 6. Koneksi ke Project Nyata
Pemahaman filosofi ini sangat berguna saat merancang kebijakan penyimpanan data aman pada aplikasi finansial, e-commerce, atau aplikasi enterprise berskala besar yang membutuhkan tingkat keandalan data 100%.

---

## 7. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi langsung dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
