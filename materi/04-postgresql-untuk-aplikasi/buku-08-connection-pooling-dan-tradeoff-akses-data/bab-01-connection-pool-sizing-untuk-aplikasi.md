# Bab 01: Connection Pool Sizing untuk Aplikasi

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 3 - Level 4 (Integrasi Aplikasi & Siklus Hidup Skema)
*   **Buku**: [Buku 08: Connection Pooling dan Trade-off Akses Data](./README.md)

---

## 1. Ringkasan Bab
Mendalami perancangan ukuran Connection Pool (Pool Sizing) yang optimal di aplikasi backend untuk mencegah kehabisan slot koneksi database dan overhead memori.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami biaya memori internal PostgreSQL per koneksi aktif (Backend Process).
- Menguasai rumus perancangan ukuran pool koneksi yang optimal berdasarkan jumlah core CPU database.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Rak 04 Buku 01 Bab 02 (Driver & Connection Pooling).

---

## 4. Rencana Outline Sub-Bab
- Proses Internal PostgreSQL per Koneksi: Satu Koneksi, Satu Proses (Process-Per-Connection)
- Biaya Memori Overhead per Koneksi di PostgreSQL Server
- Mengapa Pool Koneksi Terlalu Besar Justru Menurunkan Performa (CPU Context Switching)
- Rumus Klasik HikariCP: N_pool = ((N_core * 2) + N_effective_spindle)
- Langkah Diagnosis Kebocoran Koneksi (Connection Leak) di Aplikasi

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, demo parameterisasi backend driver, dan analisis risiko transaksi untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 08 DBA & Operasional.

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
