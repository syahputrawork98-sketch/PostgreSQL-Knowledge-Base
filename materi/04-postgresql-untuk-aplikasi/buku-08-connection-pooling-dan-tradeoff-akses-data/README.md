# Buku 08: Connection Pooling dan Trade-off Akses Data

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 04: PostgreSQL untuk Aplikasi](../README.md)
*   **Target Level**: Level 3 - Level 4 (Integrasi Aplikasi & Siklus Hidup Skema)
*   **Tipe Materi**: Integrasi Backend & Arsitektur Koneksi

---

## 1. Tujuan Buku
Buku ini mendalami manajemen slot koneksi ke PostgreSQL, mengulas penentuan ukuran Connection Pool yang optimal berdasarkan resource core database server, pengenalan pgBouncer sebagai proxy pooling eksternal skala microservices, evaluasi pro-kontra ORM vs Query Builder vs Native SQL, serta analisis risiko rollback migrasi dan release coordination.

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu merancang kueri dinamis yang aman dari SQL Injection, menentukan transaction boundary secara atomik di Service Layer backend, mengatasi transient error via retry/idempotency, mengimplementasikan keyset pagination yang berkinerja tinggi, menentukan pool sizing optimal, serta mengelola risiko rollback migrasi di tahap deployment.

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dalam buku ini dikembangkan mengikuti kebutuhan kedalaman integrasi aplikasi backend serta tidak dibatasi secara kaku. Buku ini dapat berkembang secara berkala sesuai kebutuhan industri dan pembaruan PostgreSQL.

---

## 4. Daftar Bab Aktif
| 1 | [Bab 01: Connection Pool Sizing untuk Aplikasi](bab-01-connection-pool-sizing-untuk-aplikasi.md) | **DRAFT** | Integrasi | Mendalami perancangan ukuran Connection Pool (Pool Sizing) yang optimal di aplikasi backend untuk mencegah kehabisan slot koneksi database dan overhead memori. |
| 2 | [Bab 02: pgBouncer dan Pooling di Luar Aplikasi (Pengantar)](bab-02-pgbouncer-dan-pooling-di-luar-aplikasi-pengantar.md) | **DRAFT** | Integrasi | Mengenalkan pgBouncer sebagai middleware connection proxy eksternal untuk melayani ribuan koneksi konkuren dari arsitektur microservices modern. |
| 3 | [Bab 03: ORM vs Query Builder vs Native SQL](bab-03-orm-vs-query-builder-vs-native-sql.md) | **DRAFT** | Integrasi | Membahas perbandingan trade-off antara Object-Relational Mapping (ORM), Query Builder, dan penulisan Native SQL di aplikasi backend dari sisi produktivitas, performa, dan kontrol. |
| 4 | [Bab 04: Migration Rollback Risk dan Release Coordination](bab-04-migration-rollback-risk-dan-release-coordination.md) | **DRAFT** | Integrasi | Membahas risiko kegagalan proses database migration, strategi rollback aman, serta koordinasi perilisan aplikasi dengan perubahan skema. |

---

## 5. Urutan Belajar
Pembaca diwajibkan menyelesaikan bab secara berurutan untuk menjamin pemahaman bertahap yang mendalam mengenai arsitektur akses database backend.

---

## 6. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi langsung dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
