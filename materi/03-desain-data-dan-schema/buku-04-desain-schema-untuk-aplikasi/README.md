# Buku 04: Desain Schema untuk Aplikasi

*   **Status Buku**: **SKELETON** (Belum Ditulis)
*   **Rak**: [Rak 03: Desain Data dan Schema](../README.md)
*   **Target Level**: Level 2 - Level 3 (Desain Data)
*   **Tipe Materi**: Praktik Desain & Kasus Nyata

---

## 1. Tujuan Buku
Buku ini dirancang untuk membahas pola perancangan skema database fisik untuk kasus aplikasi industri modern, meliputi pemisahan tenant pada skema SaaS (Software as a Service), optimalisasi skema e-commerce untuk penanganan transaksi konkuren tinggi, serta standardisasi penamaan objek database (tabel, kolom, indeks, skema).

---

## 2. Hasil Belajar (Direncanakan)
Setelah menyelesaikan buku ini, pembaca diharapkan mampu merancang skema SaaS multi-tenant yang aman dan terisolasi, menyusun skema e-commerce transaksional bebas anomali, serta menerapkan panduan penamaan objek database secara rapi dan profesional di lingkungan tim pengembang.

---

## 3. Kebijakan Struktur (No Fixed Limit)
Buku ini masih berupa skeleton. Jumlah bab yang ditargetkan tidak dibatasi secara kaku dan berhak dimekarkan sesuai kompleksitas pola desain sistem modern lainnya.

---

## 4. Daftar Bab (Skeleton / Direncanakan)

| No | Bab | Status | Tipe | Ringkasan Rencana Materi |
| :---: | :--- | :---: | :---: | :--- |
| 1 | [Bab 01: Pola Desain Schema SaaS](./bab-01-pola-desain-schema-saas.md) | *SKELETON* | Desain | Pola isolasi tenant (Shared Database/Shared Schema vs Shared DB/Isolated Schema), dan performa query tenant. |
| 2 | [Bab 02: Desain Schema E-Commerce](./bab-02-desain-schema-e-commerce.md) | *SKELETON* | Desain | Merancang tabel order, order detail, stok barang, keranjang, dan manajemen data inventori transaksional. |
| 3 | [Bab 03: Naming Convention Database](./bab-03-naming-convention-database.md) | *SKELETON* | Standar | Aturan penamaan singular vs plural, lowercase underscore, penamaan foreign key, dan prefiks indeks. |

---

## 5. Hubungan dengan Buku Lain
Buku ini mengaplikasikan seluruh teori integritas data dari Buku 02 dan bentuk normalisasi dari Buku 03 langsung ke studi kasus nyata.

---

## 6. Status & Kebijakan Dokumen
*   **Status Penulisan**: `SKELETON` (Menunggu alokasi pengerjaan di bawah persetujuan User).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
