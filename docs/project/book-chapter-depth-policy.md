# Book & Chapter Depth Policy

## Tujuan
Dokumen ini mengunci aturan bahwa PostgreSQL Living Knowledge Base adalah perpustakaan teknis expert-scale, bukan modul kursus ringkas.

## Keputusan Utama
Tidak ada batas maksimal jumlah bab per buku.

## Prinsip
- **Jumlah Bab Fleksibel**: Jumlah bab sepenuhnya ditentukan oleh kebutuhan kompetensi, kedalaman topik, dan kelengkapan domain ilmu PostgreSQL yang dibahas.
- **Topik Sempit vs Besar**: Satu buku boleh pendek (misal 3 bab) jika topiknya memang sempit dan terfokus. Namun, satu buku boleh panjang (misal 12 bab atau lebih) jika topiknya besar dan membutuhkan penjabaran detail.
- **Pola 3–4 Bab Bukan Standar**: Pola 3–4 bab yang ada saat ini merupakan efek dari pembentukan skeleton/batch awal, bukan standar final atau batas maksimal.
- **Pemekaran & Pemecahan**: Bab besar yang terlalu panjang atau memiliki kompleksitas tinggi boleh dipecah menjadi beberapa bab. *Deep dive* atau sub-bab penting boleh dinaikkan posisinya menjadi bab mandiri.
- **Audit Sebelum Ekspansi**: Sebelum melakukan pemekaran atau ekspansi bab/buku secara masif, audit struktur menyeluruh perlu dilakukan untuk menjaga kualitas dan keseimbangan materi.

## Contoh Klasifikasi Kedalaman Buku
- **Buku Kecil (3–4 bab)**: Membahas topik yang sangat spesifik dan terfokus (contoh: *Data Seeding*).
- **Buku Sedang (5–8 bab)**: Membahas topik dengan tingkat kompleksitas menengah (contoh: *Query Optimization Dasar*).
- **Buku Besar (9–15 bab)**: Membahas topik domain yang luas (contoh: *Desain Skema & Integritas Data*).
- **Buku Expert / Deep Dive (15+ bab)**: Membahas topik tingkat lanjut yang memerlukan pemahaman internal mendalam jika dibutuhkan (contoh: *Transaksi & MVCC Internals*).

## Kriteria Buku Dianggap Cukup (Completion Criteria)
Sebuah buku tidak dianggap selesai hanya karena sudah memenuhi kuantitas bab tertentu. Buku dianggap cukup apabila telah mencakup:
1. **Fondasi Teoretis & Mental Model**: Konsep dasar, analogi dunia nyata, dan batas-batas analogi.
2. **Variasi Kasus Penting**: Skenario praktis yang sering ditemui di lapangan.
3. **Kesalahan Umum (Common Mistakes)**: Antipattern dan cara menghindarinya.
4. **Contoh Praktik Nyata**: Kueri SQL lengkap dan struktur skema yang siap pakai.
5. **Hubungan ke Materi Lain**: Peta relasi dengan bab/buku di rak lain.
6. **Jalur Lanjut / Deep Dive**: Rujukan untuk eksplorasi tingkat lanjut bila diperlukan.

## Audit Struktur
Sebelum dilakukan ekspansi besar, Room Chat 01 (Read-Only Analyst) dapat diminta melakukan audit resmi bertajuk:
> **Audit Kelengkapan Buku dan Bab Materi PostgreSQL Expert-Scale**

Audit ini bertujuan untuk mengidentifikasi celah materi, bab-bab yang layak dipecah, serta merekomendasikan penambahan bab/buku baru secara terstruktur.
