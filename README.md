# 🐘 PostgreSQL Knowledge Base: The Relational Database King

> **"The World's Most Advanced Open Source Relational Database."**

Repositori ini adalah **Blueprint Utama (Rak 04)** dalam ekosistem *The Learning Matrix*. Fokus utamanya adalah mengeksplorasi integritas data transaksional, skema terstruktur, dan optimasi kueri SQL menggunakan PostgreSQL.

---

## 🎯 Visi Arsitektural: Absolute Data Integrity (The Why)
PostgreSQL menjamin kebenaran data di atas segalanya melalui disiplin relasional yang ketat:
1.  **ACID Compliance**: Menjamin transaksi aman, konsisten, terisolasi, dan tahan lama.
2.  **Extensibility**: Mendukung tipe data kustom, operator, dan ekstensi (seperti PostGIS).
3.  **Advanced Indexing**: Berbagai tipe indeks (B-Tree, GIN, GiST) untuk berbagai pola akses.

Visi repositori ini adalah membedah **PostgreSQL as the Source of Truth**:
1. **Structural Excellence**: Bagaimana merancang skema Normalisasi 3NF untuk mencegah anomali data.
2. **Query Performance**: Analisis eksekusi kueri menggunakan `EXPLAIN ANALYZE` dan optimasi indeks.
3. **Reliability**: Pengelolaan konkurensi tingkat tinggi menggunakan MVCC (*Multi-Version Concurrency Control*).

## 🧬 Jalur Matriks: Matrix Cross-Path (The What)
Sesuai konstitusi `00-Mapping-Road`, hub ini adalah persilangan:
- **Sumbu-Y**: Semua Bahasa (Logic Core).
- **Sumbu-X**: RAK-02 (Server Runtime) ➡️ **RAK-04 (Storage Hub)**.

Di sini kita belajar **"Bagaimana membangun pondasi data yang tidak akan pernah dusta"**.

---

## 🏗️ Struktur 8-Rak (The Taxonomy)
1. **RAK-01: Anatomy & Landscape** (Relational Model, Postgres History, Process Architecture).
2. **RAK-02: Foundation & Core Rules** (SQL Standard, Data Types, Constraints, Basic CRUD).
3. **RAK-03: Evolution & Interfacing** (Complex Joins, Window Functions, CTEs, Views).
4. **RAK-04: Core Mechanics & Internals** (Storage Pages, MVCC, B-Tree Mechanics, Heap).
5. **RAK-05: Ecosystem & Tooling** (psql, pgAdmin, DBeaver, Schema Migration tools).
6. **RAK-06: The Underworld** (Write-Ahead Logging - WAL, Vacuuming, Replication, Backup).
7. **RAK-07: Specialization** (Performance Tuning, Full-Text Search, JSONB, PostGIS).
8. **RAK-08: Matrix Intersection** (The Bridge: How Postgres relates to RAK-07 Version Control).

---

## 📊 Status Proyek
Detail status per Rak dapat dilihat di [status.md](./status.md).

> [!NOTE]
> Proyek ini mengikuti standar dokumentasi **Gold Standard PPM V4**.

- `README.md` adalah pendahuluan ini.
- `RaK-xx/` berisi semua rak utama.

## Dokumentasi
- [docs/root-governance.md](./docs/root-governance.md)
