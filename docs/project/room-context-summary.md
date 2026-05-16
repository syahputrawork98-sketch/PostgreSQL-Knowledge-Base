# Room Context Summary

Dokumen ini adalah ringkasan cepat untuk Room Chat baru agar langsung memahami konteks proyek tanpa harus membaca seluruh log.

## 1. Identitas Project
**PostgreSQL Living Knowledge Base** — Perpustakaan pribadi PostgreSQL berbasis web library untuk belajar, praktik, interview, dan konsultasi.

## 2. Tujuan Project
Menyediakan pusat pengetahuan PostgreSQL yang terstruktur, mendalam, dan memiliki "mental model" yang kuat (melalui analogi dan ilustrasi) tanpa bergantung sepenuhnya pada instruksi AI setiap saat.

## 3. Status Source of Truth
GitHub (setelah proses commit/push oleh user).

## 4. Status Batch Terakhir
**Batch 5.1** — Docs Sync dan Anti-Blunder Audit (Selesai).

## 5. Struktur Root
- `README.md` & `FITUR.md`: Gambaran umum dan rencana fitur.
- `client/` & `server/`: Folder aplikasi (Status: **HOLD**).
- `docs/project/`: Dokumentasi manajemen dan standar proyek.
- `materi/`: Folder utama konten pengetahuan.

## 6. Fokus Saat Ini
Hanya mengerjakan folder `materi/`. Implementasi kode (Client/Server) masih ditangguhkan hingga materi cukup matang.

## 7. Struktur Materi
Mengikuti pola: **Rak** (Folder 00-16) → **Buku** (Folder Topik) → **Bab** (File MD) → **Sub-bab** (Heading).

## 8. Struktur Expert-Scale
Dirancang untuk Level 0 (Pemula) hingga Level 9 (Pakar).

## 9. Rak Prioritas Awal
Rak 01 s/d 04 (Fondasi, SQL Dasar, Desain Data, Integrasi Aplikasi) untuk target Level 0 s/d Level 4.

## 10. Standar Penulisan
Wajib menggunakan template yang ada di `docs/project/` (`materi-template-rak.md`, `materi-template-buku.md`, `materi-template-bab.md`).

## 11. Workflow
User (Syah) → Room Chat 00 (Manager) → Gemini 3 Flash (Executor) → Laporan → Commit/Push → Review.

## 12. Larangan Scope
Dilarang mengerjakan UI/Frontend, Backend API, Authentication, Database App aktif, atau teknologi non-PostgreSQL (seperti MongoDB) sebelum fase materi selesai.

---
*Gunakan dokumen ini sebagai kompas utama setiap kali memulai Room Chat baru.*
