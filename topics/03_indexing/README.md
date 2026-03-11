# Topic 03 - Indexing

## Ringkasan

Topic ini membahas indexing PostgreSQL sebagai fondasi untuk memahami bagaimana query dapat dipercepat, dibatasi, atau justru menjadi mahal jika desain index tidak tepat.

Setelah menyelesaikan topic ini, pembaca diharapkan:
- memahami konsep dasar index di PostgreSQL
- mengenal jenis index resmi yang tersedia di PostgreSQL
- memahami fitur dan batasan tiap jenis index
- mampu memetakan kebutuhan query ke strategi indexing yang lebih tepat

## Scope Topic

Yang masuk ke topic ini:
- pengantar indexing
- jenis-jenis index resmi PostgreSQL
- multi-column index
- hubungan index dengan `ORDER BY`
- combining multiple indexes
- unique index
- expression index
- partial index
- index-only scans dan covering index
- operator classes dan operator families
- collations terkait index
- pemeriksaan penggunaan index

Yang tidak masuk ke topic ini:
- tuning performa sistem secara luas
- analisis `EXPLAIN` yang mendalam
- administrasi storage tingkat lanjut
- transaction management detail
- security dan replication

## Katalog Module

1. `module-01-indexes-introduction`
   Fokus: pengantar index, tujuan penggunaan index, dan konsep dasarnya di PostgreSQL.

2. `module-02-index-types-overview`
   Fokus: gambaran umum jenis-jenis index yang tersedia di PostgreSQL.

3. `module-03-btree-indexes`
   Fokus: B-Tree index sebagai jenis index default dan use case utamanya.

4. `module-04-hash-indexes`
   Fokus: hash index, karakteristiknya, dan kapan layak dipertimbangkan.

5. `module-05-gist-indexes`
   Fokus: GiST index, fleksibilitasnya, dan use case khusus.

6. `module-06-sp-gist-indexes`
   Fokus: SP-GiST index dan kasus data yang cocok untuk pendekatan ini.

7. `module-07-gin-indexes`
   Fokus: GIN index dan penggunaannya untuk array, JSONB, atau full-text style workloads.

8. `module-08-brin-indexes`
   Fokus: BRIN index, efisiensi storage, dan karakter data yang cocok.

9. `module-09-multicolumn-indexes`
   Fokus: multi-column index dan pengaruh urutan kolom terhadap query.

10. `module-10-indexes-and-order-by`
   Fokus: hubungan index dengan `ORDER BY` dan kapan sorting bisa dibantu index.

11. `module-11-combining-multiple-indexes`
   Fokus: bagaimana PostgreSQL dapat menggabungkan lebih dari satu index.

12. `module-12-unique-indexes`
   Fokus: unique index dan kaitannya dengan integritas data.

13. `module-13-indexes-on-expressions`
   Fokus: expression index dan kasus saat query bergantung pada fungsi atau ekspresi.

14. `module-14-partial-indexes`
   Fokus: partial index, manfaatnya, dan batas penggunaannya.

15. `module-15-index-only-scans-and-covering-indexes`
   Fokus: index-only scan, covering index, dan `INCLUDE`.

16. `module-16-operator-classes-and-operator-families`
   Fokus: operator classes, operator families, dan pengaruhnya terhadap perilaku index.

17. `module-17-indexes-and-collations`
   Fokus: hubungan index dengan collation dan dampaknya terhadap pencarian/sorting.

18. `module-18-examining-index-usage`
   Fokus: cara meninjau apakah index digunakan dan kapan evaluasi index diperlukan.

## Urutan Baca Rekomendasi

1. `module-01-indexes-introduction`
2. `module-02-index-types-overview`
3. `module-03-btree-indexes`
4. `module-04-hash-indexes`
5. `module-05-gist-indexes`
6. `module-06-sp-gist-indexes`
7. `module-07-gin-indexes`
8. `module-08-brin-indexes`
9. `module-09-multicolumn-indexes`
10. `module-10-indexes-and-order-by`
11. `module-11-combining-multiple-indexes`
12. `module-12-unique-indexes`
13. `module-13-indexes-on-expressions`
14. `module-14-partial-indexes`
15. `module-15-index-only-scans-and-covering-indexes`
16. `module-16-operator-classes-and-operator-families`
17. `module-17-indexes-and-collations`
18. `module-18-examining-index-usage`

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
- penulisan query dan bentuk query -> `02_queries`
- analisis performa, `EXPLAIN`, dan tuning lebih luas -> `04_performance`
- administrasi storage atau maintenance tingkat lanjut -> `09_administration`

## Prasyarat

- Sudah menyelesaikan `01_fundamentals` dan `02_queries` atau setara.
- Sudah memahami `SELECT`, `WHERE`, `JOIN`, dan bentuk query umum.
- Sudah memahami struktur table dan constraint dasar PostgreSQL.

## Aturan Lokal Topic

Lihat folder `docs/` pada topic ini untuk aturan struktur, katalog, dan kontribusi level topic.
