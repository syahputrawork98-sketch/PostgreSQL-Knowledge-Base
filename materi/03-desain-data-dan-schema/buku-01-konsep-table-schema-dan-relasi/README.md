# Buku 01: Konsep Table, Schema, dan Relasi

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 03: Desain Data dan Schema](../README.md)
*   **Target Level**: Level 2 - Level 3 (Dasar Desain)
*   **Tipe Materi**: Praktik Desain & DDL

---

## 1. Tujuan Buku
Buku ini bertujuan untuk memperkenalkan cara kerja pembuatan namespace skema (`CREATE SCHEMA`) di PostgreSQL untuk membagi domain data, memandu sintaks pembuatan tabel fisik (`CREATE TABLE`), memilih tipe data kolom secara optimal untuk menghemat pemakaian storage, serta merancang hubungan relasi 1-to-1 dan 1-to-many secara fisik.

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu merancang namespace skema yang bersih, menulis sintaks pembuatan tabel relasional secara mandiri, serta memahami kapan harus memisahkan entitas data ke dalam tabel baru.

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dirancang secara modular dan tidak dibatasi secara kaku. Rencana ekspansi buku ini di masa depan mencakup tipe data tingkat lanjut (seperti Array, Range, Enum, dan UUID) serta penataan layout baris PostgreSQL 8KB.

---

## 4. Daftar Bab Aktif

| No | Bab | Status | Tipe | Ringkasan Materi |
| :---: | :--- | :---: | :---: | :--- |
| 1 | [Bab 01: Mengenal Schema PostgreSQL](./bab-01-mengenal-schema-postgresql.md) | **DRAFT** | Praktik | Konsep namespace, kueri pembuatan skema, default skema `public`, kegunaan parameter `search_path`, dan pemisahan hak akses logis skema. |
| 2 | [Bab 02: Pembuatan Table dan Data Type](./bab-02-pembuatan-table-dan-data-type.md) | **DRAFT** | Praktik | Sintaks `CREATE TABLE`, pemilihan tipe data integer vs float vs varchar vs text vs timestamp, serta dampaknya terhadap penyimpanan data fisik. |
| 3 | [Bab 03: Relasi One-to-One & One-to-Many](./bab-03-relasi-one-to-one-dan-one-to-many.md) | **DRAFT** | Praktik | Konsep hubungan data, merancang relasi satu-ke-satu (1-to-1) dan satu-ke-banyak (1-to-many) fisik menggunakan FK dan UNIQUE index. |

---

## 5. Urutan Belajar
Pembaca wajib menempuh materi secara berurutan dari Bab 01 hingga Bab 03 untuk menjamin kurikulum dasar data modeling yang solid.

---

## 6. Koneksi ke Project Nyata
Keterampilan memilih tipe data yang optimal dan membagi namespace skema sangat penting dalam merancang database multi-tenant (SaaS) atau mengisolasi data analitik dari data operasional transaksi utama.

---

## 7. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi langsung dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
