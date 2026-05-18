# Bab 02: Memory Parameter (Pengantar)

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 3 - Level 4 (Developer-facing DBA Basics)
*   **Buku**: [Buku 04: Configuration dan Parameter Penting](./README.md)

---

## 1. Ringkasan Bab
Membahas alokasi memori di PostgreSQL dan parameter krusial seperti shared_buffers, work_mem, maintenance_work_mem, dan effective_cache_size.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami konsep shared memory vs local process memory di PostgreSQL.
- Memahami peranan work_mem dalam mempercepat proses sort/join di memori RAM.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 04 Bab 01 (postgresql.conf dan Konsep Konfigurasi).

---

## 4. Rencana Outline Sub-Bab
- Mental Model Arsitektur Memori PostgreSQL: Shared Memory vs Local Process Memory
- shared_buffers: Cache Utama Halaman Data (Berapa Ukuran Ideal?)
- work_mem: Alokasi Memori per Operasi Sort/Hash (Bahaya Mengaturnya Terlalu Besar)
- maintenance_work_mem: Memori Khusus untuk Operasi Indeks dan VACUUM
- effective_cache_size: Perkiraan Kapasitas OS Page Cache bagi Query Planner

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail psql commands, SQL privileges script, memory configuration limits, autovacuum thresholds, pg_dump shell scripts, dan monitoring queries untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 07 Buku 03 Bab 05 (Join, Sort, Hash, dan Materialize Nodes).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
