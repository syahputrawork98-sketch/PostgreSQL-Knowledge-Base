# Bab 03: Deadlock Detection dan Pencegahan

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 5 - Level 6 (Intermediate-Expert)
*   **Buku**: [Buku 03: Locking dan Deadlock](./README.md)

---

## 1. Ringkasan Bab
Membahas fenomena Deadlock (kebuntuan transaksi saling mengunci), cara deteksi otomatis oleh PostgreSQL engine, serta teknik pencegahannya di tingkat penulisan kueri.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami anatomi terjadinya kebuntuan transaksi (Deadlock) akibat persilangan urutan akses tabel/baris.
- Menerapkan prinsip pengurutan penulisan kueri yang konsisten untuk mencegah timbulnya deadlock.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 03 Bab 02 (SELECT FOR UPDATE dan Pessimistic Locking).

---

## 4. Rencana Outline Sub-Bab
- Anatomi Kebuntuan Transaksi: Bagaimana Dua Transaksi Saling Menunggu Lock Satu Sama Lain
- Mekanisme Deteksi Deadlock Internal: Parameter deadlock_timeout dan Pembatalan Transaksi Otomatis
- Membaca Pesan Error: "deadlock detected: Detail: Process 123 waits for ShareLock on transaction..."
- Strategi Pencegahan Utama: Mengurutkan Akses Baris/Tabel secara Konsisten di Aplikasi
- Latihan Kasus: Mengurai Skenario Deadlock Sederhana dan Memperbaikinya

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan konsep concurrency, simulasi deadlock sclient, dan visualisasi tuple metadata xmin/xmax untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 04 Buku 06 Bab 03 (Race Condition di Level Aplikasi).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
