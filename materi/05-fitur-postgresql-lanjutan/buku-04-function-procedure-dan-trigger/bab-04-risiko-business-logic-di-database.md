# Bab 04: Risiko Business Logic di Database

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 4 - Level 5 (Intermediate Advanced)
*   **Buku**: [Buku 04: Function, Procedure, dan Trigger](./README.md)

---

## 1. Ringkasan Bab
Menganalisis perdebatan arsitektur perangkat lunak mengenai penempatan logika bisnis di tingkat database vs aplikasi backend.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Mengidentifikasi kelemahan penulisan logika bisnis rumit di database (masalah debugging, testing, scaling, dan portabilitas).
- Menerapkan batasan sehat penggunaan function/trigger hanya untuk integritas data terdekat.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 04 Bab 03 (Trigger dan Trigger Function).

---

## 4. Rencana Outline Sub-Bab
- Perdebatan Arsitektur: Database Sebagai Dumb Store vs Smart Engine
- Tantangan Pengembangan: Kesulitan Debugging dan Unit Testing PL/pgSQL
- Hambatan Skalabilitas: Database Server Lebih Sulit di-Scale Out Horizontal Dibanding Aplikasi Backend
- Masalah Version Control dan Deployment Logika Prosedural Database
- Panduan Praktik Terbaik: Batasan Sehat Penggunaan Trigger Hanya untuk Enforcing Integritas Rendah

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, demo query native, trigger PL/pgSQL, dan analisis monitoring extension untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 04 (PostgreSQL untuk Aplikasi).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
