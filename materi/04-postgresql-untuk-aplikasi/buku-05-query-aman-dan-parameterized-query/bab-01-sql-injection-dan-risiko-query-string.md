# Bab 01: SQL Injection dan Risiko Query String

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 3 - Level 4 (Integrasi Aplikasi & Siklus Hidup Skema)
*   **Buku**: [Buku 05: Query Aman dan Parameterized Query](./README.md)

---

## 1. Ringkasan Bab
Membahas kerentanan keamanan SQL Injection akibat penggabungan string (string concatenation) kueri langsung di aplikasi, serta cara kerja eksploitasi dasar.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami bagaimana string concatenation membiarkan input user mengubah struktur logika kueri SQL.
- Mengidentifikasi risiko pencurian data, modifikasi ilegal, atau bypass login akibat SQL Injection.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Rak 04 Buku 01 Bab 01 (Peran Database di Backend).

---

## 4. Rencana Outline Sub-Bab
- Definisi dan Mekanisme SQL Injection
- Mengapa String Concatenation Sangat Berbahaya untuk Kueri SQL
- Demonstrasi Konseptual Eksploitasi SQL Injection (Bypass Login & Data Extraction)
- Risiko Terhadap Integritas dan Kerahasiaan Data
- Prinsip Dasar "Never Trust User Input"

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, demo parameterisasi backend driver, dan analisis risiko transaksi untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 04 Buku 01 Bab 04 (Query untuk List & Detail Data Aplikasi).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
