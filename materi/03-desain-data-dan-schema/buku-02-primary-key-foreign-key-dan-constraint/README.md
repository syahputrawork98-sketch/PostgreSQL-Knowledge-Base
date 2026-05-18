# Buku 02: Primary Key, Foreign Key, dan Constraint

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 03: Desain Data dan Schema](../README.md)
*   **Target Level**: Level 2 - Level 3 (Desain Data)
*   **Tipe Materi**: Praktik Desain & DDL

---

## 1. Tujuan Buku
Buku ini bertujuan untuk mendalami pentingnya penguncian keunikan data menggunakan `Primary Key`, mengunci hubungan relasi dan integritas referensial data antar tabel menggunakan `Foreign Key`, serta merancang batasan bisnis di tingkat server database menggunakan `CHECK` dan `UNIQUE` constraints.

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu menjamin integritas data secara mutlak di tingkat database, merancang aturan referensi aman (`ON DELETE CASCADE` / `ON DELETE RESTRICT`), serta menghindari inkonsistensi nilai kolom menggunakan validasi CHECK constraint yang ketat.

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dirancang secara modular dan tidak dibatasi secara kaku. Rencana ekspansi buku ini di masa depan mencakup tipe constraint tingkat lanjut seperti exclusion constraints (`EXCLUDE USING gist`) dan deferrable constraints (`DEFERRABLE INITIALLY DEFERRED`).

---

## 4. Daftar Bab Aktif

| No | Bab | Status | Tipe | Ringkasan Materi |
| :---: | :--- | :---: | :---: | :--- |
| 1 | [Bab 01: Pentingnya Primary Key](./bab-01-pentingnya-primary-key.md) | **DRAFT** | Praktik | Fungsi PK sebagai pengenal unik, perbedaan natural key vs surrogate key, dan sintaks pembuatan PK di PostgreSQL. |
| 2 | [Bab 02: Foreign Key & Referential Integrity](./bab-02-foreign-key-dan-referential-integrity.md) | **DRAFT** | Praktik | Sintaks pembuatan FK, jaminan referensial data, serta penanganan efek aksi cascade (`ON DELETE CASCADE` / `SET NULL` / `RESTRICT`). |
| 3 | [Bab 03: Check & Unique Constraint](./bab-03-check-dan-unique-constraint.md) | **DRAFT** | Praktik | Sintaks kueri pembuatan batasan nilai CHECK, kueri UNIQUE constraint, dan penjaminan kualitas data operasional database. |

---

## 5. Urutan Belajar
Pembaca direkomendasikan menyelesaikan Bab 01 untuk memahami keunikan baris, dilanjutkan ke Bab 02 untuk mengikat relasi antar tabel, dan ditutup dengan teknik filter constraint khusus di Bab 03.

---

## 6. Koneksi ke Project Nyata
Jaminan integritas di tingkat database merupakan satu-satunya cara mengamankan data transaksi dari bug aplikasi backend. Sebagai contoh, CHECK constraint menjamin saldo user tidak boleh minus (`CHECK (saldo >= 0)`), bahkan jika backend mengalami kegagalan logika.

---

## 7. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi langsung dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
