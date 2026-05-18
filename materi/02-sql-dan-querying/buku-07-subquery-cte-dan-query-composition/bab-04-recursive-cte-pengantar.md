# Bab 04: Recursive CTE (Pengantar)

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 2 (Menengah)
*   **Buku**: [Buku 07: Subquery, CTE, dan Query Composition](./README.md)

---

## 1. Ringkasan Bab
Mengenalkan dasar-dasar Recursive CTE (WITH RECURSIVE) untuk memproses struktur data hierarkis seperti bagan organisasi atau kategori produk bertingkat di PostgreSQL.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami logika perulangan kueri (recursion) di SQL.
- Menguasai sintaks WITH RECURSIVE, Anchor Member, dan Recursive Member.
- Menulis kueri hierarkis sederhana untuk menelusuri data relasi parent-child.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 07 Bab 03 (CTE Dasar).

---

## 4. Rencana Outline Sub-Bab
- Tantangan Mengolah Data Hierarkis (Bagan Organisasi / Kategori Pohon)
- Sintaks Struktur WITH RECURSIVE
- Memahami Anchor Member, UNION ALL, dan Recursive Member
- Alur Eksekusi Iteratif Mesin Database PostgreSQL
- Bahaya Loop Tanpa Batas (Infinite Loop) dan Cara Mencegahnya

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, kueri SQL demo, analogi visual, dan latihan kecil untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 03 Buku 01 Bab 03 (Relasi One-to-One dan One-to-Many).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
