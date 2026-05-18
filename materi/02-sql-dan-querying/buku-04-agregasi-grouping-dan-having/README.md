# Buku 04: Agregasi, Grouping, dan Having

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 02: SQL dan Querying](../README.md)
*   **Target Level**: Level 1 - Level 2 (Dasar)
*   **Tipe Materi**: Praktik Kueri

---

## 1. Tujuan Buku
Buku ini bertujuan untuk mengajarkan teknik kalkulasi matematika kelompok data menggunakan fungsi agregasi, mempartisi baris data hasil kueri ke dalam kelompok-kelompok logis menggunakan klausa `GROUP BY`, serta melakukan penyaringan data di tingkat grup agregasi menggunakan klausa `HAVING`.

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu menulis kueri pelaporan analitik awal, memahami perbedaan mendasar pemfilteran baris (`WHERE`) vs pemfilteran grup (`HAVING`), serta menggunakan fungsi agregat numerik dan non-numerik secara tepat.

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dirancang secara modular dan tidak dibatasi secara kaku. Rencana pengembangan buku ini di masa depan mencakup perluasan fungsi agregasi lanjutan lainnya (`MIN`, `MAX`, string aggregation `string_agg`).

---

## 4. Daftar Bab Aktif

| No | Bab | Status | Tipe | Ringkasan Materi |
| :---: | :--- | :---: | :---: | :--- |
| 1 | [Bab 01: Fungsi Agregasi COUNT, SUM, AVG](./bab-01-fungsi-agregasi-count-sum-avg.md) | **DRAFT** | Praktik | Sintaks dasar fungsi kalkulasi global, performa kueri agregasi, dan penanganan nilai NULL dalam agregat. |
| 2 | [Bab 02: Mengelompokkan Data dengan GROUP BY](./bab-02-mengelompokkan-data-dengan-group-by.md) | **DRAFT** | Praktik | Sintaks pengelompokan data logis berdasarkan kolom, batasan pemanggilan kolom non-agregat dalam select, dan multi-column grouping. |
| 3 | [Bab 03: Menyaring Grup dengan HAVING](./bab-03-menyaring-grup-dengan-having.md) | **DRAFT** | Praktik | Sintaks penyaringan data pasca-agregat, analisis perbedaan logika WHERE vs HAVING, dan kombinasi filter multi-tingkat. |

---

## 5. Urutan Belajar
Pembaca direkomendasikan menyelesaikan Bab 01 untuk memahami fungsi matematika dasar, dilanjutkan ke pengelompokan di Bab 02, dan ditutup dengan teknik filter grup di Bab 03.

---

## 6. Koneksi ke Project Nyata
Kombinasi agregasi, grouping, dan having sangat krusial dalam menyajikan dasbor analitik bisnis aplikasi backend, seperti menghitung total omzet penjualan harian atau menyaring kategori barang yang terjual di atas ambang kuantitas tertentu.

---

## 7. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi langsung dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
