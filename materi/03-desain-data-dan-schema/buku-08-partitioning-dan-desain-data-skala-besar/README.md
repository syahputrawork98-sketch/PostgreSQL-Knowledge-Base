# Buku 08: Partitioning dan Desain Data Skala Besar

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 03: Desain Data dan Schema](../README.md)
*   **Target Level**: Level 2 - Level 3 (Desain Data & Relasional)
*   **Tipe Materi**: Praktik Desain Skema & Modeling Data

---

## 1. Tujuan Buku
Buku ini memperkenalkan Table Partitioning deklaratif di PostgreSQL sebagai strategi desain data skala besar, mengulas metode Range, List, dan Hash Partitioning, serta merancang Partition Key yang selaras dengan pola akses query aplikasi untuk mencegah degradasi performa.

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu memilih tipe data optimal, merancang constraint canggih untuk validasi integritas, mengelola evolusi skema zero-downtime, serta merancang skema terpartisi tingkat menengah.

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dalam buku ini dikembangkan mengikuti kedalaman pemahaman materi desain data dan skema serta tidak dibatasi secara kaku. Buku ini dapat berkembang secara berkala sesuai kebutuhan industri dan pembaruan PostgreSQL.

---

## 4. Daftar Bab Aktif
| 1 | [Bab 01: Partitioning Sebagai Desain Data](bab-01-partitioning-sebagai-desain-data.md) | **DRAFT** | Praktik | Mengenalkan konsep deklaratif Table Partitioning di PostgreSQL sebagai arsitektur pembagian tabel besar menjadi tabel anak yang lebih kecil secara fisik namun transparan secara logis. |
| 2 | [Bab 02: Range, List, dan Hash Partitioning (Pengantar)](bab-02-range-list-dan-hash-partitioning-pengantar.md) | **DRAFT** | Praktik | Membahas tiga metode partisi deklaratif bawaan PostgreSQL: partisi rentang (Range), partisi daftar (List), dan partisi acak seimbang (Hash). |
| 3 | [Bab 03: Partition Key dan Risiko Query Pattern](bab-03-partition-key-dan-risiko-query-pattern.md) | **DRAFT** | Praktik | Membahas pentingnya pemilihan Partition Key yang selaras dengan pola pencarian kueri aplikasi untuk menghindari pencarian seluruh partisi. |

---

## 5. Urutan Belajar
Pembaca diwajibkan menyelesaikan bab secara berurutan untuk menjamin kurikulum belajar yang solid dan pemahaman bertahap yang mendalam.

---

## 6. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi langsung dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
