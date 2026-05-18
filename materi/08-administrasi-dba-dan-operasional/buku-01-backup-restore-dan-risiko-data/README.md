# Buku 01: Backup, Restore, dan Risiko Data

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 08: Administrasi, DBA, dan Operasional](../README.md)
*   **Target Level**: Level 3 - Level 4 (Developer-facing DBA)
*   **Tipe Materi**: Praktik Administrasi & Keselamatan Data

---

## 1. Tujuan Buku
Buku ini bertujuan untuk menyadarkan pengembang terhadap risiko fatal kehilangan data di sistem produksi, memperkenalkan tool cadangan resmi `pg_dump`, melatih pemulihan database menggunakan program client `psql` dan `pg_restore`, serta melatih pembaca melakukan simulasi pemulihan bencana (*restore drill*) secara nyata.

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu membuat script backup database teratur, memulihkan file cadangan `.sql` dan format custom `.dump` ke server database kosong, serta merumuskan langkah-langkah pemulihan pasca-insiden kehilangan data.

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dirancang secara modular dan tidak dibatasi secara kaku. Rencana ekspansi buku ini di masa depan mencakup penulisan bab khusus mengenai recovery drill otomatisasi tim dan sinkronisasi log DBA harian.

---

## 4. Daftar Bab Aktif

| No | Bab | Status | Tipe | Ringkasan Materi |
| :---: | :--- | :---: | :---: | :--- |
| 1 | [Bab 01: Kenapa Backup Database Penting](./bab-01-kenapa-backup-database-penting.md) | **DRAFT** | Praktik | Risiko downtime, ancaman hardware failure dan human-error, tool `pg_dump` format plain vs custom, dan scripting backup. |
| 2 | [Bab 02: Restore & Latihan Pemulihan Data](./bab-02-restore-dan-latihan-pemulihan-data.md) | **DRAFT** | Praktik | Pemulihan data menggunakan kueri `psql` (plain sql), pengoperasian `pg_restore` (custom dump), penanganan konflik data existing, dan simulasi skenario bencana. |

---

## 5. Urutan Belajar
Pembaca direkomendasikan menyelesaikan Bab 01 untuk memahami cara backup dasar, dilanjutkan langsung ke praktik pemulihan di Bab 02.

---

## 6. Koneksi ke Project Nyata
Kombinasi backup dan restore drill terjadwal merupakan pilar utama strategi pencegahan bencana (*disaster recovery plan*) bagi startup, corporate software, atau tim DevOps dalam menggaransi ketersediaan layanan (*high-availability*) bagi ribuan pelanggan aktif.

---

## 7. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi langsung dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
