# Bab 04: Idempotency dan Retry Safety

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 5 - Level 6 (Intermediate-Expert)
*   **Buku**: [Buku 05: Concurrency Pattern di Aplikasi](./README.md)

---

## 1. Ringkasan Bab
Membahas perancangan kueri transaksional yang aman terhadap eksekusi ulang (Retry) pasca terjadinya serialization failure atau kegagalan koneksi di aplikasi.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami pentingnya membuat operasi retry bersifat aman tanpa menduplikasi data transaksi (Idempotency).
- Mengintegrasikan retry loop di service layer backend aplikasi dengan tabel pelacak transaksi unik (Idempotency Table).

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 05 Bab 03 (Pessimistic Concurrency Control) dan Buku 02 Bab 03 (Serialization Failure).

---

## 4. Rencana Outline Sub-Bab
- Mengapa Retry Tanpa Idempotensi Sangat Berbahaya (Risiko Data Ganda/Double Charge)
- Strategi Idempotensi Berbasis Unik Token (Idempotency Key / Request ID)
- Menggunakan Pola INSERT ON CONFLICT DO NOTHING untuk Menjamin Keunikan Transaksi
- Merancang Siklus Retry Service Layer yang Aman Bersama PostgreSQL
- Checklist Desain Transaksi Tangguh-Konkuren Produksi Modern

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan konsep concurrency, simulasi deadlock sclient, dan visualisasi tuple metadata xmin/xmax untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 04 Buku 06 Bab 02 (Retry, Idempotency, dan Error Handling Transaksi).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
