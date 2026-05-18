# Bab 02: Date, Time, Timestamp, dan Timezone

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 2 - Level 3 (Desain Data & Relasional)
*   **Buku**: [Buku 05: Tipe Data PostgreSQL untuk Desain Schema](./README.md)

---

## 1. Ringkasan Bab
Mendalami representasi waktu (DATE, TIME, TIMESTAMP, TIMESTAMPTZ) di PostgreSQL, pentingnya timezone-aware storage, serta penanganan tipe INTERVAL.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Menguasai perbedaan fundamental TIMESTAMP WITHOUT TIME ZONE vs TIMESTAMP WITH TIME ZONE (TIMESTAMPTZ).
- Memahami cara PostgreSQL menyimpan waktu dalam format UTC secara internal dan mengonversinya sesuai session timezone client.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 05 Bab 01 (Text, Numeric, Boolean, dan Pemilihan Tipe).

---

## 4. Rencana Outline Sub-Bab
- Representasi Waktu: DATE dan TIME
- TIMESTAMP vs TIMESTAMPTZ (Mengapa Selalu Direkomendasikan TIMESTAMPTZ)
- Konsep Session Timezone dan Konversi Waktu Internal PostgreSQL
- Menggunakan Tipe Data INTERVAL untuk Durasi Waktu
- Praktik Terbaik Desain Kolom Audit Waktu (created_at, updated_at)

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, skema DDL demo, analogi visual, dan latihan kecil untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 04 Buku 01 Bab 05 (Query untuk Filter, Sorting, dan Pagination).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
