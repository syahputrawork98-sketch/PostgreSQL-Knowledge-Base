# Bab 02: pgBouncer dan Pooling di Luar Aplikasi (Pengantar)

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 3 - Level 4 (Integrasi Aplikasi & Siklus Hidup Skema)
*   **Buku**: [Buku 08: Connection Pooling dan Trade-off Akses Data](./README.md)

---

## 1. Ringkasan Bab
Mengenalkan pgBouncer sebagai middleware connection proxy eksternal untuk melayani ribuan koneksi konkuren dari arsitektur microservices modern.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami kegunaan pgBouncer dalam mengurangi beban overhead pembuatan proses PostgreSQL.
- Membedakan tiga mode pooling pgBouncer: Session, Transaction, dan Statement Pooling.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 08 Bab 01 (Connection Pool Sizing untuk Aplikasi).

---

## 4. Rencana Outline Sub-Bab
- Keterbatasan Connection Pooling di Sisi Aplikasi pada Arsitektur Microservices/Serverless
- Pengenalan pgBouncer Sebagai Klien Proxy Koneksi Terpusat
- Mendalami Tiga Mode Pooling: Session, Transaction, dan Statement
- Konsekuensi Mode Transaction/Statement: Larangan Penggunaan Prepared Statement Tertentu
- Checklist Kapan Wajib Menggunakan pgBouncer di Arsitektur Backend

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, demo parameterisasi backend driver, dan analisis risiko transaksi untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 08 Administrasi & DBA.

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
