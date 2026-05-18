# Bab 03: Race Condition di Level Aplikasi

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 3 - Level 4 (Integrasi Aplikasi & Siklus Hidup Skema)
*   **Buku**: [Buku 06: Transaction Boundary di Service Layer](./README.md)

---

## 1. Ringkasan Bab
Pengenalan anomali persaingan data (Race Condition) akibat pembacaan dan pembaruan konkuren di aplikasi, serta pengantar teknik pencegahannya di database.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami bagaimana Race Condition terjadi pada proses "Read-Modify-Write" yang konkuren.
- Mengenal konsep dasar Optimistic Concurrency Control (OCC) vs Pessimistic Concurrency Control (PCC).

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 06 Bab 02 (Retry, Idempotency, dan Error Handling Transaksi).

---

## 4. Rencana Outline Sub-Bab
- Anatomi Masalah Race Condition: Kasus Pengurangan Saldo / Stok Barang
- Bahaya Pola Read-Modify-Write Tanpa Penguncian
- Pengantar Pessimistic Locking: Penggunaan SQL SELECT ... FOR UPDATE
- Pengantar Optimistic Locking: Validasi Berbasis Kolom Version/Timestamp
- Trade-off Performa OCC vs PCC pada Beban Transaksi Tinggi

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, demo parameterisasi backend driver, dan analisis risiko transaksi untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 06 (Transaksi, Concurrency, dan MVCC).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
