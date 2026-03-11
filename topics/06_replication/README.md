# Topic 06 - Replication

## Ringkasan

Topic ini membahas replication PostgreSQL dengan fokus utama pada **physical replication, standby servers, failover, dan high availability**, mengikuti area resmi `High Availability, Load Balancing, and Replication`.

Setelah menyelesaikan topic ini, pembaca diharapkan:
- memahami pilihan solusi physical replication dan HA di PostgreSQL
- memahami standby servers, streaming replication, dan replication slots
- memahami failover dan hot standby secara dasar-menengah
- mampu memetakan kebutuhan sistem ke model replication fisik yang lebih tepat

## Scope Topic

Yang masuk ke topic ini:
- perbandingan solusi replication dan HA
- log-shipping standby servers
- planning replication
- standby server operation
- menyiapkan primary untuk standby
- setup standby server
- streaming replication
- replication slots
- cascading replication
- synchronous replication
- continuous archiving in standby
- failover
- hot standby
- query conflicts pada standby
- parameter hot standby
- caveats replication dan hot standby

Yang tidak masuk ke topic ini:
- logical replication detail per publication/subscription
- tuning performa query yang mendalam
- security hardening
- administration umum di luar konteks replication
- troubleshooting operasional yang sangat spesifik

Catatan:
- focus utama topic ini adalah **physical replication** dan arsitektur standby
- logical replication dapat ditambahkan kemudian jika struktur repo membutuhkannya sebagai perluasan topic ini atau topic turunan lain

## Katalog Module

1. `module-01-comparison-of-different-solutions`
   Fokus: perbandingan solusi replication, load balancing, dan HA di PostgreSQL.

2. `module-02-log-shipping-standby-servers`
   Fokus: pengantar log-shipping standby servers dan model warm standby.

3. `module-03-replication-planning`
   Fokus: planning sebelum membangun arsitektur standby atau replication.

4. `module-04-standby-server-operation`
   Fokus: bagaimana standby server bekerja dari sudut operasi dan recovery.

5. `module-05-preparing-the-primary-for-standby-servers`
   Fokus: langkah menyiapkan primary untuk melayani standby servers.

6. `module-06-setting-up-a-standby-server`
   Fokus: proses setup standby server secara konsep dan alur kerja.

7. `module-07-streaming-replication`
   Fokus: streaming replication dan bagaimana WAL dikirim ke standby.

8. `module-08-replication-slots`
   Fokus: replication slots, manfaatnya, dan trade-off yang menyertainya.

9. `module-09-cascading-replication`
   Fokus: cascading replication dan kapan topologi ini berguna.

10. `module-10-synchronous-replication`
   Fokus: synchronous replication dan implikasinya terhadap durability serta latency.

11. `module-11-continuous-archiving-in-standby`
   Fokus: continuous archiving pada standby dan konteks penggunaannya.

12. `module-12-failover`
   Fokus: failover, promosi standby, dan gambaran dasar prosedur pergantian peran.

13. `module-13-hot-standby-users-overview`
   Fokus: hot standby dari sudut pandang pengguna dan query read-only.

14. `module-14-handling-query-conflicts-in-hot-standby`
   Fokus: konflik query pada hot standby dan bagaimana konflik itu terjadi.

15. `module-15-hot-standby-administrators-overview-and-parameters`
   Fokus: hot standby dari sudut pandang administrator dan parameter pentingnya.

16. `module-16-hot-standby-caveats-and-next-steps`
   Fokus: caveats hot standby, batasan replication, dan arah lanjut ke topic terkait.

## Urutan Baca Rekomendasi

1. `module-01-comparison-of-different-solutions`
2. `module-02-log-shipping-standby-servers`
3. `module-03-replication-planning`
4. `module-04-standby-server-operation`
5. `module-05-preparing-the-primary-for-standby-servers`
6. `module-06-setting-up-a-standby-server`
7. `module-07-streaming-replication`
8. `module-08-replication-slots`
9. `module-09-cascading-replication`
10. `module-10-synchronous-replication`
11. `module-11-continuous-archiving-in-standby`
12. `module-12-failover`
13. `module-13-hot-standby-users-overview`
14. `module-14-handling-query-conflicts-in-hot-standby`
15. `module-15-hot-standby-administrators-overview-and-parameters`
16. `module-16-hot-standby-caveats-and-next-steps`

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
- concurrency dan locking -> `05_transactions`
- administration monitoring dan maintenance sistem -> `09_administration`
- security kontrol untuk replication -> `07_security`
- troubleshooting kasus failover atau recovery nyata -> `10_troubleshooting`

## Prasyarat

- Sudah menyelesaikan `01_fundamentals`, `02_queries`, dan idealnya `05_transactions`.
- Sudah memahami konsep WAL, transaksi, dan operasi dasar PostgreSQL secara umum.

## Aturan Lokal Topic

Lihat folder `docs/` pada topic ini untuk aturan struktur, katalog, dan kontribusi level topic.
