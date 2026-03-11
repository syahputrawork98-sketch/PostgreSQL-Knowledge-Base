# Topic 05 - Transactions

## Ringkasan

Topic ini membahas transaksi PostgreSQL dengan struktur yang dekat ke dokumentasi resmi PostgreSQL, terutama Chapter 13 `Concurrency Control`.

Setelah menyelesaikan topic ini, pembaca diharapkan:
- memahami perilaku concurrency di PostgreSQL
- memahami isolation level utama
- memahami explicit locking dan jenis lock dasar
- mengenali deadlock, serialization failure, dan caveats penting

## Scope Topic

Yang masuk ke topic ini:
- introduction to concurrency control
- transaction isolation
- isolation level utama PostgreSQL
- explicit locking
- table-level locks
- row-level locks
- page-level locks
- deadlocks
- advisory locks
- consistency checks di level aplikasi
- serialization failure handling
- caveats
- locking and indexes

Yang tidak masuk ke topic ini:
- replication internals
- administrasi sistem tingkat lanjut
- tuning server secara luas
- security hardening
- troubleshooting operasional yang sangat spesifik

## Katalog Module

1. `module-01-concurrency-control-introduction`
   Fokus: pengantar concurrency control dan mengapa topik ini penting di PostgreSQL.

2. `module-02-transaction-isolation-overview`
   Fokus: gambaran umum transaction isolation dan tujuan penggunaannya.

3. `module-03-read-committed-isolation-level`
   Fokus: perilaku `Read Committed` di PostgreSQL.

4. `module-04-repeatable-read-isolation-level`
   Fokus: perilaku `Repeatable Read` dan trade-off utamanya.

5. `module-05-serializable-isolation-level`
   Fokus: `Serializable`, jaminan konsistensi, dan biaya yang menyertainya.

6. `module-06-explicit-locking`
   Fokus: konsep explicit locking dan kapan mekanisme ini relevan.

7. `module-07-table-level-locks`
   Fokus: table-level locks dan pengaruhnya terhadap operasi tabel.

8. `module-08-row-level-locks`
   Fokus: row-level locks dan concurrency pada level baris data.

9. `module-09-page-level-locks`
   Fokus: page-level locks dan perannya di PostgreSQL.

10. `module-10-deadlocks`
   Fokus: deadlock, penyebab umum, dan cara berpikir saat menganalisisnya.

11. `module-11-advisory-locks`
   Fokus: advisory locks dan kapan cocok dipakai di level aplikasi.

12. `module-12-data-consistency-checks-at-the-application-level`
   Fokus: consistency checks di level aplikasi saat constraint database saja tidak cukup.

13. `module-13-enforcing-consistency-with-serializable-and-blocking-locks`
   Fokus: menjaga konsistensi dengan serializable transactions dan explicit blocking locks.

14. `module-14-serialization-failure-handling`
   Fokus: serialization failure dan pola penanganannya.

15. `module-15-concurrency-caveats`
   Fokus: caveats penting yang perlu dipahami saat bekerja dengan concurrency.

16. `module-16-locking-and-indexes`
   Fokus: hubungan locking dengan indexes.

## Urutan Baca Rekomendasi

1. `module-01-concurrency-control-introduction`
2. `module-02-transaction-isolation-overview`
3. `module-03-read-committed-isolation-level`
4. `module-04-repeatable-read-isolation-level`
5. `module-05-serializable-isolation-level`
6. `module-06-explicit-locking`
7. `module-07-table-level-locks`
8. `module-08-row-level-locks`
9. `module-09-page-level-locks`
10. `module-10-deadlocks`
11. `module-11-advisory-locks`
12. `module-12-data-consistency-checks-at-the-application-level`
13. `module-13-enforcing-consistency-with-serializable-and-blocking-locks`
14. `module-14-serialization-failure-handling`
15. `module-15-concurrency-caveats`
16. `module-16-locking-and-indexes`

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
- query dan bentuk query -> `02_queries`
- analisis performa query -> `04_performance`
- administration monitoring dan maintenance sistem -> `09_administration`
- troubleshooting kasus lock atau deadlock nyata -> `10_troubleshooting`

## Prasyarat

- Sudah menyelesaikan `01_fundamentals` dan `02_queries` atau setara.
- Sudah memahami operasi `INSERT`, `UPDATE`, `DELETE`, dan query dasar PostgreSQL.

## Aturan Lokal Topic

Lihat folder `docs/` pada topic ini untuk aturan struktur, katalog, dan kontribusi level topic.
