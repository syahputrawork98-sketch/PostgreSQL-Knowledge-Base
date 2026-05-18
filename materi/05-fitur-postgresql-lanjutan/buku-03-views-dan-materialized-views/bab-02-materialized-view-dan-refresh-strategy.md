# Bab 02: Materialized View dan Refresh Strategy

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 4 - Level 5 (Intermediate Advanced)
*   **Buku**: [Buku 03: Views dan Materialized Views](./README.md)

---

## 1. Ringkasan Bab
Membahas pembuatan Materialized Views untuk menyimpan hasil kueri analitik secara fisik, serta strategi pembaruan datanya.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Membedakan standard View (virtual) vs Materialized View (penyimpanan fisik).
- Mampu membuat, mengindeks, dan memperbarui Materialized View menggunakan perintah REFRESH.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 03 Bab 01 (View Sebagai Abstraksi Query).

---

## 4. Rencana Outline Sub-Bab
- Mengapa Membutuhkan Materialized Views untuk Laporan Analitik Lambat
- Sintaks CREATE MATERIALIZED VIEW and Cara Kerja Penyimpanan Datanya
- Meningkatkan Kecepatan Akses Materialized View Menggunakan Index Fisik (B-Tree/GIN)
- Strategi Pembaruan Data: Perintah REFRESH MATERIALIZED VIEW
- Trade-off Penyimpanan Disk vs Kecepatan Query Akses Baca

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, demo query native, trigger PL/pgSQL, dan analisis monitoring extension untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 07 (Indexing, Query Planner, dan Performance).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
