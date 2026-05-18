# Bab 04: VACUUM, Bloat, dan Hubungannya dengan MVCC

*   **Status**: **DRAFT**
*   **Status Verifikasi Sumber**: **REVIEW**
*   **Target Level**: Level 5 - Level 6 (Intermediate-Expert)
*   **Buku**: [Buku 04: MVCC dan Snapshot](./README.md)

---

## 1. Ringkasan Bab
Pengenalan dampak samping MVCC berupa penumpukan tuple sampah (Bloat) serta peran proses VACUUM untuk mengklaim kembali ruang kosong.

---

## 2. Tujuan Belajar
Setelah menyelesaikan bab ini, pembaca diharapkan mampu:
- Memahami mengapa baris data yang dihapus/diperbarui tidak langsung hilang dari disk fisik database (Dead Tuples).
- Mengenal konsep dasar fungsi VACUUM dan Autovacuum dalam membersihkan dead tuples.

---

## 3. Prasyarat Belajar
Sebelum mempelajari bab ini, pembaca wajib menuntaskan materi:
*   Buku 04 Bab 03 (xmin, xmax, dan Row Versioning (Pengantar)).

---

## 4. Rencana Outline Sub-Bab
- Dampak Samping MVCC: Akumulasi Dead Tuples (Baris Sampah)
- Definisi Table Bloat dan Dampak Negatifnya Terhadap Performa Kueri
- Peran Utilitas VACUUM: Membersihkan Dead Tuples dan Mengupdate Visibilitas Map
- Pengenalan Autovacuum: Pembersih Sampah Database Otomatis yang Berjalan di Background
- Bahaya Menghambat Autovacuum: Risiko Transaction ID Wraparound (ID Transaksi Habis)

---

## 5. Rujukan Kebijakan & Penulisan Materi
*   **Catatan Drafting**: Isi detail penjelasan konsep concurrency, simulasi deadlock sclient, dan visualisasi tuple metadata xmin/xmax untuk bab ini akan dikembangkan secara komprehensif pada batch drafting lanjutan.
*   **Kebijakan Kedalaman**: Penulisan bab ini wajib mematuhi [Kebijakan Kedalaman Bab Expert-Scale](../../../docs/project/book-chapter-depth-policy.md) (analogi visual, latihan mandiri, catatan interview DBA).
*   **Relasi ke Materi Lain**: Rak 08 DBA & Operasional.

---

## 6. Referensi Resmi (Official Docs Placeholder)
*   *Status*: Belum diverifikasi langsung dengan dokumentasi resmi.
*   *Tautan Rujukan*: [PostgreSQL Official Documentation (Placeholder)](https://www.postgresql.org/docs/)
