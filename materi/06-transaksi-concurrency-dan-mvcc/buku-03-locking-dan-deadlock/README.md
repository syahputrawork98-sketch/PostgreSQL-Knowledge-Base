# Buku 03: Locking dan Deadlock

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 06: Transaksi, Concurrency, dan MVCC](../README.md)
*   **Target Level**: Level 5 - Level 6 (Intermediate-Expert)
*   **Tipe Materi**: Transaksi Dasar, Concurrency Control, & MVCC Internal

---

## 1. Tujuan Buku
Buku ini mengulas sistem penguncian (Locking) PostgreSQL, mencakup Row-level locks (FOR UPDATE/SHARE), Table-level locks, matriks kompatibilitas lock modes, implementasi Pessimistic Locking native, deteksi otomatis dan pencegahan Deadlock, serta penggunaan parameter lock_timeout untuk memantau blocking queries.

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu menjelaskan siklus hidup transaksi, mengidentifikasi anomali dirty read/non-repeatable/phantom/write skew, merancang retry logic tangguh untuk menangani serialization failure, menggunakan row locks (SELECT FOR UPDATE) secara optimal tanpa memicu deadlock, memahami visibilitas tuple MVCC via xmin/xmax, serta menulis pola concurrency OCC vs PCC di sisi aplikasi.

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dalam buku ini dikembangkan secara organik mengikuti kedalaman teori transaksi, konkurensi, dan MVCC PostgreSQL, serta tidak dibatasi secara kaku.

---

## 4. Daftar Bab Aktif
| 1 | [Bab 01: Row Lock, Table Lock, dan Lock Mode (Pengantar)](bab-01-row-lock-table-lock-dan-lock-mode-pengantar.md) | **DRAFT** | Konkurensi | Pengenalan sistem penguncian (Locking) di PostgreSQL, perbedaan Row Lock vs Table Lock, serta matriks kompatibilitas lock modes. |
| 2 | [Bab 02: SELECT FOR UPDATE dan Pessimistic Locking](bab-02-select-for-update-dan-pessimistic-locking.md) | **DRAFT** | Konkurensi | Membahas implementasi Pessimistic Locking di PostgreSQL menggunakan klausa SELECT ... FOR UPDATE untuk mengunci baris data saat dibaca. |
| 3 | [Bab 03: Deadlock Detection dan Pencegahan](bab-03-deadlock-detection-dan-pencegahan.md) | **DRAFT** | Konkurensi | Membahas fenomena Deadlock (kebuntuan transaksi saling mengunci), cara deteksi otomatis oleh PostgreSQL engine, serta teknik pencegahannya di tingkat penulisan kueri. |
| 4 | [Bab 04: Lock Wait Timeout dan Observasi Lock](bab-04-lock-wait-timeout-dan-observasi-lock.md) | **DRAFT** | Konkurensi | Membahas pembatasan waktu tunggu lock menggunakan lock_timeout serta pengantar observasi transaksi yang menggantung (blocking queries). |

---

## 5. Urutan Belajar
Pembaca wajib menuntaskan bab secara berurutan untuk menjamin pemahaman fondasi yang kokoh sebelum melangkah ke konsep concurrency pattern dan internal MVCC yang kompleks.

---

## 6. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
