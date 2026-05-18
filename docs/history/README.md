# Project History Archive

Folder ini berfungsi sebagai arsip riwayat perjalanan pengembangan proyek **PostgreSQL Living Knowledge Base**. Arsip ini mencatat pencapaian, keputusan desain, dan evolusi proyek dari waktu ke waktu secara terorganisir per 10 batch.

## Aturan Pencatatan Riwayat (History Rules)
1. **Pengelompokan per 10 Batch**: Riwayat dikelompokkan ke dalam berkas arsip yang mencakup 10 batch utama (misal: Batch 0-10, Batch 11-20, Batch 21-30).
2. **Sub-Batch (Addendum)**: Setiap sub-batch atau batch titik (seperti Batch 5.1, Batch 15.1, Batch 30.1) akan dicatat sebagai addendum langsung di dalam berkas arsip induknya:
   - Batch 30.1 dimasukkan ke dalam [batch-21-sampai-30.md](./batch-21-sampai-30.md)
   - Batch 40.1 (di masa mendatang) dimasukkan ke dalam `batch-31-sampai-40.md`
3. **Bukan Pengganti Berkas Kontrol Aktif**: Berkas riwayat ini adalah arsip retrospektif statis. Berkas ini **bukan** pengganti dokumen kontrol aktif seperti `current-status.md` atau `roadmap.md` yang harus selalu menggambarkan status nyata dan arah terbaru.

## Daftar Berkas Arsip
*   [Batch 00 s/d 10](./batch-00-sampai-10.md): Fondasi, Standardisasi, dan Inisialisasi Draft Awal.
*   [Batch 11 s/d 20](./batch-11-sampai-20.md): Perluasan SQL Dasar, Relasi Schema, dan Restrukturisasi 36 Bab.
*   [Batch 21 s/d 30](./batch-21-sampai-30.md): Seeding, Versioning, Transaksi, Indexing Dasar, Backup, dan Sinkronisasi Dokumentasi Sistem.
