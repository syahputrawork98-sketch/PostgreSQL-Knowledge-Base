# Bab 04: Disk, CPU, Memory, dan Kapasitas Dasar

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 3 - Level 4 (Developer-facing DBA Basics) / Level 6 - Level 7 (DBA & System Administration)
*   **Buku**: [Buku 07: Monitoring Operasional Dasar](./README.md)

---

## 1. Ringkasan Bab
Membahas pemantauan resource hardware mesin server database (Disk I/O, CPU Usage, RAM Memory) serta tanda-tanda kelebihan beban.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami hubungan saturasi resource fisik hardware dengan degradasi performa PostgreSQL.
- Mengidentifikasi gejala Out-Of-Memory (OOM) Killer di sistem operasi host database.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 07 Bab 03 (Log Query Lambat (Pengantar)).

---

## 4. Rencana Outline Sub-Bab
- Hardware vs Software: Mengapa Database yang Ter-Tuning Baik Tetap Butuh Pemantauan Fisik
- Disk I/O Bottleneck: Menemukan Gejala Antrian Disk (Disk Queue Length) Tinggi
- Saturasi CPU: Mengidentifikasi Kueri Berat yang Memakan 100% Core CPU
- Ancaman Memori: Memahami OOM-Killer Linux dan Cara Mencegah Database Mati Mendadak
- Mengukur Ukuran Fisik Database dan Tabel di Disk Menggunakan pg_database_size dan pg_total_relation_size

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail psql commands, SQL privileges script, memory configuration limits, autovacuum thresholds, pg_dump shell scripts, dan monitoring queries untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 07 Buku 05 (Query Tuning Workflow dan Anti-Pattern).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
