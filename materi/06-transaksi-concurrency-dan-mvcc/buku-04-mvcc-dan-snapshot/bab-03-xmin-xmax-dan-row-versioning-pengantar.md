# Bab 03: xmin, xmax, dan Row Versioning (Pengantar)

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 5 - Level 6 (Intermediate-Expert)
*   **Buku**: [Buku 04: MVCC dan Snapshot](./README.md)

---

## 1. Ringkasan Bab
Membahas parameter metadata tersembunyi (xmin, xmax) di setiap baris tabel PostgreSQL untuk melacak daur hidup versi tuple.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami makna dan fungsi kolom metadata sistem xmin dan xmax.
- Mampu melacak perubahan xmin dan xmax secara manual melalui simulasi INSERT, UPDATE, dan DELETE.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 04 Bab 02 (Snapshot Visibility dan Versi Row).

---

## 4. Rencana Outline Sub-Bab
- Mengenal Kolom Sistem Tersembunyi: xmin, xmax, cmin, cmax, dan ctid
- xmin: ID Transaksi Pembuat Tuple (INSERT)
- xmax: ID Transaksi Penghapus/Pembarup Tuple (DELETE/UPDATE)
- Proses Update Fisik di MVCC: Penandaan Hapus Tuple Lama (xmax) dan Pembuatan Tuple Baru (xmin)
- Latihan Mandiri: Menampilkan dan Melacak xmin/xmax Melalui Konsol Kueri

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan konsep concurrency, simulasi deadlock sclient, dan visualisasi tuple metadata xmin/xmax untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 03 (Desain Data dan Schema).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
