# Bab 02: Backward-Compatible Schema Change

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 2 - Level 3 (Desain Data & Relasional)
*   **Buku**: [Buku 07: Schema Evolution dan Perubahan Struktur](./README.md)

---

## 1. Ringkasan Bab
Membahas teknik merancang perubahan skema database yang kompatibel ke belakang (backward-compatible) untuk memfasilitasi deployment aplikasi zero-downtime.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami mengapa perubahan skema destruktif langsung dilarang di lingkungan produksi.
- Menguasai alur kerja "Expand and Contract" dalam memigrasi kolom atau tabel secara aman.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 07 Bab 01 (ALTER TABLE dan Risiko Perubahan Schema).

---

## 4. Rencana Outline Sub-Bab
- Tantangan Deployment Aplikasi Bertahap (Zero-Downtime Deployment)
- Prinsip Utama: Skema Baru Harus Bisa Dibaca oleh Aplikasi Versi Lama
- Alur Kerja 3 Fase: Expand, Transition, Contract
- Kasus Nyata: Mengubah Nama Kolom secara Aman Tanpa Downtime
- Kasus Nyata: Memisahkan Satu Kolom Menjadi Dua Kolom Baru

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, skema DDL demo, analogi visual, dan latihan kecil untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 04 Buku 03 Bab 04 (Version Control untuk Schema).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
