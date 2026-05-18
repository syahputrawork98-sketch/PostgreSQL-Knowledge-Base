# Bab 01: View Sebagai Abstraksi Query

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 4 - Level 5 (Intermediate Advanced)
*   **Buku**: [Buku 03: Views dan Materialized Views](./README.md)

---

## 1. Ringkasan Bab
Membahas pembuatan standard Views di PostgreSQL sebagai lapisan abstraksi query relasional dan perlindungan data sensitif.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami mental model View sebagai virtual table yang menyimpan definisi kueri.
- Mampu merancang View untuk menyembunyikan logika join kompleks atau kolom sensitif.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Rak 03 Buku 01 (Konsep Table, Schema, dan Relasi).

---

## 4. Rencana Outline Sub-Bab
- Definisi Views: Virtual Table Tanpa Penyimpanan Fisik Data
- Sintaks CREATE VIEW dan Pengelolaannya
- Menggunakan View Sebagai Lapisan Keamanan Kolom Sensitif (Gaji/Password)
- Aturan Mengenai Updatable Views dan Klausa WITH CHECK OPTION
- Overhead Performa Standard View pada Kueri Bertumpuk (View on View)

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, demo query native, trigger PL/pgSQL, dan analisis monitoring extension untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 03 (Desain Data dan Schema).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
