# Bab 03: Pessimistic Concurrency Control

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 5 - Level 6 (Intermediate-Expert)
*   **Buku**: [Buku 05: Concurrency Pattern di Aplikasi](./README.md)

---

## 1. Ringkasan Bab
Membahas pola implementasi Pessimistic Concurrency Control (PCC) menggunakan row-level locks (SELECT FOR UPDATE) untuk memblokir akses konkuren secara agresif.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami asumsi dasar PCC: Konflik Sering Terjadi, Kunci Segera Setelah Dibaca.
- Menerapkan kueri pessimistic locking yang tepat untuk transaksi finansial kritis di aplikasi backend.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 05 Bab 02 (Optimistic Concurrency Control).

---

## 4. Rencana Outline Sub-Bab
- Filosofi Pessimistic Locking: Amankan Dulu Sebelum Pihak Lain Sempat Mengintervensi
- Implementasi PCC Menggunakan SQL native SELECT FOR UPDATE
- Mencegah Kebuntuan Antrian Panjang dengan Kombinasi SKIP LOCKED / NOWAIT
- Use Case Ideal: Pembelian Stok Tiket Konser, Penarikan Saldo ATM, dan Sistem Alokasi Inventory
- Analisis Trade-off: Performa Lambat vs Jaminan Konsistensi 100% Beban Tinggi

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan konsep concurrency, simulasi deadlock sclient, dan visualisasi tuple metadata xmin/xmax untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Buku 03 Bab 02 (SELECT FOR UPDATE dan Pessimistic Locking).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
