# Bab 03: Trigger dan Trigger Function

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 4 - Level 5 (Intermediate Advanced)
*   **Buku**: [Buku 04: Function, Procedure, dan Trigger](./README.md)

---

## 1. Ringkasan Bab
Membahas konsep Trigger di PostgreSQL untuk otomatisasi eksekusi fungsi prosedural berdasarkan modifikasi baris data (INSERT, UPDATE, DELETE).

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami cara kerja Trigger dan hubungannya dengan variabel khusus NEW dan OLD.
- Merancang audit logging otomatis atau sinkronisasi kolom menggunakan Row-Level Trigger.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 04 Bab 01 (SQL Function dan PL/pgSQL (Pengantar)).

---

## 4. Rencana Outline Sub-Bab
- Konsep Kerja Database Trigger: Mengkatalisasi Aksi Otomatis
- Perbedaan BEFORE Trigger vs AFTER Trigger dan Row-Level vs Statement-Level
- Struktur Penulisan Trigger Function Menggunakan Variabel Spesifik (NEW, OLD, TG_OP)
- Sintaks CREATE TRIGGER dan Cara Mengaitkannya ke Tabel Fisik
- Contoh Nyata: Membuat Skema Audit Trail Otomatis untuk Melacak Perubahan Data Pengguna

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, demo query native, trigger PL/pgSQL, dan analisis monitoring extension untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 03 (Desain Data dan Schema).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
