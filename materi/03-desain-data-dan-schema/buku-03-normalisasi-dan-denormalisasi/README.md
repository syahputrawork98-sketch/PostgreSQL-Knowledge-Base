# Buku 03: Normalisasi dan Denormalisasi

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 03: Desain Data dan Schema](../README.md)
*   **Target Level**: Level 2 - Level 3 (Desain Data)
*   **Tipe Materi**: Teoretis & Analitis

---

## 1. Tujuan Buku
Buku ini bertujuan untuk mendalami teori standardisasi penyimpanan relasional menggunakan bentuk normal (1NF, 2NF, 3NF) untuk menghilangkan redundansi data, menganalisis pembenaran objektif untuk melakukan denormalisasi taktis pada aplikasi kueri baca tinggi (*read-heavy*), serta mengukur dampak desain database terhadap performa alokasi memori halaman cache 8KB PostgreSQL.

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu menguraikan skema tabel yang rumit ke dalam bentuk ternormalisasi yang efisien, memutuskan secara objektif kapan denormalisasi diperbolehkan, serta memahami bagaimana CPU database memproses memori halaman disk.

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dirancang secara modular dan tidak dibatasi secara kaku. Rencana ekspansi buku ini di masa depan mencakup bentuk normal lanjutan (BCNF, 4NF) serta studi kasus optimasi skema analitik.

---

## 4. Daftar Bab Aktif

| No | Bab | Status | Tipe | Ringkasan Materi |
| :---: | :--- | :---: | :---: | :--- |
| 1 | [Bab 01: Normal Form 1-2-3](./bab-01-normal-form-1-2-3.md) | **DRAFT** | Analitis | Aturan bentuk normal pertama (1NF), kedua (2NF), dan ketiga (3NF) beserta contoh perombakan tabel yang tidak efisien. |
| 2 | [Bab 02: Kapan Harus Denormalisasi](./bab-02-kapan-harus-denormalisasi.md) | **DRAFT** | Analitis | Alasan taktis melakukan redundansi data terkontrol, penanganan kolom agregat statis, dan kompromi performa baca vs tulis. |
| 3 | [Bab 03: Dampak Desain pada Performa](./bab-03-dampak-desain-pada-performa.md) | **DRAFT** | Analitis | Cara kerja page storage 8KB PostgreSQL, pengaruh lebar baris data terhadap I/O disk, dan perancangan skema optimal untuk pemanfaatan cache memori. |

---

## 5. Urutan Belajar
Pembaca direkomendasikan menyelesaikan Bab 01 untuk menguasai normalisasi, dilanjutkan ke penyeimbangan performa di Bab 02, dan ditutup dengan pemahaman hardware database di Bab 03.

---

## 6. Koneksi ke Project Nyata
Keseimbangan normalisasi vs denormalisasi sangat menentukan kecepatan respons API backend saat memuat halaman beranda dashboard (laporan agregat) atau detail katalog e-commerce berskala jutaan baris data.

---

## 7. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi langsung dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
