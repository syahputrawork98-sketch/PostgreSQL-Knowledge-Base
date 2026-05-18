# Riwayat Project: Batch 21 sampai 30

Halaman ini mendokumentasikan catatan riwayat dan pencapaian pengembangan proyek PostgreSQL Living Knowledge Base untuk fase menengah kedua (Batch 21 s/d Batch 30, termasuk sub-batch terkait).

## Ringkasan Perjalanan Batch

### **Batch 21 — Data Seeding Dasar**
- **Fokus**: Drafting materi data seeding dasar serta perbandingan antara Seed Data vs Dummy Data vs Production Data.
- **Hasil**: Terbentuknya kerangka pemahaman krusial mengenai siklus hidup data awal aplikasi.

### **Batch 22 — Kontrol Versi Skema (Schema Versioning)**
- **Fokus**: Drafting materi mengenai teknik Schema Versioning / Version Control untuk skema database.
- **Hasil**: Pemahaman mendalam tentang tata kelola migrasi skema database yang aman.

### **Batch 23 — Kueri List & Detail untuk Aplikasi**
- **Fokus**: Drafting materi kueri list/detail data, penyaringan (filtering), pengurutan (sorting), dan pembagian halaman (pagination).
- **Hasil**: Panduan teknis praktis yang sangat berguna bagi pengembang backend.

### **Batch 24 — Transaksi Database Dasar**
- **Fokus**: Drafting materi transaksi database untuk aplikasi, meliputi pemahaman BEGIN, COMMIT, dan ROLLBACK secara fundamental.
- **Hasil**: Pemahaman penting mengenai konsistensi data dan integritas transaksional.

### **Batch 25 — Pembersihan Batch 21-24**
- **Fokus**: Cleanup dan standardisasi konsistensi materi yang telah ditulis sepanjang Batch 21 s/d Batch 24.
- **Hasil**: Penyesuaian tata bahasa, istilah teknis, dan pranala antar dokumen.

### **Batch 26 — Pengantar Indexing**
- **Fokus**: Drafting materi pengantar indexing yang ditargetkan bagi pengembang backend untuk optimasi performa awal.
- **Hasil**: Draf bab indexing tingkat dasar berhasil diselesaikan.

### **Batch 27 — EXPLAIN & Kueri Plan Dasar**
- **Fokus**: Drafting materi cara membaca EXPLAIN dan dasar-dasar pemahaman kueri plan PostgreSQL.
- **Hasil**: Fondasi kemampuan diagnosis kueri lambat bagi developer.

### **Batch 28 — Backup, Restore, & Mitigasi Risiko**
- **Fokus**: Drafting materi backup, restore, dan kesadaran risiko kehilangan data.
- **Hasil**: Panduan operasional dasar keselamatan data selesai disusun.

### **Batch 29 — Penyelarasan Materi Akhir**
- **Fokus**: Final consistency pass materi Batch 21 s/d Batch 28 (melunakkan klaim absolut, verifikasi pranala internal, dan penyelarasan penamaan variabel).
- **Hasil**: Validasi konten 100% konsisten. Jumlah draf bertambah secara resmi menjadi **49 Bab DRAFT** di Rak 01 s/d Rak 08.

### **Batch 30 — Sinkronisasi Dokumentasi Besar**
- **Fokus**: Sinkronisasi seluruh dokumen kontrol proyek pasca keberhasilan drafting Batch 21 s/d Batch 29.
- **Hasil**: Penyelesaian Batch 30 ditandai dengan dokumen status yang mutakhir.

---

## Batch 30.1 — Addendum Sistem Dokumentasi Project
- **Status**: **Selesai**
- **Fokus**: Meningkatkan portabilitas manajemen proyek dan meletakkan kerangka (skeleton) untuk pantauan ekosistem dinamis.
- **Hasil**:
  1. Pembuatan direktori `docs/project-instructions/` yang berisi instruksi portabel mandiri untuk Room Chat 00, Room Chat 01, Gemini (Executor), serta instruksi utama ChatGPT Project.
  2. Penyusunan dokumen alur verifikasi resmi (`docs/project/verification-workflow.md`) menggunakan PostgreSQL Official Documentation sebagai acuan utama.
  3. Pembuatan direktori riwayat teratur (`docs/history/`) untuk merangkum perjalanan proyek per 10 batch.
  4. Penyusunan skeleton dan templat Rak 17 (`materi/17-berita-isu-dan-ekosistem-postgresql/`) untuk memfasilitasi berita dinamis PostgreSQL di masa depan tanpa mengubah total draf bab materi utama (tetap 49 Bab DRAFT).

## Batch 30.2 — Addendum Expert-Scale Book/Chapter Depth Policy
- **Status**: **Selesai**
- **Tujuan**: Mengunci aturan resmi bahwa PostgreSQL Living Knowledge Base adalah perpustakaan teknis expert-scale dan meniadakan asumsi pola 3-4 bab per buku sebagai batas standar penulisan.
- **Berkas Baru / Diubah**:
  - **Berkas Baru**: [book-chapter-depth-policy.md](file:///i:/Workspace/Workspace-Syahputrawork/04-Storage-Hubs/PostgreSQL-Knowledge-Base/docs/project/book-chapter-depth-policy.md)
  - **Berkas Diubah**:
    - [materi-writing-standard.md](file:///i:/Workspace/Workspace-Syahputrawork/04-Storage-Hubs/PostgreSQL-Knowledge-Base/docs/project/materi-writing-standard.md) (Menambahkan bagian 13 tentang kedalaman buku/bab)
    - [materi-structure-decision.md](file:///i:/Workspace/Workspace-Syahputrawork/04-Storage-Hubs/PostgreSQL-Knowledge-Base/docs/project/materi-structure-decision.md) (Menambahkan catatan Batch 30.2 dan mendaftarkan Rak 17 secara resmi)
    - [add-instructions-chatgpt-project.md](file:///i:/Workspace/Workspace-Syahputrawork/04-Storage-Hubs/PostgreSQL-Knowledge-Base/docs/project-instructions/add-instructions-chatgpt-project.md) (Penyelarasan instruksi portabel)
    - [room-chat-00-instructions.md](file:///i:/Workspace/Workspace-Syahputrawork/04-Storage-Hubs/PostgreSQL-Knowledge-Base/docs/project-instructions/room-chat-00-instructions.md) (Penyelarasan panduan PM untuk menjaga batasan depth)
    - Berkas Kontrol: [current-status.md](file:///i:/Workspace/Workspace-Syahputrawork/04-Storage-Hubs/PostgreSQL-Knowledge-Base/docs/project/current-status.md), [roadmap.md](file:///i:/Workspace/Workspace-Syahputrawork/04-Storage-Hubs/PostgreSQL-Knowledge-Base/docs/project/roadmap.md), [room-context-summary.md](file:///i:/Workspace/Workspace-Syahputrawork/04-Storage-Hubs/PostgreSQL-Knowledge-Base/docs/project/room-context-summary.md)
- **Keputusan Penting**:
  1. **Tidak Ada Batas Maksimal Bab**: Jumlah bab per buku tidak dibatasi hanya 3–4 bab, melainkan fleksibel disesuaikan cakupan topik.
  2. **Skeleton Pattern vs Standar**: Pola 3-4 bab saat ini murni merupakan efek samping kerangka skeleton awal.
  3. **Pembedahan / Pemekaran Bab**: Pembahasan yang terlalu padat dapat dipecah menjadi beberapa bab mandiri, dan deep dive dapat dijadikan bab/buku terpisah.
  4. **Ekspansi Berbasis Audit**: Setiap penambahan bab atau pemekaran buku baru ke depan harus didahului dengan audit terstruktur oleh Room Chat 01.
