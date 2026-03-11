# Topic 04 - Performance

## Ringkasan

Topic ini membahas performa PostgreSQL dengan struktur yang dekat ke dokumentasi resmi PostgreSQL, terutama Chapter 14 `Performance Tips`, tetapi tetap difokuskan sebagai topic untuk **analisis dan optimisasi performa**.

Setelah menyelesaikan topic ini, pembaca diharapkan:
- memahami cara membaca dan menggunakan `EXPLAIN`
- memahami statistik yang dipakai planner
- memahami cara mengarahkan planner dengan aman
- memahami praktik dasar populasi database yang berdampak pada performa
- mengenal non-durable settings dan konteks penggunaannya

## Scope Topic

Yang masuk ke topic ini:
- `EXPLAIN`
- `EXPLAIN ANALYZE`
- caveats saat membaca plan
- statistik planner
- single-column statistics
- extended statistics
- controlling the planner with explicit `JOIN`
- praktik pengisian data yang berdampak pada performa
- non-durable settings

Yang tidak masuk ke topic ini:
- pembahasan jenis index secara detail
- administrasi rutin server sehari-hari
- replication internals
- security hardening
- penanganan insiden operasional lintas area sebagai workflow troubleshooting

## Katalog Module

1. `module-01-using-explain`
   Fokus: pengantar penggunaan `EXPLAIN` sebagai alat analisis performa.

2. `module-02-explain-basics`
   Fokus: membaca hasil dasar `EXPLAIN` dan struktur execution plan.

3. `module-03-explain-analyze`
   Fokus: `EXPLAIN ANALYZE`, actual vs estimated rows, dan waktu eksekusi nyata.

4. `module-04-explain-caveats`
   Fokus: batasan, jebakan, dan kehati-hatian saat menafsirkan output plan.

5. `module-05-statistics-used-by-the-planner`
   Fokus: bagaimana planner memakai statistik untuk memilih rencana query.

6. `module-06-single-column-statistics`
   Fokus: statistik per kolom dan dampaknya terhadap row estimation.

7. `module-07-extended-statistics`
   Fokus: extended statistics dan kapan dibutuhkan untuk estimasi yang lebih baik.

8. `module-08-controlling-the-planner-with-explicit-join-clauses`
   Fokus: hubungan explicit `JOIN` clauses dengan keputusan planner.

9. `module-09-populating-a-database`
   Fokus: gambaran umum pengisian database dari sudut performa, bukan prosedur administrasi rutin.

10. `module-10-disable-autocommit`
   Fokus: dampak menonaktifkan autocommit saat proses insert massal.

11. `module-11-use-copy`
   Fokus: penggunaan `COPY` untuk mempercepat proses pemuatan data.

12. `module-12-remove-indexes-and-constraints-during-load`
   Fokus: kapan melepas index dan foreign key constraints sebelum bulk load lebih efisien.

13. `module-13-increase-maintenance-work-mem-and-max-wal-size`
   Fokus: `maintenance_work_mem` dan `max_wal_size` dalam konteks loading dan maintenance.

14. `module-14-disable-wal-archival-and-streaming-replication`
   Fokus: kapan penonaktifan archival/streaming replication relevan untuk performa loading.

15. `module-15-run-analyze-and-pg-dump-notes`
   Fokus: pentingnya `ANALYZE` setelah loading dan catatan performa terkait `pg_dump`.

16. `module-16-non-durable-settings`
   Fokus: non-durable settings, manfaatnya, dan trade-off yang harus dipahami.

## Urutan Baca Rekomendasi

1. `module-01-using-explain`
2. `module-02-explain-basics`
3. `module-03-explain-analyze`
4. `module-04-explain-caveats`
5. `module-05-statistics-used-by-the-planner`
6. `module-06-single-column-statistics`
7. `module-07-extended-statistics`
8. `module-08-controlling-the-planner-with-explicit-join-clauses`
9. `module-09-populating-a-database`
10. `module-10-disable-autocommit`
11. `module-11-use-copy`
12. `module-12-remove-indexes-and-constraints-during-load`
13. `module-13-increase-maintenance-work-mem-and-max-wal-size`
14. `module-14-disable-wal-archival-and-streaming-replication`
15. `module-15-run-analyze-and-pg-dump-notes`
16. `module-16-non-durable-settings`

## Catatan Evolusi Topic

Struktur module pada topic ini bersifat hidup.

Daftar module dapat berubah jika:
- hasil pembacaan dari sumber resmi PostgreSQL menunjukkan pemecahan topik yang lebih tepat
- ada pembaruan pada dokumentasi resmi atau sumber utama lain
- ada module yang terlalu besar sehingga perlu dipecah
- ada dua module yang ternyata lebih tepat digabung

Tujuannya adalah menjaga topic ini tetap utuh, akurat, dan nyaman dipelajari, bukan membekukan jumlah module secara kaku.

## Catatan Batas Ke Topic Lain

Topic ini berfokus pada pertanyaan:
- mengapa query atau operasi ini lambat
- bagaimana membaca sinyal performanya
- optimisasi teknis apa yang paling masuk akal

Topik berikut hanya disentuh seperlunya, tetapi pembahasan detailnya berada di topic lain:
- struktur dan jenis index -> `03_indexing`
- transaction control dan konsistensi data -> `05_transactions`
- administrasi sistem, backup, logging, dan maintenance rutin -> `09_administration`
- diagnosis insiden dan langkah respons awal -> `10_troubleshooting`

## Prasyarat

- Sudah menyelesaikan `01_fundamentals`, `02_queries`, dan idealnya `03_indexing`.
- Sudah memahami query dasar, `JOIN`, dan struktur table PostgreSQL.

## Aturan Lokal Topic

Lihat folder `docs/` pada topic ini untuk aturan struktur, katalog, dan kontribusi level topic.
