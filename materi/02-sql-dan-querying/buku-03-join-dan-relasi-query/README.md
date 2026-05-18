# Buku 03: JOIN dan Relasi Query

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 02: SQL dan Querying](../README.md)
*   **Target Level**: Level 1 - Level 2 (Dasar)
*   **Tipe Materi**: Praktik Kueri

---

## 1. Tujuan Buku
Buku ini bertujuan untuk memetakan cara kerja penggabungan data relasional antar tabel di tingkat kueri SQL, memahami perbedaan logis antara kecocokan data parsial dan total, serta menguasai penggunaan klausa `INNER JOIN`, `LEFT JOIN`, dan `RIGHT JOIN` secara taktis.

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu menulis kueri penggabungan multi-tabel, menghindari anomali data Cartesian Product (`CROSS JOIN` tidak sengaja), serta mendiagnosis kueri join lambat yang diakibatkan oleh ketiadaan klausa `ON` yang tepat.

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dirancang secara modular dan tidak dibatasi secara kaku. Rencana pengembangan buku ini di masa depan mencakup perluasan `FULL OUTER JOIN`, `CROSS JOIN`, dan kueri `Self JOIN`.

---

## 4. Daftar Bab Aktif

| No | Bab | Status | Tipe | Ringkasan Materi |
| :---: | :--- | :---: | :---: | :--- |
| 1 | [Bab 01: Konsep Relasi Antar Tabel](./bab-01-konsep-relasi-antar-tabel.md) | **DRAFT** | Konseptual | Dasar hubungan data primer-sekunder (FK/PK) di tingkat kueri, dan diagram Venn visual konsep JOIN. |
| 2 | [Bab 02: INNER JOIN](./bab-02-inner-join.md) | **DRAFT** | Praktik | Sintaks penggabungan data eksklusif, performa kueri inner join, dan multi-table inner join. |
| 3 | [Bab 03: LEFT dan RIGHT JOIN](./bab-03-left-dan-right-join.md) | **DRAFT** | Praktik | Sintaks penggabungan inklusif sisi kiri dan kanan, penanganan nilai NULL hasil ketidakcocokan data, dan praktik terbaik memilih jenis join. |

---

## 5. Urutan Belajar
Pembaca wajib menempuh alur berurutan dari Bab 01 (konseptual relasi), Bab 02 (inner join), lalu Bab 03 (outer join) untuk menjamin kurikulum belajar yang solid.

---

## 6. Koneksi ke Project Nyata
Keterampilan menulis kueri JOIN yang presisi merupakan kunci utama dalam memilah relasi kompleks database e-commerce, seperti menampilkan histori transaksi pengguna beserta detail barang belanjaan.

---

## 7. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi langsung dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
