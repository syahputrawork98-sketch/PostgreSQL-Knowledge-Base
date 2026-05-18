# Buku 05: Concurrency Pattern di Aplikasi

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 06: Transaksi, Concurrency, dan MVCC](../README.md)
*   **Target Level**: Level 5 - Level 6 (Intermediate-Expert)
*   **Tipe Materi**: Transaksi Dasar, Concurrency Control, & MVCC Internal

---

## 1. Tujuan Buku
Buku ini mengintegrasikan teori transaksi konkuren dengan pola pengembangan backend aplikasi nyata, membahas bahaya Lost Update pada pola Read-Modify-Write, perancangan Optimistic Concurrency Control (OCC) berbasis nomor versi, implementasi Pessimistic Concurrency Control (PCC) berbasis SELECT FOR UPDATE, serta integrasi retry loop transaksional yang idempotent dan aman.

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu menjelaskan siklus hidup transaksi, mengidentifikasi anomali dirty read/non-repeatable/phantom/write skew, merancang retry logic tangguh untuk menangani serialization failure, menggunakan row locks (SELECT FOR UPDATE) secara optimal tanpa memicu deadlock, memahami visibilitas tuple MVCC via xmin/xmax, serta menulis pola concurrency OCC vs PCC di sisi aplikasi.

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dalam buku ini dikembangkan secara organik mengikuti kedalaman teori transaksi, konkurensi, dan MVCC PostgreSQL, serta tidak dibatasi secara kaku.

---

## 4. Daftar Bab Aktif
| 1 | [Bab 01: Read-Modify-Write dan Lost Update](bab-01-read-modify-write-dan-lost-update.md) | **DRAFT** | Konkurensi | Membahas masalah klasik persaingan data (Lost Update) akibat pola eksekusi Read-Modify-Write yang tidak dilindungi di aplikasi. |
| 2 | [Bab 02: Optimistic Concurrency Control](bab-02-optimistic-concurrency-control.md) | **DRAFT** | Konkurensi | Membahas implementasi Optimistic Concurrency Control (OCC) di tingkat aplikasi menggunakan kolom versi atau timestamp untuk mendeteksi perubahan konkuren. |
| 3 | [Bab 03: Pessimistic Concurrency Control](bab-03-pessimistic-concurrency-control.md) | **DRAFT** | Konkurensi | Membahas pola implementasi Pessimistic Concurrency Control (PCC) menggunakan row-level locks (SELECT FOR UPDATE) untuk memblokir akses konkuren secara agresif. |
| 4 | [Bab 04: Idempotency dan Retry Safety](bab-04-idempotency-dan-retry-safety.md) | **DRAFT** | Konkurensi | Membahas perancangan kueri transaksional yang aman terhadap eksekusi ulang (Retry) pasca terjadinya serialization failure atau kegagalan koneksi di aplikasi. |

---

## 5. Urutan Belajar
Pembaca wajib menuntaskan bab secara berurutan untuk menjamin pemahaman fondasi yang kokoh sebelum melangkah ke konsep concurrency pattern dan internal MVCC yang kompleks.

---

## 6. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
