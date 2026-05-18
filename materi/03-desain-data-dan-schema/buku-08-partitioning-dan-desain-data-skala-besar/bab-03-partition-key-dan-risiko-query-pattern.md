# Bab 03: Partition Key dan Risiko Query Pattern

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 2 - Level 3 (Desain Data & Relasional)
*   **Buku**: [Buku 08: Partitioning dan Desain Data Skala Besar](./README.md)

---

## 1. Ringkasan Bab
Membahas pentingnya pemilihan Partition Key yang selaras dengan pola pencarian kueri aplikasi untuk menghindari pencarian seluruh partisi.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami konsep Partition Pruning (penyaringan partisi aktif).
- Mengidentifikasi anomali penurunan performa kueri akibat pencarian tanpa melibatkan Partition Key.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 08 Bab 02 (Range, List, dan Hash Partitioning - Pengantar).

---

## 4. Rencana Outline Sub-Bab
- Cara Kerja Partition Pruning di Query Optimizer
- Bahaya Kueri Tanpa Partition Key (Full Partition Scan)
- Aturan Desain Unique Constraints dan Primary Key pada Tabel Terpartisi
- Risiko Memperbarui Nilai Partition Key (Pemicu Row Movement)
- Checklist Evaluasi Sebelum Mengaktifkan Partisi di Produksi

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, skema DDL demo, analogi visual, dan latihan kecil untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 07 Buku 01 Bab 04 (Membaca Query Plan Dasar).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
