# Buku 06: Constraint Lanjutan dan Integritas Data

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 03: Desain Data dan Schema](../README.md)
*   **Target Level**: Level 2 - Level 3 (Desain Data & Relasional)
*   **Tipe Materi**: Praktik Desain Skema & Modeling Data

---

## 1. Tujuan Buku
Buku ini mendalami perancangan aturan integritas data tingkat lanjut di PostgreSQL, mengulas keunikan bersyarat menggunakan Partial Unique Index, mencegah tumpang tindih (overlap) jangkauan data via Exclusion Constraint, menunda validasi transaksi dengan Deferrable Constraint, serta memanfaatkan Generated Column dan Domain kustom.

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu memilih tipe data optimal, merancang constraint canggih untuk validasi integritas, mengelola evolusi skema zero-downtime, serta merancang skema terpartisi tingkat menengah.

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dalam buku ini dikembangkan mengikuti kedalaman pemahaman materi desain data dan skema serta tidak dibatasi secara kaku. Buku ini dapat berkembang secara berkala sesuai kebutuhan industri dan pembaruan PostgreSQL.

---

## 4. Daftar Bab Aktif
| 1 | [Bab 01: Unique Constraint, Unique Index, dan Partial Unique Index](bab-01-unique-constraint-unique-index-dan-partial-unique-index.md) | **DRAFT** | Praktik | Membahas perbedaan Unique Constraint vs Unique Index, serta kekuatan Partial Unique Index untuk memvalidasi keunikan data bersyarat. |
| 2 | [Bab 02: Exclusion Constraint](bab-02-exclusion-constraint.md) | **DRAFT** | Praktik | Membahas konsep dan penerapan Exclusion Constraint di PostgreSQL untuk mencegah tumpang tindih (overlap) data jangkauan waktu atau pemesanan barang konkuren. |
| 3 | [Bab 03: Deferrable Constraint](bab-03-deferrable-constraint.md) | **DRAFT** | Praktik | Membahas mekanisme penangguhan validasi constraint (Deferrable Constraint) hingga akhir transaksi, memecahkan masalah pembaruan kunci melingkar (circular dependency). |
| 4 | [Bab 04: Generated Column, Domain, dan Integritas Terstruktur](bab-04-generated-column-domain-dan-integritas-terstruktur.md) | **DRAFT** | Praktik | Membahas kolum tergenerasi otomatis (Generated Column) dan pendefinisian domain tipe data kustom (Domain) untuk standarisasi integritas data. |

---

## 5. Urutan Belajar
Pembaca diwajibkan menyelesaikan bab secara berurutan untuk menjamin kurikulum belajar yang solid dan pemahaman bertahap yang mendalam.

---

## 6. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi langsung dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
