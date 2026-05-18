# Standar Penulisan Materi

Dokumen ini berisi keputusan resmi mengenai standar penulisan konten dalam folder `materi/` pada proyek PostgreSQL Living Knowledge Base.

## 1. Struktur Organisasi
Materi disusun mengikuti hierarki:
**Rak** → **Buku** → **Bab** → **Sub-bab**

## 2. Definisi Struktur
- **Rak**: Folder utama yang mewakili domain ilmu PostgreSQL (contoh: `02-sql-dan-querying`).
- **Buku**: Folder di dalam Rak yang mengelompokkan tema belajar tertentu (contoh: `buku-01-query-dasar`).
- **Bab**: File markdown (`.md`) utama yang membahas satu topik spesifik.
- **Sub-bab**: Heading (H2, H3, dst.) di dalam file Bab.

## 3. Aturan Sub-bab
Secara default, sub-bab adalah bagian dari satu file Bab. Sub-bab baru dipisahkan menjadi file sendiri **hanya jika**:
- Materi terlalu panjang dan berat dibaca.
- Memiliki banyak contoh SQL yang kompleks.
- Layak menjadi pembahasan mandiri (misalnya kategori *deep dive*).

## 4. Status Lifecycle Materi
Setiap dokumen materi wajib mencantumkan statusnya:
- **SKELETON**: Baru berupa kerangka/outline.
- **DRAFT**: Materi sedang ditulis.
- **REVIEW**: Menunggu peninjauan teknis.
- **VERIFIED**: Sudah diverifikasi kebenarannya.
- **FINAL**: Sudah dipoles dan siap sebagai referensi utama.
- **NEEDS_UPDATE**: Memerlukan pembaruan informasi.
- **DEPRECATED**: Materi sudah tidak relevan dengan versi terbaru.

## 5. Status Lifecycle Ilustrasi
- **PLANNED**: Ilustrasi sudah direncanakan.
- **DRAFT**: Dalam proses pembuatan.
- **REVIEW**: Menunggu feedback.
- **VERIFIED**: Sudah sesuai konsep teknis.
- **FINAL**: Versi akhir.

## 6. Analogi
Setiap Bab wajib menyertakan:
- **Analogi Sehari-hari**: Penjelasan konsep menggunakan contoh dunia nyata untuk memudahkan pemula.
- **Batas Analogi**: Penjelasan di mana analogi tersebut tidak lagi akurat secara teknis agar tidak terjadi salah paham.

## 7. Ilustrasi
Ilustrasi sangat disarankan, terutama untuk materi abstrak seperti MVCC, transaksi, locking, indexing, query planner, replikasi, dan keamanan.

## 8. Format Ilustrasi
Format utama ilustrasi adalah **Mermaid diagram** yang ditulis langsung di dalam file markdown untuk kemudahan pemeliharaan.

## 9. Referensi
Setiap materi wajib mengarah ke sumber resmi. Prioritas sumber:
1.  PostgreSQL Official Documentation
2.  PostgreSQL Release Notes
3.  Dokumentasi extension resmi
4.  Artikel teknis tepercaya
5.  Catatan praktik & eksperimen lokal

## 10. Konflik Sumber
Jika terjadi perbedaan antara catatan pribadi/artikel luar dengan dokumentasi resmi, maka **PostgreSQL Official Documentation** adalah acuan utama yang benar.

## 11. Gaya Penulisan (Layered Writing)
Materi ditulis secara berlapis untuk mendukung berbagai kebutuhan pembaca:
1.  **Ringkasan Cepat**: Untuk pembaca yang butuh inti materi.
2.  **Istilah Penting**: Glosarium lokal bab tersebut.
3.  **Analogi & Ilustrasi**: Membangun *mental model*.
4.  **Konsep & Detail**: Penjelasan teknis mendalam.
5.  **Contoh (Dasar & Project)**: Implementasi nyata.
6.  **Kesalahan Umum & Interview Note**: Tips praktis.

## 12. Kebijakan Sumber (Source Policy)
- **Primary Source**: PostgreSQL Official Documentation.
- **Release Notes**: Rujukan utama untuk update versi dan fitur baru.
- **Conflict Rule**: Jika konflik, dokumentasi resmi menang.
- **AI Rule**: AI hanya alat bantu draft/analogi, bukan sumber kebenaran utama.
- **Verified Status**: Materi wajib diverifikasi dengan rujukan resmi sebelum berstatus `VERIFIED`.

## 13. Kedalaman Buku dan Jumlah Bab
- **Tidak Ada Batas Maksimal Bab**: Jumlah bab per buku bersifat fleksibel dan disesuaikan sepenuhnya dengan kedalaman kompetensi dan kelengkapan materi.
- **Pola 3-4 Bab Bukan Standar**: Pola 3-4 bab yang ada saat ini merupakan struktur skeleton awal dan bukan merupakan batas standar penulisan final.
- **Fleksibilitas Jumlah Bab**: Jumlah bab dapat mengikuti kebutuhan kompetensi. Satu buku boleh pendek (misal 3 bab) jika topiknya sempit, atau panjang (misal 12 bab atau lebih) jika topiknya besar.
- **Pemekaran & Pemecahan Bab**: Sub-bab atau pembahasan yang terlalu panjang/kompleks dapat dinaikkan posisinya menjadi bab mandiri.
- **Deep Dive Mandiri**: Topik-topik yang membutuhkan pembahasan mendalam (*deep dive*) boleh dibuat sebagai bab atau bahkan buku tersendiri.
- **Dukungan Level 0 s/d Level 9**: Struktur materi harus dirancang secara modular dan mendalam agar mampu mendukung perjalanan belajar dari pemula (Level 0) hingga ahli/pakar (Level 9).
