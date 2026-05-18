# Buku 03: Migration, Seed, dan Versioning Schema

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 04: PostgreSQL untuk Aplikasi](../README.md)
*   **Target Level**: Level 3 - Level 4 (Siklus Hidup Skema)
*   **Tipe Materi**: Praktik DevOps & Version Control Database

---

## 1. Tujuan Buku
Buku ini bertujuan untuk melatih pengembang mengelola perubahan struktur skema database di lingkungan tim developer secara teratur menggunakan *Database Migration*, melakukan pengisian data awal (*seeding*), menganalisis perbedaan data seeding vs migration vs production, serta mengunci histori evolusi skema database menggunakan kontrol versi skema (*schema version control*).

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu menulis script migrasi skema (up/down migration), melakukan data seeding referensi statis secara otomatis, serta melacak dan menyamakan versi skema database antar anggota tim pengembang aplikasi.

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dirancang secara modular dan tidak dibatasi secara kaku. Rencana ekspansi buku ini di masa depan mencakup migrasi skema zero-downtime tingkat lanjut (seperti skema migrasi aman rename column tanpa downtime aplikasi).

---

## 4. Daftar Bab Aktif

| No | Bab | Status | Tipe | Ringkasan Materi |
| :---: | :--- | :---: | :---: | :--- |
| 1 | [Bab 01: Apa Itu Database Migration](./bab-01-apa-itu-database-migration.md) | **DRAFT** | Praktik | Konsep evolusi skema, script migrasi up dan down, tracking tabel riwayat migrasi, dan eksekusi migrasi otomatis. |
| 2 | [Bab 02: Data Seeding Dasar](./bab-02-data-seeding-dasar.md) | **DRAFT** | Praktik | Konsep pengisian data awal, syntax seeding data referensi statis (seperti data negara/role), dan pengisian programatis. |
| 3 | [Bab 03: Seed Data vs Dummy Data dan Production Data](./bab-03-seed-data-vs-dummy-data-dan-production-data.md) | **DRAFT** | Praktik | Analisis komparatif, pengisian data dummy dinamis untuk stress-testing local, dan pengamanan bulk-load production. |
| 4 | [Bab 04: Version Control untuk Schema](./bab-04-version-control-untuk-schema.md) | **DRAFT** | Praktik | Mengintegrasikan skema ke repositori Git, menjaga konsistensi state skema lokal tim developer, dan penanganan konflik file migrasi skema. |

---

## 5. Urutan Belajar
Pembaca direkomendasikan menyelesaikan Bab 01 untuk menguasai migrasi skema, dilanjutkan ke Seeding data di Bab 02 & 03, dan ditutup dengan pemahaman sinkronisasi tim di Bab 04.

---

## 6. Koneksi ke Project Nyata
Alur database migration dan schema versioning merupakan tulang punggung pipa CI/CD (Continuous Integration / Continuous Deployment) modern dalam menjamin kelancaran deployment struktur database baru ke server staging dan production secara otomatis dan bebas human-error.

---

## 7. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi langsung dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
