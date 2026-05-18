# Buku 01: Fondasi Transaksi dan ACID

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 06: Transaksi, Concurrency, dan MVCC](../README.md)
*   **Target Level**: Level 5 - Level 6 (Intermediate-Expert)
*   **Tipe Materi**: Transaksi Dasar, Concurrency Control, & MVCC Internal

---

## 1. Tujuan Buku
Buku ini membahas pengertian mendasar transaksi database sebagai unit kerja logis tunggal, menelaah secara komprehensif empat pilar garansi transaksi ACID (Atomicity, Consistency, Isolation, Durability) serta implementasinya di PostgreSQL engine, serta menguasai instruksi native kontrol transaksi (BEGIN, COMMIT, ROLLBACK, SAVEPOINT).

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu menjelaskan siklus hidup transaksi, mengidentifikasi anomali dirty read/non-repeatable/phantom/write skew, merancang retry logic tangguh untuk menangani serialization failure, menggunakan row locks (SELECT FOR UPDATE) secara optimal tanpa memicu deadlock, memahami visibilitas tuple MVCC via xmin/xmax, serta menulis pola concurrency OCC vs PCC di sisi aplikasi.

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dalam buku ini dikembangkan secara organik mengikuti kedalaman teori transaksi, konkurensi, dan MVCC PostgreSQL, serta tidak dibatasi secara kaku.

---

## 4. Daftar Bab Aktif
| 1 | [Bab 01: Apa Itu Transaksi Database](bab-01-apa-itu-transaksi-database.md) | **DRAFT** | Konkurensi | Membahas pengertian mendasar tentang transaksi database, mental model unit kerja logis tunggal, serta alur kerja transaksi secara konseptual. |
| 2 | [Bab 02: ACID (Atomicity, Consistency, Isolation, Durability)](bab-02-acid-atomicity-consistency-isolation-durability.md) | **DRAFT** | Konkurensi | Membahas empat prinsip dasar transaksi database (ACID) dan bagaimana PostgreSQL menjamin masing-masing prinsip tersebut. |
| 3 | [Bab 03: BEGIN, COMMIT, ROLLBACK, dan SAVEPOINT](bab-03-begin-commit-rollback-dan-savepoint.md) | **DRAFT** | Konkurensi | Membahas instruksi kontrol transaksi native di PostgreSQL untuk mengendalikan batas transaksi, pembatalan, serta sub-transaksi parsial menggunakan Savepoint. |

---

## 5. Urutan Belajar
Pembaca wajib menuntaskan bab secara berurutan untuk menjamin pemahaman fondasi yang kokoh sebelum melangkah ke konsep concurrency pattern dan internal MVCC yang kompleks.

---

## 6. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
