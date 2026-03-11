# Topic 02 - Queries

## Ringkasan

Topic ini membahas query PostgreSQL dari level dasar-menengah hingga cukup kuat untuk membaca, menulis, dan menyusun query yang lebih kompleks.

Setelah menyelesaikan topic ini, pembaca diharapkan:
- memahami struktur dan alur dasar `SELECT`
- mampu menulis query multi-table
- memahami agregasi, pengelompokan, dan pengurutan data
- mampu menggunakan subquery, CTE, set operations, dan window function dasar

## Scope Topic

Yang masuk ke topic ini:
- struktur dasar `SELECT`
- `FROM`, `WHERE`, dan select list
- alias dan column labeling
- `DISTINCT`
- `JOIN`
- agregasi dasar dan lanjutan
- `GROUP BY` dan `HAVING`
- subquery dan derived table
- common table expressions (`WITH`)
- set operations (`UNION`, `INTERSECT`, `EXCEPT`)
- `ORDER BY`
- `LIMIT` dan `OFFSET`
- `VALUES`
- window functions dasar

Yang tidak masuk ke topic ini:
- indexing detail
- optimisasi query mendalam
- transaction management detail
- administration, replication, dan security

## Katalog Module

1. `module-01-select-statement-foundation`
   Fokus: struktur `SELECT`, urutan logis query, projection, dan pembacaan query dasar.

2. `module-02-from-where-and-basic-table-expressions`
   Fokus: `FROM`, `WHERE`, dan table expressions dasar.

3. `module-03-select-list-aliases-and-distinct`
   Fokus: select list, alias, column label, dan `DISTINCT`.

4. `module-04-joins-and-multi-table-querying`
   Fokus: `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, `FULL JOIN`, dan pola multi-table query.

5. `module-05-aggregation-basics`
   Fokus: fungsi agregat dan cara merangkum data.

6. `module-06-group-by-and-having`
   Fokus: `GROUP BY`, `HAVING`, dan pengelompokan data yang lebih rapi.

7. `module-07-subqueries-and-derived-tables`
   Fokus: subquery di `SELECT`, `FROM`, dan `WHERE`, serta derived table dasar.

8. `module-08-common-table-expressions`
   Fokus: penggunaan `WITH`, struktur CTE, dan kapan lebih nyaman dipakai dibanding subquery.

9. `module-09-set-operations`
   Fokus: `UNION`, `UNION ALL`, `INTERSECT`, dan `EXCEPT`.

10. `module-10-order-by-limit-offset-and-values`
   Fokus: `ORDER BY`, `LIMIT`, `OFFSET`, dan `VALUES`.

11. `module-11-window-functions-basics`
   Fokus: konsep window function, `OVER`, `PARTITION BY`, `ORDER BY`, dan use case dasar.

12. `module-12-query-writing-patterns-and-common-mistakes`
   Fokus: pola penulisan query yang rapi, kesalahan umum, dan persiapan masuk ke topic lanjutan.

## Urutan Baca Rekomendasi

1. `module-01-select-statement-foundation`
2. `module-02-from-where-and-basic-table-expressions`
3. `module-03-select-list-aliases-and-distinct`
4. `module-04-joins-and-multi-table-querying`
5. `module-05-aggregation-basics`
6. `module-06-group-by-and-having`
7. `module-07-subqueries-and-derived-tables`
8. `module-08-common-table-expressions`
9. `module-09-set-operations`
10. `module-10-order-by-limit-offset-and-values`
11. `module-11-window-functions-basics`
12. `module-12-query-writing-patterns-and-common-mistakes`

## Catatan Evolusi Topic

Struktur module pada topic ini bersifat hidup.

Daftar module dapat berubah jika:
- hasil pembacaan dari sumber resmi PostgreSQL menunjukkan pemecahan topik yang lebih tepat
- ada pembaruan pada dokumentasi resmi atau sumber utama lain
- ada module yang terlalu besar sehingga perlu dipecah
- ada dua module yang ternyata lebih tepat digabung

Tujuannya adalah menjaga topic ini tetap utuh, akurat, dan nyaman dipelajari, bukan membekukan jumlah module secara kaku.

## Catatan Batas Ke Topic Lain

Topik berikut hanya disentuh seperlunya, tetapi pembahasan detailnya berada di topic lain:
- indexing untuk optimisasi query -> `03_indexing`
- transaction control -> `05_transactions`
- performance analysis dan tuning -> `04_performance`

## Prasyarat

- Sudah menyelesaikan `01_fundamentals` atau setara.
- Sudah memahami CRUD dasar, filtering sederhana, dan struktur table PostgreSQL.

## Aturan Lokal Topic

Lihat folder `docs/` pada topic ini untuk aturan struktur, katalog, dan kontribusi level topic.
