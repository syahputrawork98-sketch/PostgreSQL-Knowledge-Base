# Bab 03: Schema Privilege dan search_path (Pengantar)

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 3 - Level 4 (Developer-facing DBA Basics)
*   **Buku**: [Buku 03: Roles, Privileges, dan Akses Database](./README.md)

---

## 1. Ringkasan Bab
Membahas hak akses di level Namespace (Schema) serta cara kerja urutan resolusi nama tabel via search_path.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Mampu mengamankan hak akses skema database menggunakan USAGE dan CREATE privileges.
- Memahami cara kerja parameter search_path dalam menentukan tabel mana yang akan dieksekusi.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 03 Bab 02 (GRANT, REVOKE, dan Privilege Dasar).

---

## 4. Rencana Outline Sub-Bab
- Hak Akses Skema: Mengapa Hak Akses Tabel Saja Tidak Cukup Tanpa USAGE Skema
- Sintaks Pengamanan Skema: GRANT USAGE ON SCHEMA [nama_skema] TO [role]
- Cara Kerja Resolusi Nama: Memahami Parameter search_path
- Bahaya Keamanan search_path yang Tidak Aman (SQL Injection di Level Skema)
- Praktik Terbaik: Mengatur search_path secara Eksplisit pada Koneksi Aplikasi

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail psql commands, SQL privileges script, memory configuration limits, autovacuum thresholds, pg_dump shell scripts, dan monitoring queries untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 03 Buku 01 (Tabel, Baris, dan Kolom).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
