# 🐘 PostgreSQL Knowledge Base: The Relational Database King

> **"The World's Most Advanced Open Source Relational Database."**

## 📖 Apa itu PostgreSQL? (The What)
**PostgreSQL** (atau sering disebut Postgres) adalah sistem basis data relasional (*RDBMS*) tingkat dewa yang paling disegani oleh para arsitek sistem. Postgres bukan sekadar tempat menyimpan data; ia adalah mesin komputasi yang menjamin integritas data dengan akurasi matematis.

Dalam ekosistem *The Learning Matrix*, PostgreSQL mewakili paradigma **Consistency & Absolute Integrity**: di mana setiap transaksi harus mematuhi standar ACID (*Atomicity, Consistency, Isolation, Durability*) tanpa pengecualian sedikit pun.

---

## 🎯 Mengapa Kita Menggunakan PostgreSQL? (The Why)
PostgreSQL adalah pilihan mutlak ketika "Kebenaran Data" tidak boleh dikompromi:
1.  **Integritas Tanpa Kompromi**: Fitur *Foreign Keys*, *Unique Constraints*, dan *Check Constraints* memastikan tidak ada data "sampah" yang masuk.
2.  **Ekstensibilitas Tanpa Batas**: Bisa menangani data JSON (seperti MongoDB), Data Geospasial (via PostGIS), hingga Data Vektor AI (via pgvector).
3.  **Standar SQL Murni**: Mematuhi standar SQL sangat ketat, memudahkan pengguna untuk melakukan kueri kompleks yang presisi.
4.  **Reliability (Andalan Industri)**: Dipercaya oleh perbankan hingga teknologi skala dunia untuk menjaga transaksi finansial dan inventaris kritis.

---

## 🧭 Visi Arsitektural: PostgreSQL as the Source of Truth
Repositori ini membedah PostgreSQL melalui tiga lensa utama:
1. **Structural Excellence**: Bagaimana merancang skema Normalisasi 3NF untuk mencegah anomali dan redudansi data.
2. **Query Performance**: Teknik analisis eksekusi kueri tingkat mahir menggunakan `EXPLAIN ANALYZE` dan strategi pengindeksan cerdas.
3. **Reliability**: Pengelolaan konkurensi tingkat tinggi menggunakan teknologi MVCC (*Multi-Version Concurrency Control*).

## 🧬 Jalur Matriks: Matrix Cross-Path (The What)
Sesuai konstitusi `00-Mapping-Road`, hub ini adalah persilangan:
- **Sumbu-Y**: Semua Bahasa (Logic Core).
- **Sumbu-X**: RAK-02 (Server Runtime) ➡️ **RAK-04 (Storage Hub)**.

Di sini kita belajar **"Bagaimana membangun pondasi data yang selamanya akan jujur dan akurat"**.

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
