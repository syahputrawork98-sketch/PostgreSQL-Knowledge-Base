# Bab 01: Logical Backup dengan pg_dump

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 3 - Level 4 (Developer-facing DBA Basics) / Level 6 - Level 7 (DBA & System Administration)
*   **Buku**: [Buku 06: Backup, Restore, dan PITR Pengantar](./README.md)

---

## 1. Ringkasan Bab
Membahas taktik pencadangan logis menggunakan program standard `pg_dump` dan `pg_dumpall` untuk skala database kecil-menengah.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Mampu membedakan backup format teks SQL biasa vs format direktori/arsip kustom.
- Mampu menjalankan pencadangan satu tabel, satu skema, atau satu klaster database penuh.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 01 (Backup, Restore, dan Risiko Data).

---

## 4. Rencana Outline Sub-Bab
- Definisi Logical Backup: Mengekstrak Skema dan Data Menjadi Perintah SQL / Format Arsip
- Mencadangkan Database Tunggal: Sintaks psql `pg_dump -F c -b -v -f [nama_file]`
- Memilih Format Output: Plain Text SQL (-F p), Custom Archive (-F c), dan Directory (-F d)
- Pencadangan Khusus: Hanya Skema (-s) atau Hanya Data (-a)
- pg_dumpall: Mencadangkan Seluruh Klaster Database, Role, dan Tablespace

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail psql commands, SQL privileges script, memory configuration limits, autovacuum thresholds, pg_dump shell scripts, dan monitoring queries untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Buku 01 (Backup, Restore, dan Risiko Data).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
