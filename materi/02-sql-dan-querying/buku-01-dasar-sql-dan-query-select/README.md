# Buku 01: Query SELECT

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 02: SQL dan Querying](../README.md)
*   **Target Level**: Level 1 - Level 2 (Dasar)
*   **Tipe Materi**: Teoretis & Praktik Kueri

---

## 1. Tujuan Buku
Buku ini bertujuan untuk mengenalkan dasar-dasar sintaks manipulasi data (DQL) menggunakan perintah `SELECT`, mengulas dampak buruk mengambil data secara membabi buta menggunakan asterisk (*), serta mengajarkan teknik alias tabel dan kolom demi kerapian kueri database.

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu menulis kueri proyeksi data sederhana, memilih kolom data secara efisien untuk menghemat alokasi I/O jaringan, serta menggunakan alias kueri secara taktis.

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dikembangkan secara modular untuk menampung pengenalan SELECT dan alias dasar. Buku ini dapat dimekarkan di masa depan untuk menampung subquery awal atau ekspresi SELECT tingkat lanjut.

---

## 4. Daftar Bab Aktif

| No | Bab | Status | Tipe | Ringkasan Materi |
| :---: | :--- | :---: | :---: | :--- |
| 1 | [Bab 01: Struktur Perintah SELECT](./bab-01-struktur-perintah-select.md) | **DRAFT** | Praktik | Sintaks dasar SELECT, FROM, pemisahan baris dengan semicolon (;), dan tata cara penulisan case-insensitive. |
| 2 | [Bab 02: Mengambil Seluruh Kolom](./bab-02-mengambil-seluruh-kolom.md) | **DRAFT** | Praktik | Mengapa penggunaan `SELECT *` berbahaya di tingkat performa produksi, pemborosan memori cache, dan alternatif terbaiknya. |
| 3 | [Bab 03: Alias Kolom dan Tabel](./bab-03-alias-kolom-dan-tabel.md) | **DRAFT** | Praktik | Sintaks kata kunci `AS`, alias kolom untuk laporan dinamis, dan alias tabel untuk mempersingkat referensi. |

---

## 5. Urutan Belajar
Pembaca wajib menempuh materi berurutan mulai dari Bab 01 hingga Bab 03 untuk menjamin kurikulum dasar querying yang solid.

---

## 6. Koneksi ke Project Nyata
Keterampilan menulis proyeksi kolom yang bersih sangat penting dalam memperkecil payload JSON yang dikirimkan oleh server backend ke sisi client (frontend).

---

## 7. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi langsung dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
