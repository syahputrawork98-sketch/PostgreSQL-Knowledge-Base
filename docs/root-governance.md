# Root Governance: PostgreSQL-Knowledge-Base

Dokumen ini memuat aturan tingkat root untuk monorepo **PostgreSQL Knowledge Base**.

## Prinsip Aturan Berjenjang

Aturan hanya berlaku **di level folder tempat aturan itu berada** dan **tidak mengatur isi yang lebih dalam**.

- **Rak (R)**: Unit terbesar berdasarkan domain pengetahuan.
- **Sub-Rak (SR)**: Pengelompokan topik di dalam Rak.
- **Buku (BK)**: Kontainer utama untuk materi spesifik.
- **Chapter (CH)**: Bab pembahasan di dalam Buku.
- **Section (SC)**: Sub-bab atau bagian detail di dalam Chapter.

## Struktur Root

- `README.md`: Sebagai pendahuluan singkat (Taxonomy & Matrix).
- `.cursorrules`: Sebagai hukum interaksi AI khusus PostgreSQL.
- `docs/`: Untuk dokumentasi pendukung (termasuk dokumen tata kelola ini).
- `RAK-xx-.../`: Sebagai kumpulan rak utama.

## Konvensi Penomoran

- **Rak**: `RAK-01`, `RAK-02`, ...
- **Sub-Rak**: `SR-01`, `SR-02`, ...
- **Buku**: `BK-01`, `BK-02`, ...
- **Chapter**: `CH-01`, `CH-02`, ...
- **Section**: `SC-01`, `SC-02`, ...

## Ruang Lingkup Root

- Konvensi penamaan folder di tingkat root.
- Struktur folder tingkat root yang kaku.
- Prinsip delegasi aturan berjenjang.
- Konvensi penomoran & AI Persona (PostgreSQL Database Administrator).

## Status

Aktif. Mematuhi Gold Standard PPM V4.
