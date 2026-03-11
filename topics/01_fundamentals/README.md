# Topic 01 - Fundamentals

## Ringkasan

Topic ini membahas fondasi PostgreSQL untuk pemula sebelum masuk ke query lanjutan, indexing, transaksi, dan administrasi.

Setelah menyelesaikan topic ini, pembaca diharapkan:
- memahami konsep dasar PostgreSQL
- mengenal object inti seperti database, schema, dan table
- memahami tipe data, default value, dan constraint dasar
- mampu melakukan CRUD dasar dan query sederhana

## Scope Topic

Yang masuk ke topic ini:
- pengenalan PostgreSQL
- instalasi dan koneksi awal
- database, schema, table, row, dan column
- tipe data inti
- default value dan constraint dasar
- CRUD dasar
- filtering, sorting, dan limiting sederhana
- import/export dasar atau seed sederhana
- kesalahan umum pemula
- arah belajar setelah fundamentals

Yang tidak masuk ke topic ini:
- `JOIN` yang serius
- `GROUP BY`, `HAVING`, dan agregasi yang lebih dalam
- subquery, CTE, dan window function
- indexing detail
- transaction detail
- security, replication, administration, dan performance tuning

## Katalog Module

1. `module-01-postgresql-basics`
   Fokus: pengenalan PostgreSQL, database relasional, dan cara berpikir dasarnya.

2. `module-02-installation-and-first-connection`
   Fokus: instalasi, tools dasar, koneksi awal, dan membuat database pertama.

3. `module-03-database-basics`
   Fokus: apa itu database PostgreSQL, lifecycle dasar database, dan hubungan database dengan object lain.

4. `module-04-schema-and-table-basics`
   Fokus: schema, table, row, column, dan struktur object dasar.

5. `module-05-data-types-basics`
   Fokus: tipe data inti PostgreSQL dan kapan menggunakannya.

6. `module-06-default-values`
   Fokus: `DEFAULT`, nilai bawaan, dan peran default value dalam desain data dasar.

7. `module-07-constraints-and-data-integrity`
   Fokus: `NOT NULL`, `UNIQUE`, `PRIMARY KEY`, `FOREIGN KEY`, dan `CHECK`.

8. `module-08-basic-crud-operations`
   Fokus: `INSERT`, `SELECT`, `UPDATE`, dan `DELETE`.

9. `module-09-basic-filtering-sorting-and-limiting`
   Fokus: `WHERE`, `ORDER BY`, `LIMIT`, dan `OFFSET` sebagai jembatan ke topic query.

10. `module-10-basic-import-export-and-seed`
   Fokus: data awal, import/export sederhana, dan kebutuhan setup data latihan.

11. `module-11-common-beginner-mistakes`
   Fokus: kesalahan umum pemula, anti-pattern dasar, dan cara menghindarinya.

12. `module-12-learning-roadmap-and-next-steps`
   Fokus: arah belajar setelah fundamentals dan jembatan ke topic berikutnya.

## Urutan Baca Rekomendasi

1. `module-01-postgresql-basics`
2. `module-02-installation-and-first-connection`
3. `module-03-database-basics`
4. `module-04-schema-and-table-basics`
5. `module-05-data-types-basics`
6. `module-06-default-values`
7. `module-07-constraints-and-data-integrity`
8. `module-08-basic-crud-operations`
9. `module-09-basic-filtering-sorting-and-limiting`
10. `module-10-basic-import-export-and-seed`
11. `module-11-common-beginner-mistakes`
12. `module-12-learning-roadmap-and-next-steps`

## Catatan Evolusi Topic

Struktur module pada topic ini bersifat hidup.

Daftar module dapat berubah jika:
- hasil pembacaan dari sumber resmi PostgreSQL menunjukkan pemecahan topik yang lebih tepat
- ada pembaruan pada dokumentasi resmi atau sumber utama lain
- ada module yang terlalu besar sehingga perlu dipecah
- ada dua module yang ternyata lebih tepat digabung

Tujuannya adalah menjaga topic ini tetap utuh, akurat, dan nyaman dipelajari, bukan membekukan jumlah module secara kaku.

## Catatan Batas Ke Topic Lain

Topik berikut disiapkan sebagai lanjutan di `02_queries`:
- `JOIN`
- `GROUP BY`
- `HAVING`
- subquery
- CTE
- set operations
- window functions

Topik berikut hanya dikenalkan sekilas bila perlu, tetapi pembahasan detailnya berada di topic lain:
- indexing -> `03_indexing`
- transactions -> `05_transactions`

## Prasyarat

- Tidak ada prasyarat teknis khusus.
- Disarankan sudah memahami konsep dasar pemrograman dan penggunaan terminal/editor.

## Aturan Lokal Topic

Lihat folder `docs/` pada topic ini untuk aturan struktur, katalog, dan kontribusi level topic.
