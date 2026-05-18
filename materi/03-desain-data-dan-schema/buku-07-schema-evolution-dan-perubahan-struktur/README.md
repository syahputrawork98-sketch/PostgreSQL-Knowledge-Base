# Buku 07: Schema Evolution dan Perubahan Struktur

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 03: Desain Data dan Schema](../README.md)
*   **Target Level**: Level 2 - Level 3 (Desain Data & Relasional)
*   **Tipe Materi**: Praktik Desain Skema & Modeling Data

---

## 1. Tujuan Buku
Buku ini membahas manajemen evolusi skema database secara aman di PostgreSQL, mengulas risiko table locking saat mengeksekusi ALTER TABLE, merancang perubahan skema yang kompatibel ke belakang (backward-compatible) untuk zero-downtime deployment, serta taktik memindahkan data jutaan baris secara bertahap.

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu memilih tipe data optimal, merancang constraint canggih untuk validasi integritas, mengelola evolusi skema zero-downtime, serta merancang skema terpartisi tingkat menengah.

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dalam buku ini dikembangkan mengikuti kedalaman pemahaman materi desain data dan skema serta tidak dibatasi secara kaku. Buku ini dapat berkembang secara berkala sesuai kebutuhan industri dan pembaruan PostgreSQL.

---

## 4. Daftar Bab Aktif
| 1 | [Bab 01: ALTER TABLE dan Risiko Perubahan Schema](bab-01-alter-table-dan-risiko-perubahan-schema.md) | **DRAFT** | Praktik | Membahas pengoperasian perintah ALTER TABLE, risiko penguncian tabel (table lock), serta perintah perubahan skema yang aman (metadata-only) vs berbahaya (full table rewrite). |
| 2 | [Bab 02: Backward-Compatible Schema Change](bab-02-backward-compatible-schema-change.md) | **DRAFT** | Praktik | Membahas teknik merancang perubahan skema database yang kompatibel ke belakang (backward-compatible) untuk memfasilitasi deployment aplikasi zero-downtime. |
| 3 | [Bab 03: Migrasi Data dan Transisi Schema Bertahap](bab-03-migrasi-data-dan-transisi-schema-bertahap.md) | **DRAFT** | Praktik | Membahas strategi memindahkan jutaan data lama ke struktur skema baru secara bertahap menggunakan batching kueri untuk mencegah kehabisan lock memori dan downtime. |

---

## 5. Urutan Belajar
Pembaca diwajibkan menyelesaikan bab secara berurutan untuk menjamin kurikulum belajar yang solid dan pemahaman bertahap yang mendalam.

---

## 6. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi langsung dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
