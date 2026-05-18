# Room Context Summary

Dokumen ini adalah ringkasan cepat untuk Room Chat baru agar langsung memahami konteks proyek terbaru tanpa harus membaca seluruh log percakapan historis.

## 1. Identitas Project
**PostgreSQL Living Knowledge Base** — Perpustakaan pribadi PostgreSQL berbasis web library untuk belajar, praktik, interview, dan konsultasi.

## 2. Tujuan Project
Menyediakan pusat pengetahuan PostgreSQL yang terstruktur, mendalam, dan memiliki "mental model" yang kuat (melalui analogi, batas analogi, dan ilustrasi Mermaid) tanpa bergantung sepenuhnya pada instruksi AI setiap saat.

## 3. Status Source of Truth
GitHub (setelah proses commit/push oleh user).

## 4. Status Batch Terakhir
*   **Batch 29** — Final consistency pass materi Batch 21-28 (Selesai).
*   **Batch 30 (Current)** — Docs Sync Besar Setelah Batch 21-29 (Selesai).

## 5. Hasil Pengisian Materi (Batch 6-9, Batch 12-14, Batch 16-17, Batch 21-24, Batch 26-28)
Telah diselesaikan penulisan total **49 Bab DRAFT** di Rak 01 s/d Rak 08 untuk tingkat pemula hingga menengah (Level 0-4). Semua materi ini saat ini berstatus `Status: DRAFT` dan `Status Verifikasi Sumber: REVIEW` karena ditulis secara lokal (*offline-mode*).

## 6. Struktur Root
- `README.md` & `FITUR.md`: Gambaran umum dan rencana fitur.
- `client/` & `server/`: Folder aplikasi (Status: **HOLD**).
- `docs/project/`: Dokumentasi manajemen dan standar proyek.
- `materi/`: Folder utama konten pengetahuan.

## 7. Fokus Saat Ini
Hanya mengerjakan folder `materi/` dan sinkronisasi berkas kontrol di `docs/project/`. Implementasi kode (Client/Server) masih ditangguhkan (**HOLD**) hingga materi cukup matang.

## 8. Struktur Materi
Mengikuti pola: **Rak** (Folder 00-16) $\rightarrow$ **Buku** (Folder Topik) $\rightarrow$ **Bab** (File MD) $\rightarrow$ **Sub-bab** (Heading).

## 9. Kebijakan Sumber (Source Policy)
- Sumber utama wajib dari **PostgreSQL Official Documentation**.
- AI membantu menyusun struktur, draf, dan analogi; bukan sumber kebenaran utama.
- Seluruh 49 materi saat ini wajib diverifikasi terhadap dokumentasi resmi lewat browser pada batch mendatang sebelum diberi status `VERIFIED`.

## 10. Larangan Scope
Dilarang mengerjakan UI/Frontend, Backend API, Authentication, Database App aktif, atau teknologi non-PostgreSQL (seperti MongoDB) sebelum fase materi dinyatakan stabil dan disetujui oleh Owner.

---
*Gunakan dokumen ini sebagai kompas utama setiap kali memulai Room Chat baru.*
