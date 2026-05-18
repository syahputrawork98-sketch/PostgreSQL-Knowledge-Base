# Bab 03: Log Query Lambat (Pengantar)

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 3 - Level 4 (Developer-facing DBA Basics) / Level 6 - Level 7 (DBA & System Administration)
*   **Buku**: [Buku 07: Monitoring Operasional Dasar](./README.md)

---

## 1. Ringkasan Bab
Membahas teknik ekstraksi and pembacaan kueri bermasalah dari log sistem menggunakan file log teks PostgreSQL.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami format pencatatan log kueri lambat di sistem berkas server.
- Mampu menemukan kueri lambat terpopuler melalui pemindaian pola log dasar.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 07 Bab 02 (pg_stat_database dan pg_stat_user_tables) dan Buku 04 Bab 04 (Logging Parameter).

---

## 4. Rencana Outline Sub-Bab
- Bagaimana Log Teks PostgreSQL Menyimpan Informasi Kueri Lambat
- Struktur Baris Log Kueri Lambat: Informasi Timestamp, PID, Kueri, dan Durasi Durability
- Menemukan Log Kueri Lambat Menggunakan Perintah Pencarian Teks Dasar (Grep/Grep-Search Offline)
- Pengenalan Awal Utilitas Pihak Ketiga pgBadger untuk Visualisasi Log
- SOP Rotasi Log Agar Tidak Menyebabkan Disk Server Penuh

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail psql commands, SQL privileges script, memory configuration limits, autovacuum thresholds, pg_dump shell scripts, dan monitoring queries untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Buku 04 Bab 04 (Logging Parameter (Pengantar)).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
