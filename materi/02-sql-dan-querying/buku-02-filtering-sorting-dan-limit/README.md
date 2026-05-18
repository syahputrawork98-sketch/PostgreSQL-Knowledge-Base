# Buku 02: Filtering, Sorting, dan Limit

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 02: SQL dan Querying](../README.md)
*   **Target Level**: Level 1 - Level 2 (Dasar)
*   **Tipe Materi**: Praktik Kueri

---

## 1. Tujuan Buku
Buku ini bertujuan untuk mengajarkan teknik pemfilteran baris data menggunakan klausa `WHERE`, memanfaatkan operator perbandingan logis untuk pencarian data terperinci, serta mengurutkan baris data hasil kueri secara teratur menggunakan klausa `ORDER BY`.

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu menulis kueri SQL dengan kriteria filter multi-kondisi, menghindari perangkap performa pencarian string parsial, serta melakukan pengurutan data numerik dan alfabet secara dinamis.

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dirancang secara modular dan tidak dibatasi secara kaku. Rencana ekspansi buku ini di masa depan berhak mencakup klausa LIMIT/OFFSET tingkat lanjut dan perilaku paging di database.

---

## 4. Daftar Bab Aktif

| No | Bab | Status | Tipe | Ringkasan Materi |
| :---: | :--- | :---: | :---: | :--- |
| 1 | [Bab 01: Klausa WHERE Dasar](./bab-01-klausa-where-dasar.md) | **DRAFT** | Praktik | Sintaks penyaringan baris data, filtering tipe data text vs numeric, dan performa filter tingkat dasar. |
| 2 | [Bab 02: Operator Perbandingan & Logika](./bab-02-operator-perbandingan-dan-logika.md) | **DRAFT** | Praktik | Operator `=`, `!=`, `>`, `<`, operator logika `AND`, `OR`, `NOT`, operator rentang `BETWEEN`, `IN`, dan pencarian pola string `LIKE`. |
| 3 | [Bab 03: Sorting dengan ORDER BY](./bab-03-sorting-dengan-order-by.md) | **DRAFT** | Praktik | Sintaks pengurutan data ascending (`ASC`) vs descending (`DESC`), multi-column sorting, dan penanganan nilai NULL dalam sort (`NULLS FIRST` / `NULLS LAST`). |

---

## 5. Urutan Belajar
Pembaca direkomendasikan menyelesaikan Bab 01 untuk memahami mekanisme dasar filtering, dilanjutkan ke Bab 02 untuk menguasai filter kompleks, lalu ditutup dengan teknik pengurutan di Bab 03.

---

## 6. Koneksi ke Project Nyata
Kombinasi filter multi-kondisi dan pengurutan data merupakan tulang punggung fitur pencarian (search) dan penyaringan produk (filter katalog) pada platform aplikasi e-commerce modern.

---

## 7. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi langsung dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
