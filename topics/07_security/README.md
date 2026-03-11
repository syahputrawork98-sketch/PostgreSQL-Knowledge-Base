# Topic 07 - Security

## Ringkasan

Topic ini membahas keamanan PostgreSQL dengan struktur yang dekat ke dokumentasi resmi PostgreSQL, terutama area `Database Roles`, `Client Authentication`, dan `Database Security`.

Setelah menyelesaikan topic ini, pembaca diharapkan:
- memahami dasar authentication dan authorization di PostgreSQL
- memahami roles, privileges, dan ownership
- memahami row-level security dan pola pembatasan akses data
- memahami dasar koneksi aman dan praktik keamanan yang relevan

## Scope Topic

Yang masuk ke topic ini:
- database roles
- membership dan inheritance roles
- privilege system
- object ownership
- schema privileges
- default privileges
- client authentication
- `pg_hba.conf`
- authentication methods
- SSL/TLS untuk koneksi database
- row-level security
- security barrier views
- function security
- keamanan search path
- praktik keamanan dasar PostgreSQL

Yang tidak masuk ke topic ini:
- administrasi sistem operasi secara umum
- replication internals
- tuning performa query
- troubleshooting operasional yang sangat spesifik
- extension-specific security yang sangat khusus

## Katalog Module

1. `module-01-security-foundation`
   Fokus: gambaran umum keamanan PostgreSQL dan area kontrol utamanya.

2. `module-02-database-roles`
   Fokus: konsep role, login role, group role, dan model dasar identitas di PostgreSQL.

3. `module-03-role-membership-and-inheritance`
   Fokus: membership, inheritance, dan hubungan antar role.

4. `module-04-object-ownership-and-privileges`
   Fokus: ownership object dan privilege dasar di PostgreSQL.

5. `module-05-schema-and-default-privileges`
   Fokus: schema privileges dan default privileges untuk object baru.

6. `module-06-client-authentication-overview`
   Fokus: cara PostgreSQL melakukan client authentication secara umum.

7. `module-07-pg-hba-conf`
   Fokus: struktur `pg_hba.conf`, aturan koneksi, dan cara berpikir saat mengaturnya.

8. `module-08-authentication-methods`
   Fokus: metode authentication utama dan kapan masing-masing cocok digunakan.

9. `module-09-ssl-and-secure-connections`
   Fokus: SSL/TLS untuk koneksi PostgreSQL dan dasar koneksi terenkripsi.

10. `module-10-row-level-security`
   Fokus: row-level security dan pembatasan akses di level baris data.

11. `module-11-security-barrier-views-and-data-exposure`
   Fokus: security barrier views dan kontrol paparan data.

12. `module-12-function-security-and-security-definer`
   Fokus: keamanan fungsi, `SECURITY DEFINER`, dan risiko penggunaannya.

13. `module-13-search-path-and-security-risks`
   Fokus: `search_path` dan risiko keamanan yang sering terlewat.

14. `module-14-practical-postgresql-security-patterns`
   Fokus: pola keamanan praktis untuk aplikasi PostgreSQL sehari-hari.

15. `module-15-common-security-mistakes`
   Fokus: kesalahan umum dalam konfigurasi role, privilege, authentication, dan akses data.

16. `module-16-security-next-steps-and-boundaries`
   Fokus: batas topic security dan arah lanjut ke topic administration atau troubleshooting.

## Urutan Baca Rekomendasi

1. `module-01-security-foundation`
2. `module-02-database-roles`
3. `module-03-role-membership-and-inheritance`
4. `module-04-object-ownership-and-privileges`
5. `module-05-schema-and-default-privileges`
6. `module-06-client-authentication-overview`
7. `module-07-pg-hba-conf`
8. `module-08-authentication-methods`
9. `module-09-ssl-and-secure-connections`
10. `module-10-row-level-security`
11. `module-11-security-barrier-views-and-data-exposure`
12. `module-12-function-security-and-security-definer`
13. `module-13-search-path-and-security-risks`
14. `module-14-practical-postgresql-security-patterns`
15. `module-15-common-security-mistakes`
16. `module-16-security-next-steps-and-boundaries`

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
- replication configuration dan node roles -> `06_replication`
- administration monitoring dan maintenance sistem -> `09_administration`
- troubleshooting insiden keamanan nyata -> `10_troubleshooting`

## Prasyarat

- Sudah menyelesaikan `01_fundamentals` dan idealnya `02_queries`.
- Sudah memahami object dasar PostgreSQL seperti database, schema, table, dan role.

## Aturan Lokal Topic

Lihat folder `docs/` pada topic ini untuk aturan struktur, katalog, dan kontribusi level topic.
