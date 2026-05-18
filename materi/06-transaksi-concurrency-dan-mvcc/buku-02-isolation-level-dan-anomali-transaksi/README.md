# Buku 02: Isolation Level dan Anomali Transaksi

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 06: Transaksi, Concurrency, dan MVCC](../README.md)
*   **Target Level**: Level 5 - Level 6 (Intermediate-Expert)
*   **Tipe Materi**: Transaksi Dasar, Concurrency Control, & MVCC Internal

---

## 1. Tujuan Buku
Buku ini mendalami 3 tingkat isolasi transaksi aktif di PostgreSQL (Read Committed, Repeatable Read, Serializable), menganalisis jenis anomali data konkurensi (Dirty Read, Non-Repeatable Read, Phantom Read, Serialization Anomaly), serta membahas penyebab serialization failure dan strategi retry transaksi aman.

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu menjelaskan siklus hidup transaksi, mengidentifikasi anomali dirty read/non-repeatable/phantom/write skew, merancang retry logic tangguh untuk menangani serialization failure, menggunakan row locks (SELECT FOR UPDATE) secara optimal tanpa memicu deadlock, memahami visibilitas tuple MVCC via xmin/xmax, serta menulis pola concurrency OCC vs PCC di sisi aplikasi.

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dalam buku ini dikembangkan secara organik mengikuti kedalaman teori transaksi, konkurensi, dan MVCC PostgreSQL, serta tidak dibatasi secara kaku.

---

## 4. Daftar Bab Aktif
| 1 | [Bab 01: Read Committed, Repeatable Read, dan Serializable](bab-01-read-committed-repeatable-read-dan-serializable.md) | **DRAFT** | Konkurensi | Membahas 3 isolation level aktif di PostgreSQL serta standar ANSI SQL untuk memisahkan transaksi konkuren. |
| 2 | [Bab 02: Dirty Read, Non-Repeatable Read, dan Phantom Read](bab-02-dirty-read-non-repeatable-read-dan-phantom-read.md) | **DRAFT** | Konkurensi | Mendalami berbagai jenis anomali transaksi konkuren (Dirty Read, Non-Repeatable Read, Phantom Read, dan Serialization Anomaly) beserta cara PostgreSQL mengatasinya. |
| 3 | [Bab 03: Serialization Failure dan Retry Transaction](bab-03-serialization-failure-dan-retry-transaction.md) | **DRAFT** | Konkurensi | Membahas kegagalan serialisasi (Serialization Failure - SQL State 40001) yang terjadi pada level isolasi ketat, serta strategi penanganan retry transaksi di aplikasi. |

---

## 5. Urutan Belajar
Pembaca wajib menuntaskan bab secara berurutan untuk menjamin pemahaman fondasi yang kokoh sebelum melangkah ke konsep concurrency pattern dan internal MVCC yang kompleks.

---

## 6. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
