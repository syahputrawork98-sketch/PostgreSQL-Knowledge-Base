# Bab 01: Konsep Full Text Search di PostgreSQL

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 4 - Level 5 (Intermediate Advanced)
*   **Buku**: [Buku 02: Full Text Search](./README.md)

---

## 1. Ringkasan Bab
Membahas konsep dasar Full Text Search (FTS) di PostgreSQL dibandingkan pencarian string tradisional (LIKE / ILIKE).

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami batasan pencarian pencocokan string biasa (LIKE/ILIKE) pada pencarian teks panjang.
- Mengenal proses pembersihan kata (Tokenization, Stemming, Stopwords) pada FTS.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Rak 02 Buku 06 Bab 02 (Predicate IN, BETWEEN, LIKE, dan ILIKE).

---

## 4. Rencana Outline Sub-Bab
- Keterbatasan Pencarian Pola LIKE dan ILIKE Skala Produksi
- Konsep Dasar Natural Language Processing (NLP) di Mesin Database
- Apa Itu Tokenization (Pemecahan Kata) dan Stemming (Pencarian Kata Dasar)
- Fungsi Stopwords dalam Mengabaikan Kata Hubung Umum
- Dukungan Kamus Bahasa (Dictionaries) di PostgreSQL

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan teknis, demo query native, trigger PL/pgSQL, dan analisis monitoring extension untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 02 Buku 06 (NULL, Predicate, dan Ekspresi SQL).

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
