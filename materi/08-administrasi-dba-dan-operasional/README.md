# Rak 08: Administrasi, DBA, dan Operasional

*   **Status Rak**: **DRAFT / REVIEW**
*   **Target Level**: Level 3 - Level 4 (Developer-facing DBA Basics) / Level 6 - Level 7 (DBA & System Administration)
*   **Peran**: Pintu masuk utama bagi pengembang backend dan DBA junior untuk mengelola operasional database harian secara aman.
*   **Target Pembaca**: Developer backend dan sysadmin junior yang ingin mendalami teknik pencadangan database (*backup*), pemulihan (*restore*), serta mitigasi risiko kehilangan data operasional.

---

## 1. Tujuan Rak
Rak ini bertujuan mengajarkan pentingnya keselamatan data operasional database, memahami perbedaan fungsional data backup vs migration vs seeding, membimbing pembaca mengoperasikan tool cadangan standard `pg_dump` dan `pg_restore`, serta melatih pembaca melakukan uji coba pemulihan data (*restore drill*) secara taktis.

---

## 2. Kebijakan Struktur (No Fixed Limit)
Sesuai dengan [Kebijakan Kedalaman Expert-Scale](../../docs/project/book-chapter-depth-policy.md) and [Standardisasi Struktur](../../docs/project/materi-structure-decision.md), jumlah buku dan bab pada rak ini dikembangkan secara organik mengikuti kebutuhan operasional DBA dan tidak dibatasi secara kaku.

---

## 3. Prasyarat Belajar
Pembaca disarankan menyelesaikan **Rak 04: PostgreSQL untuk Aplikasi** terlebih dahulu agar pemahaman siklus hidup skema database sudah solid sebelum melangkah ke administrasi database dasar.

---

## 4. Daftar Buku Aktif & DRAFT

| No | Buku / Folder | Status | Fokus Materi | Jumlah Bab |
| :---: | :--- | :---: | :--- | :---: |
| 1 | [Buku 01: Backup, Restore, dan Risiko Data](./buku-01-backup-restore-dan-risiko-data/) | **DRAFT** | Pentingnya keselamatan data, pencadangan pg_dump, pemulihan data psql/pg_restore, dan latihan pemulihan data (restore drill). | 2 Bab |

---

## 5. Jalur Belajar yang Disarankan
Pembaca direkomendasikan menyelesaikan Buku 01 secara urut dari Bab 01 s/d Bab 02 untuk membangun pemahaman yang selaras dari urgensi backup hingga praktik simulasi penyelamatan data.

---

## 6. Output yang Diharapkan
*   Memahami ancaman kehilangan data operasional di lingkungan cloud/local.
*   Mampu mencadangkan database PostgreSQL secara otomatis menggunakan `pg_dump`.
*   Mampu melakukan pemulihan skema dan data menggunakan `pg_restore` dan program client `psql`.

---

## 7. Kebijakan & Manajemen Dokumen
*   **Status Penulisan**: `DRAFT` (Seluruh 2 bab aktif masih berupa draf materi awal).
*   **Status Verifikasi Sumber**: `REVIEW` (Menunggu validasi resmi dengan PostgreSQL Official Documentation).
*   **Pranala Kebijakan**:
    *   [Kebijakan Kedalaman Bab Expert-Scale](../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../docs/project/materi-expert-scale-gap-matrix.md)
    *   [Standar Penulisan Materi](../../docs/project/materi-writing-standard.md)
