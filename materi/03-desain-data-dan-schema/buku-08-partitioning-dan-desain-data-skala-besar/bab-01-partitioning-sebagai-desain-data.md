# Bab 01: Partitioning Sebagai Desain Data

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 2 - Level 3 (Desain Data & Relasional)
*   **Buku**: [Buku 08: Partitioning dan Desain Data Skala Besar](./README.md)

---

## 1. Ringkasan Bab
Mengenalkan konsep deklaratif Table Partitioning di PostgreSQL sebagai arsitektur pembagian tabel besar menjadi tabel anak yang lebih kecil secara fisik namun transparan secara logis.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami kapan sebuah tabel dikategorikan "terlalu besar" (Big Data) dan membutuhkan partisi.
- Memahami perbedaan logis vs fisik dari Table Partitioning.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Rak 03 Buku 01 (Konsep Table, Schema, dan Relasi) dan Rak 03 Buku 03 (Normalisasi vs Denormalisasi).

---

## 4. Rencana Outline Sub-Bab
- Keterbatasan Tabel Tunggal yang Menyentuh Ratusan Juta Baris
- Konsep Pembagian Fisik: Partitioned Table (Parent) vs Partition (Child)
- Keuntungan Pemeliharaan: Drop Partition Instan vs DELETE Lambat
- Perilaku Indeks pada Tabel Terpartisi
- Kriteria Objektif: Kapan Tabel Wajib Dipartisi (Ukuran RAM vs Ukuran Tabel)

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, skema DDL demo, analogi visual, dan latihan kecil untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 08 Administrasi & DBA.

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
