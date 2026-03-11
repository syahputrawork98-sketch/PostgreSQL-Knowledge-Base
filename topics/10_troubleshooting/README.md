# Topic 10 - Troubleshooting

## Ringkasan

Topic ini membahas troubleshooting PostgreSQL sebagai kumpulan pola diagnosis dan penanganan masalah nyata yang muncul saat database digunakan, dioperasikan, dan dipelihara.

Setelah menyelesaikan topic ini, pembaca diharapkan:
- memahami cara berpikir saat mendiagnosis masalah PostgreSQL
- mampu membedakan masalah query, konfigurasi, lock, replication, atau sistem
- mampu menggunakan log, metrik, dan gejala untuk menemukan akar masalah
- mengenali pola insiden umum dan langkah penanganan awal yang aman

## Scope Topic

Yang masuk ke topic ini:
- pola troubleshooting umum
- membaca gejala, log, dan error message
- masalah koneksi
- masalah authentication dan authorization
- query lambat
- blocking dan deadlock
- masalah replication dan failover
- masalah backup/restore
- masalah extension
- masalah konfigurasi
- masalah storage dan maintenance umum
- pola eskalasi dan batas troubleshooting

Yang tidak masuk ke topic ini:
- teori lengkap tiap topik teknis dari awal
- tuning mendalam yang sudah dibahas di topic performance
- administration rutin yang sudah dibahas di topic administration
- pembahasan kode aplikasi spesifik di luar konteks PostgreSQL

Fokus utama topic ini adalah diagnosis, isolasi akar masalah, dan langkah respons awal yang aman saat sesuatu sudah berjalan tidak normal.

## Katalog Module

1. `module-01-troubleshooting-foundation`
   Fokus: pola pikir troubleshooting PostgreSQL dan pendekatan diagnosis yang sistematis.

2. `module-02-reading-errors-logs-and-symptoms`
   Fokus: membaca error message, log, dan gejala yang muncul dari sisi database.

3. `module-03-connection-problems`
   Fokus: masalah koneksi, server unreachable, port, service, dan konfigurasi awal.

4. `module-04-authentication-and-authorization-problems`
   Fokus: masalah login, role, privilege, `pg_hba.conf`, dan akses data.

5. `module-05-slow-query-troubleshooting`
   Fokus: diagnosis awal untuk query lambat dan bottleneck query.

6. `module-06-locking-blocking-and-deadlock-cases`
   Fokus: diagnosis kasus blocking, lock waits, dan deadlock.

7. `module-07-replication-and-failover-problems`
   Fokus: masalah umum pada standby, streaming replication, lag, dan failover.

8. `module-08-backup-and-restore-failures`
   Fokus: error dan kegagalan umum saat backup atau restore.

9. `module-09-extension-related-problems`
   Fokus: masalah kompatibilitas, instalasi, dependency, dan upgrade extension.

10. `module-10-configuration-mistakes-and-side-effects`
   Fokus: kesalahan konfigurasi dan dampak samping yang muncul di runtime.

11. `module-11-storage-maintenance-and-bloat-symptoms`
   Fokus: gejala bloat, kebutuhan maintenance, dan masalah storage umum.

12. `module-12-monitoring-signals-and-early-warning-patterns`
   Fokus: sinyal monitoring yang membantu mendeteksi masalah sebelum menjadi insiden besar.

13. `module-13-safe-first-response-patterns`
   Fokus: langkah pertama yang aman saat insiden terjadi.

14. `module-14-root-cause-analysis-basics`
   Fokus: cara melakukan analisis akar masalah secara sederhana dan terstruktur.

15. `module-15-common-postgresql-incident-patterns`
   Fokus: pola insiden yang sering berulang dalam penggunaan PostgreSQL nyata.

16. `module-16-troubleshooting-boundaries-and-next-steps`
   Fokus: kapan harus lanjut ke topic lain, kapan harus eskalasi, dan batas troubleshooting.

## Urutan Baca Rekomendasi

1. `module-01-troubleshooting-foundation`
2. `module-02-reading-errors-logs-and-symptoms`
3. `module-03-connection-problems`
4. `module-04-authentication-and-authorization-problems`
5. `module-05-slow-query-troubleshooting`
6. `module-06-locking-blocking-and-deadlock-cases`
7. `module-07-replication-and-failover-problems`
8. `module-08-backup-and-restore-failures`
9. `module-09-extension-related-problems`
10. `module-10-configuration-mistakes-and-side-effects`
11. `module-11-storage-maintenance-and-bloat-symptoms`
12. `module-12-monitoring-signals-and-early-warning-patterns`
13. `module-13-safe-first-response-patterns`
14. `module-14-root-cause-analysis-basics`
15. `module-15-common-postgresql-incident-patterns`
16. `module-16-troubleshooting-boundaries-and-next-steps`

## Catatan Evolusi Topic

Struktur module pada topic ini bersifat hidup.

Daftar module dapat berubah jika:
- hasil pembacaan dari sumber resmi PostgreSQL menunjukkan pemecahan topik yang lebih tepat
- ada pembaruan pada dokumentasi resmi atau sumber utama lain
- ada module yang terlalu besar sehingga perlu dipecah
- ada dua module yang ternyata lebih tepat digabung

Tujuannya adalah menjaga topic ini tetap utuh, akurat, dan nyaman dipelajari, bukan membekukan jumlah module secara kaku.

## Catatan Batas Ke Topic Lain

Topic ini adalah titik pertemuan banyak topic sebelumnya.

Topic ini berfokus pada pertanyaan:
- apa yang sedang salah
- gejala mana yang paling penting
- langkah awal apa yang aman dilakukan
- kapan harus berhenti menebak dan kembali ke topic teknis yang lebih spesifik

Saat menemukan akar masalah, pembaca bisa kembali ke topic yang lebih spesifik:
- query dan query design -> `02_queries`
- indexing -> `03_indexing`
- performance tuning dan analisis plan -> `04_performance`
- transactions dan locking -> `05_transactions`
- replication -> `06_replication`
- security -> `07_security`
- extensions -> `08_extensions`
- administration rutin dan maintenance -> `09_administration`

## Prasyarat

- Sudah menyelesaikan setidaknya `01_fundamentals` dan satu atau lebih topic teknis lain.
- Lebih baik sudah memahami operasi dasar PostgreSQL, query, dan gejala sistem database secara umum.

## Aturan Lokal Topic

Lihat folder `docs/` pada topic ini untuk aturan struktur, katalog, dan kontribusi level topic.
