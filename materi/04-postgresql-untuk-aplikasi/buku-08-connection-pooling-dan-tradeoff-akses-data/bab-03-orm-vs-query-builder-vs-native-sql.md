# Bab 03: ORM vs Query Builder vs Native SQL

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 3 - Level 4 (Integrasi Aplikasi & Siklus Hidup Skema)
*   **Buku**: [Buku 08: Connection Pooling dan Trade-off Akses Data](./README.md)

---

## 1. Ringkasan Bab
Membahas perbandingan trade-off antara Object-Relational Mapping (ORM), Query Builder, dan penulisan Native SQL di aplikasi backend dari sisi produktivitas, performa, dan kontrol.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami bahaya query tersembunyi (N+1 query problem) yang dipicu oleh ORM lazim.
- Mengevaluasi kapan harus beralih dari ORM ke Native SQL untuk query analitik kompleks.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 08 Bab 01 (Connection Pool Sizing untuk Aplikasi).

---

## 4. Rencana Outline Sub-Bab
- Mental Model Akses Data: ORM, Query Builder, dan Native SQL
- Kelebihan ORM: Keamanan Parameterisasi Otomatis dan Kecepatan Development
- Bahaya Tersembunyi ORM: Masalah Kueri N+1 (N+1 Query Problem)
- Mengapa Arsitektur Berkinerja Tinggi Memerlukan Native SQL untuk Kueri Kompleks
- Pendekatan Hibrida (Hybrid Approach) pada Desain Sistem Produksi Modern

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, demo parameterisasi backend driver, dan analisis risiko transaksi untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 04 Buku 01 (PostgreSQL dalam Aplikasi Backend).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
