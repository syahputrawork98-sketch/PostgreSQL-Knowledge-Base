# Bab 01: Read-Modify-Write dan Lost Update

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 5 - Level 6 (Intermediate-Expert)
*   **Buku**: [Buku 05: Concurrency Pattern di Aplikasi](./README.md)

---

## 1. Ringkasan Bab
Membahas masalah klasik persaingan data (Lost Update) akibat pola eksekusi Read-Modify-Write yang tidak dilindungi di aplikasi.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Mengidentifikasi celah terjadinya Lost Update pada aplikasi multi-user yang mengakses data secara konkuren.
- Memahami mengapa isolation level Read Committed bawaan tidak otomatis mencegah Lost Update.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Rak 04 Buku 06 Bab 03 (Race Condition di Level Aplikasi).

---

## 4. Rencana Outline Sub-Bab
- Alur Masalah: Baca Nilai -> Ubah di Memori Aplikasi -> Simpan Kembali
- Lost Update: Transaksi Pengguna A Menimpa Hasil Perubahan Pengguna B Tanpa Disadari
- Mengapa Read Committed Default Membiarkan Pola Ini Terjadi
- Analogi Visual: Kasus Keranjang Belanja / Saldo Rekening E-Wallet
- Menganalisis Kode Semu Aplikasi yang Rentan Terhadap Lost Update

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan konsep concurrency, simulasi deadlock sclient, dan visualisasi tuple metadata xmin/xmax untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 04 Buku 06 (Transaction Boundary di Service Layer).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
