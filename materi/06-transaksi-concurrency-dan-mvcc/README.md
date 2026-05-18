# Rak 06: Transaksi, Concurrency, dan MVCC

*   **Status Rak**: **DRAFT / REVIEW**
*   **Target Level**: Level 5 - Level 6 (Intermediate-Expert)
*   **Peran**: Pintu masuk utama untuk menguasai performa konkurensi data tingkat tinggi di PostgreSQL.
*   **Target Pembaca**: Developer backend senior, database administrator (DBA), dan arsitek software yang ingin mendesain sistem transaksional aman anomali di bawah beban konkuren tinggi.

---

## 1. Tujuan Rak
Rak ini dirancang untuk mengajarkan mekanisme kontrol konkurensi di PostgreSQL secara mendalam. Pembahasan mencakup teori internal Multi-Version Concurrency Control (MVCC) (xmin, xmax, row versioning), 3 tingkat isolasi transaksi aktif (Read Committed, Repeatable Read, Serializable) beserta anomali transaksinya (Dirty Read, Non-Repeatable Read, Phantom Read, Serialization Anomaly), sistem penguncian native (row-level locks, table-level locks, lock modes, advisory locks), cara mendeteksi dan mencegah deadlock, penanganan serialization failure (SQL State 40001) dengan retry loop transaksional, serta perancangan concurrency pattern (OCC vs PCC) yang aman, konsisten, dan idempotent di sisi aplikasi backend.

---

## 2. Kebijakan Struktur (No Fixed Limit)
Sesuai dengan [Kebijakan Kedalaman Expert-Scale](../../docs/project/book-chapter-depth-policy.md) dan [Standardisasi Struktur](../../docs/project/materi-structure-decision.md), jumlah buku dan bab pada rak ini dikembangkan secara organik mengikuti kedalaman ilmu konkurensi dan tidak dibatasi secara kaku.

---

## 3. Prasyarat Belajar
Pembaca wajib menyelesaikan **Rak 02 (SQL dan Querying)**, **Rak 03 (Desain Data dan Schema)**, **Rak 04 (PostgreSQL untuk Aplikasi)**, dan **Rak 05 (Fitur PostgreSQL Lanjutan)** sebelum memulai rak ini, agar pemahaman kueri, skema, pemrograman database, dan integrasi backend sudah matang secara menyeluruh.

---

## 4. Daftar Buku Aktif & DRAFT

| No | Buku / Folder | Status | Fokus Materi | Jumlah Bab |
| :---: | :--- | :---: | :--- | :---: |
| 1 | [Buku 01: Fondasi Transaksi dan ACID](./buku-01-fondasi-transaksi-dan-acid/) | **DRAFT** | Pengertian unit logis transaksi, siklus hidup transaksi, prinsip ACID, peran WAL & MVCC, sintaks native BEGIN/COMMIT/ROLLBACK, dan sub-transaksi via Savepoint. | 3 Bab |
| 2 | [Buku 02: Isolation Level dan Anomali Transaksi](./buku-02-isolation-level-dan-anomali-transaksi/) | **DRAFT** | 3 active isolation levels, anomali dirty read/fuzzy read/phantom read/write skew, simulasi multi-sesi client, penanganan serialization failure (SQL State 40001). | 3 Bab |
| 3 | [Buku 03: Locking dan Deadlock](./buku-03-locking-dan-deadlock/) | **DRAFT** | Row locks (FOR UPDATE/SHARE/NOWAIT/SKIP LOCKED), Table locks, Advisory locks, deteksi & pencegahan deadlock (deadlock_timeout), observasi lock via pg_locks. | 4 Bab |
| 4 | [Buku 04: MVCC dan Snapshot](./buku-04-mvcc-dan-snapshot/) | **DRAFT** | Filosofi non-blocking read-write, snapshot visibility rules, kolom sistem tersembunyi xmin/xmax, row versioning internal, dan akumulasi dead tuples (VACUUM/autovacuum). | 4 Bab |
| 5 | [Buku 05: Concurrency Pattern di Aplikasi](./buku-05-concurrency-pattern-di-aplikasi/) | **DRAFT** | Analisis bahaya Lost Update pada Read-Modify-Write, implementasi OCC (Optimistic Concurrency Control) berbasis versi, PCC (Pessimistic Concurrency Control), dan perancangan retry loop yang idempotent. | 4 Bab |

---

## 5. Jalur Belajar yang Disarankan
Selesaikan Buku 01 dan Buku 02 untuk menguasai landasan teori transaksi, tingkat isolasi, dan anomali konkurensi. Lanjutkan ke Buku 03 untuk memahami sistem penguncian native PostgreSQL serta penanganan kemacetan deadlock. Pelajari Buku 04 untuk masuk ke dalam arsitektur internal MVCC yang canggih. Terakhir, tuntaskan Buku 05 untuk mengintegrasikan seluruh pemahaman konkurensi tersebut ke dalam arsitektur aplikasi backend yang tangguh, aman, dan berkinerja tinggi.

---

## 6. Output yang Diharapkan
*   Kemampuan merancang batas transaksi (Transaction Boundary) yang aman di level aplikasi backend.
*   Pemahaman mendalam mengenai isolation level dan mitigasi anomali konkurensi.
*   Mampu mencegah deadlock dan menangani transient error (serialization failure) secara elegan.
*   Mampu mendiagnosis masalah locking dan table bloat (dead tuples) skala produksi.
*   Menguasai integrasi pola OCC dan PCC yang idempotent dan aman dari race condition.

---

## 7. Status & Kebijakan Dokumen
*   **Status Penulisan**: `DRAFT` (Seluruh 18 bab aktif masih berupa draf materi awal).
*   **Status Verifikasi Sumber**: `REVIEW` (Menunggu validasi resmi dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Bab Expert-Scale](../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../docs/project/materi-expert-scale-gap-matrix.md)
    *   [Standar Penulisan Materi](../../docs/project/materi-writing-standard.md)
