# Bab 01: ALTER TABLE dan Risiko Perubahan Schema

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 2 - Level 3 (Desain Data & Relasional)
*   **Buku**: [Buku 07: Schema Evolution dan Perubahan Struktur](./README.md)

---

## 1. Ringkasan Bab
Membahas pengoperasian perintah ALTER TABLE, risiko penguncian tabel (table lock), serta perintah perubahan skema yang aman (metadata-only) vs berbahaya (full table rewrite).

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami jenis lock (Access Exclusive Lock) yang dipicu oleh perintah ALTER TABLE.
- Menguasai identifikasi operasi ALTER TABLE yang hanya mengubah katalog metadata vs operasi yang memicu tulis ulang tabel fisik.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Rak 03 Buku 01 (Konsep Table, Schema, dan Relasi).

---

## 4. Rencana Outline Sub-Bab
- Anatomi Perintah ALTER TABLE di PostgreSQL
- Memahami Jenis Kunci (Lock Modes) pada Perubahan Skema
- Operasi Aman: Menambah Kolom NULLABLE vs Kolom dengan DEFAULT
- Operasi Berbahaya: Mengubah Tipe Data Kolom Besar (Rewrite Table)
- Menggunakan Pernyataan Timeout untuk Mencegah Antrean Lock yang Membekukan Aplikasi

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, skema DDL demo, analogi visual, dan latihan kecil untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 06 Buku 02 (Locking System dan Deadlocks).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
