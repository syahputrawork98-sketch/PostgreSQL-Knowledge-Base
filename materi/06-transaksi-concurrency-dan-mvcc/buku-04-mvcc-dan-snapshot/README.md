# Buku 04: MVCC dan Snapshot

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 06: Transaksi, Concurrency, dan MVCC](../README.md)
*   **Target Level**: Level 5 - Level 6 (Intermediate-Expert)
*   **Tipe Materi**: Transaksi Dasar, Concurrency Control, & MVCC Internal

---

## 1. Tujuan Buku
Buku ini mendalami arsitektur internal Multi-Version Concurrency Control (MVCC) di PostgreSQL yang memisahkan pembacaan dan penulisan konkuren, menganalisis penentuan visibilitas snapshot pada Read Committed vs Repeatable Read, melacak daur hidup baris menggunakan kolom tersembunyi xmin/xmax, serta memahami hubungan MVCC dengan akumulasi dead tuples (table bloat) dan utilitas pembersihan VACUUM.

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu menjelaskan siklus hidup transaksi, mengidentifikasi anomali dirty read/non-repeatable/phantom/write skew, merancang retry logic tangguh untuk menangani serialization failure, menggunakan row locks (SELECT FOR UPDATE) secara optimal tanpa memicu deadlock, memahami visibilitas tuple MVCC via xmin/xmax, serta menulis pola concurrency OCC vs PCC di sisi aplikasi.

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dalam buku ini dikembangkan secara organik mengikuti kedalaman teori transaksi, konkurensi, dan MVCC PostgreSQL, serta tidak dibatasi secara kaku.

---

## 4. Daftar Bab Aktif
| 1 | [Bab 01: Konsep MVCC di PostgreSQL](bab-01-konsep-mvcc-di-postgresql.md) | **DRAFT** | Konkurensi | Membahas konsep utama Multi-Version Concurrency Control (MVCC) di PostgreSQL yang memungkinkan pembacaan dan penulisan konkuren berjalan tanpa saling memblokir. |
| 2 | [Bab 02: Snapshot Visibility dan Versi Row](bab-02-snapshot-visibility-dan-versi-row.md) | **DRAFT** | Konkurensi | Membahas bagaimana PostgreSQL menentukan versi baris data (tuple) yang boleh dilihat oleh transaksi aktif menggunakan Snapshot data. |
| 3 | [Bab 03: xmin, xmax, dan Row Versioning (Pengantar)](bab-03-xmin-xmax-dan-row-versioning-pengantar.md) | **DRAFT** | Konkurensi | Membahas parameter metadata tersembunyi (xmin, xmax) di setiap baris tabel PostgreSQL untuk melacak daur hidup versi tuple. |
| 4 | [Bab 04: VACUUM, Bloat, dan Hubungannya dengan MVCC](bab-04-vacuum-bloat-dan-hubungannya-dengan-mvcc.md) | **DRAFT** | Konkurensi | Pengenalan dampak samping MVCC berupa penumpukan tuple sampah (Bloat) serta peran proses VACUUM untuk mengklaim kembali ruang kosong. |

---

## 5. Urutan Belajar
Pembaca wajib menuntaskan bab secara berurutan untuk menjamin pemahaman fondasi yang kokoh sebelum melangkah ke konsep concurrency pattern dan internal MVCC yang kompleks.

---

## 6. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
