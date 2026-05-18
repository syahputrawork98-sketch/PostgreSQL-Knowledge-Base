# Rak 06: Transaksi, Concurrency, dan MVCC

*   **Status Rak**: **SKELETON** (Belum Ditulis)
*   **Target Level**: Level 5 - Level 6 (Intermediate-Expert)
*   **Peran**: Pintu masuk utama untuk menguasai performa konkurensi data tingkat tinggi di PostgreSQL.
*   **Target Pembaca**: Developer backend senior, database administrator (DBA), dan arsitek software yang ingin mendesain sistem transaksional aman anomali di bawah beban konkuren tinggi.

---

## 1. Tujuan Rak (Direncanakan)
Rak ini dirancang untuk mengajarkan mekanisme kontrol konkurensi di PostgreSQL, meliputi teori internal Multi-Version Concurrency Control (MVCC) (xmin, xmax, cmin, cmax), 4 tingkat isolasi transaksi (Read Committed, Repeatable Read, Serializable) beserta anomali transaksinya, sistem locking (row lock, table lock, advisory lock), serta cara mendeteksi dan mencegah deadlock.

---

## 2. Kebijakan Struktur (No Fixed Limit)
Sesuai dengan [Kebijakan Kedalaman Expert-Scale](../../docs/project/book-chapter-depth-policy.md) dan [Standardisasi Struktur](../../docs/project/materi-structure-decision.md), jumlah buku dan bab pada rak ini dikembangkan secara organik mengikuti kedalaman ilmu konkurensi dan tidak dibatasi secara kaku.

---

## 3. Daftar Buku yang Direncanakan (Skeleton)

| No | Buku / Folder | Status | Rencana Fokus Materi |
| :---: | :--- | :---: | :--- |
| 1 | `buku-01-transaksi-dan-isolation-levels` | *SKELETON* | 4 isolation levels, anomali konkurensi (lost update, dirty read, serialization anomaly), dan kompromi performa. |
| 2 | `buku-02-locking-system-dan-deadlocks` | *SKELETON* | Row-level locks, Table-level locks, Lock modes (Share/Exclusive), Advisory locks, dan penanganan deadlock. |
| 3 | `buku-03-mvcc-dan-internal-transaksi` | *SKELETON* | Struktur tuple header (xmin, xmax), Visibility Map, transaction status, dan relasi autovacuum dengan freeze transaction ID. |

---

## 4. Status & Kebijakan Dokumen
*   **Status Penulisan**: `SKELETON` (Menunggu keputusan aktivasi batch menengah dari User).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Bab Expert-Scale](../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../docs/project/materi-expert-scale-gap-matrix.md)
    *   [Standar Penulisan Materi](../../docs/project/materi-writing-standard.md)
