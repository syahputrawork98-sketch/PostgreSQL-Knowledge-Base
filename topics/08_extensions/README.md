# Topic 08 - Extensions

## Ringkasan

Topic ini membahas extensions PostgreSQL sebagai cara memperluas kemampuan database di luar fitur inti, dengan pendekatan yang tetap dekat ke praktik resmi dan operasional PostgreSQL.

Setelah menyelesaikan topic ini, pembaca diharapkan:
- memahami apa itu extension di PostgreSQL
- memahami siklus instalasi, aktivasi, update, dan penghapusan extension
- mampu menilai kapan sebuah extension relevan untuk kebutuhan tertentu
- mengenal beberapa extension umum yang sering dipakai dalam praktik

## Scope Topic

Yang masuk ke topic ini:
- konsep extension di PostgreSQL
- perbedaan antara ekstensi, fungsi biasa, dan fitur inti
- instalasi extension
- `CREATE EXTENSION`, `ALTER EXTENSION`, `DROP EXTENSION`
- extension versioning dan upgrade
- schema placement untuk extension
- dependency dan compatibility
- extension populer seperti `pg_stat_statements`, `pgcrypto`, `uuid-ossp`, `hstore`, `citext`, `ltree`, `pg_trgm`
- pertimbangan keamanan dan maintenance saat memakai extension

Yang tidak masuk ke topic ini:
- pembahasan sangat mendalam untuk satu extension khusus
- tuning performa server secara umum
- administration sistem operasi di luar konteks extension
- extension-specific internals yang sangat khusus

## Katalog Module

1. `module-01-extension-foundation`
   Fokus: apa itu extension dan bagaimana extension berbeda dari fitur inti PostgreSQL.

2. `module-02-finding-and-listing-available-extensions`
   Fokus: cara melihat extension yang tersedia dan memahami metadata dasarnya.

3. `module-03-installing-and-enabling-extensions`
   Fokus: instalasi extension dan penggunaan `CREATE EXTENSION`.

4. `module-04-updating-and-removing-extensions`
   Fokus: `ALTER EXTENSION`, upgrade versi, dan `DROP EXTENSION`.

5. `module-05-extension-versioning-and-compatibility`
   Fokus: versioning extension, kompatibilitas, dan risiko saat upgrade PostgreSQL.

6. `module-06-extension-schema-placement`
   Fokus: schema placement, namespace, dan dampaknya terhadap organisasi object.

7. `module-07-extension-dependencies-and-operational-risks`
   Fokus: dependency extension dan risiko operasional yang perlu dipahami.

8. `module-08-pg-stat-statements`
   Fokus: `pg_stat_statements` sebagai extension penting untuk observasi query.

9. `module-09-pgcrypto-and-uuid-ossp`
   Fokus: extension untuk kebutuhan kriptografi dasar dan UUID generation.

10. `module-10-hstore-citext-and-text-oriented-extensions`
   Fokus: extension yang memperluas kemampuan penyimpanan atau pencarian teks.

11. `module-11-pg-trgm-and-search-support-extensions`
   Fokus: `pg_trgm` dan dukungannya untuk pencarian teks yang lebih fleksibel.

12. `module-12-ltree-and-specialized-data-extensions`
   Fokus: `ltree` dan contoh extension yang cocok untuk struktur data tertentu.

13. `module-13-extension-security-considerations`
   Fokus: risiko keamanan, trust, privilege, dan kontrol akses terkait extension.

14. `module-14-extension-maintenance-patterns`
   Fokus: pola maintenance extension yang aman dalam lingkungan nyata.

15. `module-15-common-extension-mistakes`
   Fokus: kesalahan umum saat memilih, memasang, atau mengelola extension.

16. `module-16-extension-next-steps-and-boundaries`
   Fokus: kapan extension menjadi solusi tepat, kapan tidak, dan arah belajar lanjutannya.

## Urutan Baca Rekomendasi

1. `module-01-extension-foundation`
2. `module-02-finding-and-listing-available-extensions`
3. `module-03-installing-and-enabling-extensions`
4. `module-04-updating-and-removing-extensions`
5. `module-05-extension-versioning-and-compatibility`
6. `module-06-extension-schema-placement`
7. `module-07-extension-dependencies-and-operational-risks`
8. `module-08-pg-stat-statements`
9. `module-09-pgcrypto-and-uuid-ossp`
10. `module-10-hstore-citext-and-text-oriented-extensions`
11. `module-11-pg-trgm-and-search-support-extensions`
12. `module-12-ltree-and-specialized-data-extensions`
13. `module-13-extension-security-considerations`
14. `module-14-extension-maintenance-patterns`
15. `module-15-common-extension-mistakes`
16. `module-16-extension-next-steps-and-boundaries`

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
- analisis query dan performa -> `04_performance`
- kontrol akses dan privilege -> `07_security`
- administration instalasi dan maintenance sistem -> `09_administration`
- troubleshooting masalah extension nyata -> `10_troubleshooting`

## Prasyarat

- Sudah menyelesaikan `01_fundamentals`.
- Lebih baik sudah memahami schema, object database, dan peran extension dalam ekosistem PostgreSQL.

## Aturan Lokal Topic

Lihat folder `docs/` pada topic ini untuk aturan struktur, katalog, dan kontribusi level topic.
