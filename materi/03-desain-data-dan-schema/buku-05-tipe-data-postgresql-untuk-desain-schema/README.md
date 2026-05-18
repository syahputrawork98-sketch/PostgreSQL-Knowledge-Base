# Buku 05: Tipe Data PostgreSQL untuk Desain Schema

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 03: Desain Data dan Schema](../README.md)
*   **Target Level**: Level 2 - Level 3 (Desain Data & Relasional)
*   **Tipe Materi**: Praktik Desain Skema & Modeling Data

---

## 1. Tujuan Buku
Buku ini membahas tipe data di PostgreSQL, mengulas cara memilih tipe data optimal (text vs numeric vs boolean) untuk efisiensi penyimpanan fisik, pentingnya penanganan timezone pada data waktu (timestamptz), serta pengenalan Primary Key otomatis (sequence vs identity vs UUID) dan tipe data modern (enum, array, range, JSONB pengantar).

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu memilih tipe data optimal, merancang constraint canggih untuk validasi integritas, mengelola evolusi skema zero-downtime, serta merancang skema terpartisi tingkat menengah.

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dalam buku ini dikembangkan mengikuti kedalaman pemahaman materi desain data dan skema serta tidak dibatasi secara kaku. Buku ini dapat berkembang secara berkala sesuai kebutuhan industri dan pembaruan PostgreSQL.

---

## 4. Daftar Bab Aktif
| 1 | [Bab 01: Text, Numeric, Boolean, dan Pemilihan Tipe](bab-01-text-numeric-boolean-dan-pemilihan-tipe.md) | **DRAFT** | Praktik | Membahas tipe data primitif dasar (text vs char vs varchar, integer vs numeric/decimal vs float, boolean) serta panduan praktis memilih tipe data yang optimal untuk efisiensi penyimpanan fisik. |
| 2 | [Bab 02: Date, Time, Timestamp, dan Timezone](bab-02-date-time-timestamp-dan-timezone.md) | **DRAFT** | Praktik | Mendalami representasi waktu (DATE, TIME, TIMESTAMP, TIMESTAMPTZ) di PostgreSQL, pentingnya timezone-aware storage, serta penanganan tipe INTERVAL. |
| 3 | [Bab 03: UUID, Serial, Bigserial, dan Identity](bab-03-uuid-serial-bigserial-dan-identity.md) | **DRAFT** | Praktik | Membahas desain Primary Key tergenerasi otomatis menggunakan SERIAL/BIGSERIAL, standar SQL baru IDENTITY, serta GUID/UUID untuk sistem terdistribusi. |
| 4 | [Bab 04: Enum, Array, Range, dan JSONB Sebagai Tipe Data](bab-04-enum-array-range-dan-jsonb-sebagai-tipe-data.md) | **DRAFT** | Praktik | Pengenalan tipe data tingkat lanjut (ENUM, ARRAY, RANGE types, dan JSONB) di PostgreSQL sebagai opsi pemodelan data modern terstruktur dan semi-terstruktur. |

---

## 5. Urutan Belajar
Pembaca diwajibkan menyelesaikan bab secara berurutan untuk menjamin kurikulum belajar yang solid dan pemahaman bertahap yang mendalam.

---

## 6. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi langsung dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
