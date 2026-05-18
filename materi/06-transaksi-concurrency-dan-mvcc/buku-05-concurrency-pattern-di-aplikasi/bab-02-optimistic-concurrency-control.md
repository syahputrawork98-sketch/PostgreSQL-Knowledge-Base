# Bab 02: Optimistic Concurrency Control

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 5 - Level 6 (Intermediate-Expert)
*   **Buku**: [Buku 05: Concurrency Pattern di Aplikasi](./README.md)

---

## 1. Ringkasan Bab
Membahas implementasi Optimistic Concurrency Control (OCC) di tingkat aplikasi menggunakan kolom versi atau timestamp untuk mendeteksi perubahan konkuren.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami asumsi dasar OCC: Konflik Jarang Terjadi, Validasi Dilakukan Sebelum Menyimpan.
- Mampu merancang kueri SQL update berbasis versi untuk memastikan data belum diubah pihak lain.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 05 Bab 01 (Read-Modify-Write dan Lost Update).

---

## 4. Rencana Outline Sub-Bab
- Filosofi Optimistic Locking: Bebas Kunci Selama Proses Membaca dan Memodifikasi
- Merancang Kolom Pelacak: Version Number (Integer) atau Last Updated (Timestamp)
- Mekanisme Validasi SQL: UPDATE ... SET version = version + 1 WHERE id = $1 AND version = $2
- Mendeteksi Kegagalan Update di Aplikasi (Row Count = 0) dan Memicu Aksi Penyelamatan
- Kelebihan & Keterbatasan OCC: Produktivitas Tinggi vs Beban Retry Berat jika Konflik Padat

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan konsep concurrency, simulasi deadlock sclient, dan visualisasi tuple metadata xmin/xmax untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 04 Buku 06 (Transaction Boundary di Service Layer).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
