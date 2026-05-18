# Rak 01: Orientasi, Sejarah, dan Fondasi PostgreSQL

*   **Status Rak**: **DRAFT / REVIEW**
*   **Target Level**: Level 0 - Level 1 (Dasar Konseptual)
*   **Peran**: Pintu masuk utama untuk memahami filosofi, sejarah, dan model mental database relasional.
*   **Target Pembaca**: Pemula yang baru mengenal database relasional dan pengembang backend yang ingin memperkuat pemahaman teoretis.

---

## 1. Tujuan Rak
Rak ini bertujuan membangun pondasi teoretis yang sangat kokoh mengenai sistem database relasional, khususnya keunggulan PostgreSQL (ORDBMS) sebagai penjaga integritas data tingkat tinggi, serta memahami struktur penyimpanan data logis awal (database, schema, table, row, column).

---

## 2. Kebijakan Struktur (No Fixed Limit)
Sesuai dengan [Kebijakan Kedalaman Expert-Scale](../../docs/project/book-chapter-depth-policy.md) dan [Standardisasi Struktur](../../docs/project/materi-structure-decision.md), jumlah buku dan bab pada rak ini tidak dibatasi secara kaku (tidak dipaksa harus 3 atau 4 bab per buku). Rak dan buku ini akan tumbuh secara organik untuk menampung deep-dive keilmuan PostgreSQL lainnya.

---

## 3. Prasyarat Belajar
Tidak ada prasyarat teknis khusus. Rak ini didesain dari Level 0 (nol pengetahuan database).

---

## 4. Daftar Buku Aktif & Skeleton

| No | Buku / Folder | Status | Fokus Materi | Jumlah Bab |
| :---: | :--- | :---: | :--- | :---: |
| 1 | [Buku 01: Orientasi PostgreSQL](./buku-01-orientasi-postgresql/) | **DRAFT** | Pengenalan ORDBMS, fitur utama, dan posisi PostgreSQL di industri database. | 3 Bab |
| 2 | [Buku 02: Sejarah dan Evolusi PostgreSQL](./buku-02-sejarah-dan-evolusi-postgresql/) | *SKELETON* | Asal-usul Ingres/Postgres, evolusi fungsionalitas rilis, dan Stonebraker. | 3 Bab (Skeleton) |
| 3 | [Buku 03: Filosofi dan Mental Model](./buku-03-filosofi-dan-mental-model-postgresql/) | **DRAFT** | ACID, model integritas data, dan analogi pemula. | 3 Bab |
| 4 | [Buku 04: Fondasi Konsep Database](./buku-04-fondasi-konsep-database/) | **DRAFT** | Anatomi penyimpanan logis (row, column, table, schema). | 2 Bab DRAFT (1 Skeleton) |

---

## 5. Jalur Belajar yang Disarankan
Pembaca direkomendasikan menyelesaikan Buku 01 terlebih dahulu, dilanjutkan ke Buku 03 untuk membentuk model mental pengamanan data, lalu Buku 04 sebelum melangkah ke penulisan query SQL pada Rak 02.

---

## 6. Output yang Diharapkan
*   Memahami perbedaan database relasional dengan database non-relasional.
*   Menguasai anatomi dasar database logis.
*   Memiliki model mental ACID transaksi database.

---

## 7. Kebijakan & Manajemen Dokumen
*   **Status Penulisan**: `DRAFT` (Seluruh bab aktif masih berupa draf materi awal).
*   **Status Verifikasi Sumber**: `REVIEW` (Menunggu proses validasi dengan PostgreSQL Official Documentation).
*   **Pranala Kebijakan**:
    *   [Kebijakan Kedalaman Bab Expert-Scale](../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../docs/project/materi-expert-scale-gap-matrix.md)
    *   [Standar Penulisan Materi](../../docs/project/materi-writing-standard.md)
