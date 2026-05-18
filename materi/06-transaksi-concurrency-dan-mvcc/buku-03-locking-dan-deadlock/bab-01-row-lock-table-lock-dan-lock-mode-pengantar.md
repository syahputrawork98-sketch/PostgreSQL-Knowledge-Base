# Bab 01: Row Lock, Table Lock, dan Lock Mode (Pengantar)

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 5 - Level 6 (Intermediate-Expert)
*   **Buku**: [Buku 03: Locking dan Deadlock](./README.md)

---

## 1. Ringkasan Bab
Pengenalan sistem penguncian (Locking) di PostgreSQL, perbedaan Row Lock vs Table Lock, serta matriks kompatibilitas lock modes.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami pentingnya locking dalam mengamankan perubahan data yang konkuren.
- Mengenal berbagai tingkat penguncian mulai dari Row Lock, Table Lock, hingga Advisory Lock.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 01 Bab 03 (BEGIN, COMMIT, ROLLBACK, dan SAVEPOINT).

---

## 4. Rencana Outline Sub-Bab
- Peran Sistem Locking Sebagai Pengawal Terakhir Integritas Concurrency
- Row-Level Locks: FOR UPDATE, FOR NO KEY UPDATE, FOR SHARE, dan FOR KEY SHARE
- Table-Level Locks: ACCESS EXCLUSIVE, SHARE ROW EXCLUSIVE, dll.
- Matriks Kompatibilitas Lock: Kapan Kueri Berbeda Saling Menunggu (Blocking)
- Pengantar Advisory Locks: Penguncian Kustom Buatan Developer untuk Logika Bisnis

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan konsep concurrency, simulasi deadlock sclient, dan visualisasi tuple metadata xmin/xmax untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 03 (Desain Data dan Schema).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
