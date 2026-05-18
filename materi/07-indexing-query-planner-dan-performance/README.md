# Rak 07: Indexing, Query Planner, dan Performance

*   **Status Rak**: **DRAFT / REVIEW**
*   **Target Level**: Level 3 - Level 4 (Developer-facing Basics) / Level 5 - Level 6 (Advanced Diagnostics)
*   **Peran**: Pintu masuk utama bagi pengembang backend untuk mendiagnosis performa kueri lambat dan melakukan indexing taktis.
*   **Target Pembaca**: Developer backend yang ingin menguasai teknik mempercepat kueri baca menggunakan indeks serta membaca rencana eksekusi database.

---

## 1. Tujuan Rak
Rak ini bertujuan mengajarkan teknik indexing dasar menggunakan indeks B-Tree, memahami kapan indeks membantu kueri, menggunakan perintah `EXPLAIN` untuk melihat estimasi biaya kueri, serta mengajari pembaca cara menganalisis dan membaca rencana eksekusi database (*Query Plan*) secara mandiri.

---

## 2. Kebijakan Struktur (No Fixed Limit)
Sesuai dengan [Kebijakan Kedalaman Expert-Scale](../../docs/project/book-chapter-depth-policy.md) and [Standardisasi Struktur](../../docs/project/materi-structure-decision.md), jumlah buku dan bab pada rak ini dikembangkan secara organik mengikuti kedalaman optimasi performa dan tidak dibatasi secara kaku.

---

## 3. Prasyarat Belajar
Pembaca wajib menyelesaikan **Rak 02 (SQL dan Querying)** sebelum memulai rak ini, agar pemahaman struktur query SQL dasar sudah matang.

---

## 4. Daftar Buku Aktif & DRAFT

| No | Buku / Folder | Status | Fokus Materi | Jumlah Bab |
| :---: | :--- | :---: | :--- | :---: |
| 1 | [Buku 01: Indexing Dasar untuk Developer](./buku-01-indexing-dasar-untuk-developer/) | **DRAFT** | Pengenalan konsep indeks B-Tree, kapan indeks membantu kueri, perintah EXPLAIN, dan membaca rencana eksekusi query plan dasar. | 4 Bab |

---

## 5. Jalur Belajar yang Disarankan
Pembaca direkomendasikan menyelesaikan Buku 01 secara urut dari Bab 01 s/d Bab 04 untuk membangun pemahaman bertahap dari pemahaman indeks fisik hingga diagnosis runtime kueri.

---

## 6. Output yang Diharapkan
*   Memahami kapan harus membuat indeks dan kapan indeks justru memperlambat kueri tulis.
*   Mampu mendiagnosis kueri lambat menggunakan perintah `EXPLAIN`.
*   Mampu mendeteksi pola akses query planner seperti Sequential Scan vs Index Scan vs Bitmap Index Scan.

---

## 7. Kebijakan & Manajemen Dokumen
*   **Status Penulisan**: `DRAFT` (Seluruh 4 bab aktif masih berupa draf materi awal).
*   **Status Verifikasi Sumber**: `REVIEW` (Menunggu validasi resmi dengan PostgreSQL Official Documentation).
*   **Pranala Kebijakan**:
    *   [Kebijakan Kedalaman Bab Expert-Scale](../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../docs/project/materi-expert-scale-gap-matrix.md)
    *   [Standar Penulisan Materi](../../docs/project/materi-writing-standard.md)
