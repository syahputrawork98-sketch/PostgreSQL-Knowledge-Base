# Rak 05: Fitur PostgreSQL Lanjutan

*   **Status Rak**: **SKELETON** (Belum Ditulis)
*   **Target Level**: Level 4 - Level 5 (Intermediate Advanced)
*   **Peran**: Pintu masuk utama bagi pengembang backend untuk mendalami fitur analitik dan tipe data tingkat lanjut di PostgreSQL.
*   **Target Pembaca**: Developer backend yang ingin memaksimalkan engine PostgreSQL untuk fitur-fitur analisis data dinamis, pencarian teks, dan pemrosesan JSON.

---

## 1. Tujuan Rak (Direncanakan)
Rak ini dirancang untuk mengajarkan penggunaan fitur analitik lanjutan PostgreSQL, meliputi pemrosesan data semi-terstruktur JSON/JSONB, implementasi pencarian teks tingkat lanjut (Full-Text Search) menggunakan tsvector dan tsquery, penulisan kueri Window Functions secara komprehensif, serta optimalisasi pemakaian Views dan Materialized Views untuk cache pelaporan analitik.

---

## 2. Kebijakan Struktur (No Fixed Limit)
Sesuai dengan [Kebijakan Kedalaman Expert-Scale](../../docs/project/book-chapter-depth-policy.md) dan [Standardisasi Struktur](../../docs/project/materi-structure-decision.md), jumlah buku dan bab pada rak ini dikembangkan secara organik mengikuti kedalaman materi dan tidak dibatasi secara kaku.

---

## 3. Daftar Buku yang Direncanakan (Skeleton)

| No | Buku / Folder | Status | Rencana Fokus Materi |
| :---: | :--- | :---: | :--- |
| 1 | `buku-01-json-dan-jsonb-processing` | *SKELETON* | Perbandingan JSON vs JSONB, indexing GIN untuk JSONB, operator pencarian, dan manipulasi data JSONB. |
| 2 | `buku-02-full-text-search-fts` | *SKELETON* | Implementasi Full-Text Search menggunakan tsvector, tsquery, fuzzy-search, dan optimalisasi kamus bahasa. |
| 3 | `buku-03-advanced-analytics-dan-views` | *SKELETON* | Penulisan Window Functions, frame specifiers, pembuatan standard Views, dan sinkronisasi Materialized Views. |

---

## 4. Status & Kebijakan Dokumen
*   **Status Penulisan**: `SKELETON` (Menunggu keputusan aktivasi batch menengah dari User).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Bab Expert-Scale](../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../docs/project/materi-expert-scale-gap-matrix.md)
    *   [Standar Penulisan Materi](../../docs/project/materi-writing-standard.md)
