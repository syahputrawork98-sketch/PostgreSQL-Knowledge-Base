# Topic 09 - Administration

## Ringkasan

Topic ini membahas administration PostgreSQL sebagai kumpulan praktik operasional untuk mengelola instance, konfigurasi, maintenance, backup, restore, monitoring, dan tugas admin sehari-hari.

Setelah menyelesaikan topic ini, pembaca diharapkan:
- memahami tugas dasar administrator PostgreSQL
- memahami konfigurasi inti instance PostgreSQL
- mampu melakukan maintenance dasar, backup, dan restore
- memahami dasar monitoring, logging, dan operasional sistem PostgreSQL

## Scope Topic

Yang masuk ke topic ini:
- pengantar administration PostgreSQL
- struktur instance dan cluster
- file konfigurasi utama
- parameter configuration dasar
- start/stop/restart service
- maintenance dasar (`VACUUM`, `ANALYZE`, `REINDEX`)
- backup dan restore
- logical vs physical backup
- monitoring dasar
- logging dasar
- housekeeping operasional
- praktik administration yang aman

Yang tidak masuk ke topic ini:
- tuning query yang mendalam
- detail struktur index
- replication internals yang detail
- security hardening yang fokus akses dan authentication
- troubleshooting kasus insiden spesifik yang sangat dalam

Fokus utama topic ini adalah operasi rutin dan pengelolaan sistem yang stabil, bukan analisis akar masalah performa atau penanganan insiden lintas area.

## Katalog Module

1. `module-01-administration-foundation`
   Fokus: peran administrator PostgreSQL dan area tanggung jawab utamanya.

2. `module-02-postgresql-instance-and-cluster-basics`
   Fokus: konsep instance, cluster, data directory, dan struktur dasar sistem PostgreSQL.

3. `module-03-core-configuration-files`
   Fokus: file konfigurasi utama PostgreSQL dan peran masing-masing.

4. `module-04-basic-server-configuration-parameters`
   Fokus: parameter konfigurasi dasar yang paling sering disentuh administrator.

5. `module-05-start-stop-and-restart-operations`
   Fokus: operasi start, stop, restart, dan siklus hidup service PostgreSQL.

6. `module-06-vacuum-and-analyze-basics`
   Fokus: `VACUUM`, `ANALYZE`, dan dasar maintenance statistik serta storage.

7. `module-07-reindex-and-maintenance-operations`
   Fokus: `REINDEX` dan operasi maintenance lain yang umum.

8. `module-08-backup-fundamentals`
   Fokus: dasar backup PostgreSQL dan tujuan operasionalnya.

9. `module-09-logical-backup-and-restore`
   Fokus: logical backup/restore dengan tool umum seperti `pg_dump` dan `pg_restore`.

10. `module-10-physical-backup-basics`
   Fokus: physical backup dasar dan kapan pendekatan ini dibutuhkan.

11. `module-11-monitoring-core-system-health`
   Fokus: monitoring dasar instance PostgreSQL dan indikator kesehatan utama.

12. `module-12-logging-and-log-management`
   Fokus: logging PostgreSQL, parameter log dasar, dan pengelolaan output log.

13. `module-13-routine-administration-patterns`
   Fokus: pola kerja admin harian yang sehat dan berulang.

14. `module-14-upgrade-and-change-management-basics`
   Fokus: perubahan konfigurasi, upgrade dasar, dan kehati-hatian operasional.

15. `module-15-common-administration-mistakes`
   Fokus: kesalahan umum dalam operasi admin PostgreSQL.

16. `module-16-administration-next-steps-and-boundaries`
   Fokus: batas topic administration dan arah belajar lanjutannya.

## Urutan Baca Rekomendasi

1. `module-01-administration-foundation`
2. `module-02-postgresql-instance-and-cluster-basics`
3. `module-03-core-configuration-files`
4. `module-04-basic-server-configuration-parameters`
5. `module-05-start-stop-and-restart-operations`
6. `module-06-vacuum-and-analyze-basics`
7. `module-07-reindex-and-maintenance-operations`
8. `module-08-backup-fundamentals`
9. `module-09-logical-backup-and-restore`
10. `module-10-physical-backup-basics`
11. `module-11-monitoring-core-system-health`
12. `module-12-logging-and-log-management`
13. `module-13-routine-administration-patterns`
14. `module-14-upgrade-and-change-management-basics`
15. `module-15-common-administration-mistakes`
16. `module-16-administration-next-steps-and-boundaries`

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
- bagaimana mengoperasikan PostgreSQL dengan aman dan rutin
- konfigurasi dan maintenance apa yang perlu dikerjakan admin
- bagaimana menjaga instance tetap sehat dari hari ke hari

Topik berikut hanya disentuh seperlunya, tetapi pembahasan detailnya berada di topic lain:
- tuning query dan analisis plan -> `04_performance`
- replication internals -> `06_replication`
- kontrol akses dan authentication -> `07_security`
- diagnosis insiden dan respons saat sistem bermasalah -> `10_troubleshooting`

## Prasyarat

- Sudah menyelesaikan `01_fundamentals`.
- Lebih baik sudah memahami object dasar PostgreSQL, query dasar, dan struktur instalasi PostgreSQL.

## Aturan Lokal Topic

Lihat folder `docs/` pada topic ini untuk aturan struktur, katalog, dan kontribusi level topic.
