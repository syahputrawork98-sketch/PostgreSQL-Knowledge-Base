# Topic Analogy And Visual Guidelines - 01 Fundamentals

Dokumen ini menyimpan keputusan lokal untuk penggunaan analogi dan aset visual pada topic `01_fundamentals`.

## Prinsip Umum

- analogi digunakan untuk membantu konsep abstrak
- SVG atau diagram digunakan bila struktur, relasi, atau alur lebih mudah dipahami secara visual
- analogi dan visual tidak wajib di semua module
- aset visual harus membantu pemahaman, bukan hanya hiasan

## Rekomendasi Per Module

- `module-01-postgresql-basics`: analogi + SVG
- `module-02-installation-and-first-connection`: tanpa analogi, SVG opsional
- `module-03-database-basics`: analogi ringan + SVG
- `module-04-schema-and-table-basics`: analogi + SVG
- `module-05-data-types-basics`: tabel visual, SVG opsional
- `module-06-default-values`: analogi ringan, SVG opsional
- `module-07-constraints-and-data-integrity`: sangat disarankan ada diagram
- `module-08-basic-crud-operations`: tidak wajib
- `module-09-basic-filtering-sorting-and-limiting`: tidak wajib
- `module-10-basic-import-export-and-seed`: tidak wajib
- `module-11-common-beginner-mistakes`: infografik ringan opsional
- `module-12-learning-roadmap-and-next-steps`: roadmap SVG sangat disarankan

## Catatan Implementasi

- analogi sebaiknya singkat dan langsung terhubung ke konsep teknis
- satu module tidak perlu memiliki terlalu banyak visual
- SVG lebih disukai untuk diagram yang sederhana, ringan, dan mudah dirawat di repositori
- jika module memakai visual, simpan asetnya di dalam folder module tersebut agar scope tetap jelas
