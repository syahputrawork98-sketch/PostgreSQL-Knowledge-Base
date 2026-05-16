# Keputusan Struktur Materi (Expert-Scale)

Dokumen ini mencatat keputusan arsitektural mengenai struktur folder `materi/` dalam proyek PostgreSQL Living Knowledge Base.

## Konteks
Struktur awal (Batch 1) dirancang untuk kebutuhan basic hingga intermediate. Namun, untuk mendukung visi proyek sebagai perpustakaan pengetahuan yang hidup (living knowledge base) bagi level expert, struktur tersebut perlu dinaikkan skalanya (expert-scale).

## Keputusan Utama
1.  **Nama Folder**: Tetap menggunakan `materi/` sebagai root directory pengetahuan.
2.  **Organisasi Rak**: Rak didefinisikan berdasarkan **Domain Ilmu** PostgreSQL, bukan sekadar urutan belajar tutorial.
3.  **Navigasi vs Konten**: Jalur belajar (learning paths) dipisahkan ke dalam rak khusus `00-index-dan-jalur-belajar/` agar tidak bercampur dengan materi referensi murni.
4.  **Skala Level**: Struktur mendukung perjalanan belajar dari **Level 0 (Pemula)** hingga **Level 9 (Expert/Pakar)**.
5.  **Penomoran Rak**: Menggunakan dua digit (00-16) untuk menjaga urutan logis di sistem file.

## Daftar Rak Final
| No | Nama Rak | Fokus Utama | Target Level |
|---|---|---|---|
| 00 | Index dan Jalur Belajar | Navigasi & Roadmap | Lintas Level |
| 01 | Orientasi, Sejarah, dan Fondasi PostgreSQL | Orientasi, sejarah, filosofi, dan fondasi awal | L0 - L1 |
| 02 | SQL dan Querying | Bahasa SQL & DML/DQL | L1 - L2 |
| 03 | Desain Data dan Schema | Modeling & Integritas | L2 - L3 |
| 04 | PostgreSQL untuk Aplikasi | Dev Workflow & ORM | L3 - L4 |
| 05 | Fitur Lanjutan | JSONB, FTS, Window Funct. | L4 - L5 |
| 06 | Transaksi & MVCC | Concurrency & Isolation | L5 - L6 |
| 07 | Indexing & Performance | Optimasi & Planner | L5 - L6 |
| 08 | Admin & DBA | Ops & Konfigurasi | L6 - L7 |
| 09 | Backup & High Availability | Data Safety & Replication | L7 - L8 |
| 10 | Security & Governance | RBAC, RLS, Audit | L6 - L8 |
| 11 | Arsitektur Internals | Engine & Storage | L8 |
| 12 | Troubleshooting | Debugging & Logs | L6 - L8 |
| 13 | Studi Kasus | Real Project Implementation | L3 - L8 |
| 14 | Interview & Konsultasi | Karir & Expert Advice | L4 - L9 |
| 15 | Referensi Cepat | Cheatsheets | Lintas Level |
| 16 | Version Updates | Release Notes | Lintas Level |

## Strategi Implementasi Bertahap
- **Fase A (Batch 2)**: Kunci struktur besar (Expert-Scale skeleton).
- **Fase B (Batch 3-5)**: Pengisian kerangka buku prioritas untuk Level 0-4.
- **Fase C**: Pengisian konten mendalam untuk Level 5-6.
- **Fase D**: Pengisian materi DBA/Ops untuk Level 7-8.
- **Fase E**: Materi Internals dan Konsultasi Level 9.

## Catatan Refinement (Batch 3)
Setelah Batch 2, Rak 01 diperjelas agar menampung materi non-teknis/fondasi konseptual seperti sejarah PostgreSQL, asal-usul POSTGRES, filosofi, analogi, dan evolusi PostgreSQL. Perubahan dilakukan sebagai batch refinement kecil karena struktur masih skeleton.

---
*Diputuskan pada: 2026-05-16*
*Oleh: Room Chat 00 & Syah (Owner)*
