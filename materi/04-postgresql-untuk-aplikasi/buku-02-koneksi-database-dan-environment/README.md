# Buku 02: Koneksi Database dan Environment

*   **Status Buku**: **DRAFT / REVIEW**
*   **Rak**: [Rak 04: PostgreSQL untuk Aplikasi](../README.md)
*   **Target Level**: Level 3 - Level 4 (Environment & Security)
*   **Tipe Materi**: Praktik DevOps & Operasional Backend

---

## 1. Tujuan Buku
Buku ini bertujuan untuk melatih pengembang memisahkan kredensial database dari source code menggunakan Environment Variables (env var), mengelola rahasia sensitif (secrets) menggunakan credential manager modern, serta mendiagnosis gangguan kegagalan koneksi (*troubleshooting*) antara aplikasi backend dengan server database PostgreSQL.

---

## 2. Hasil Belajar
Setelah menyelesaikan buku ini, pembaca diharapkan mampu menyusun konfigurasi env var yang aman untuk multi-environment (Dev, Staging, Prod), mengintegrasikan vault secret manager, serta melacak dan memperbaiki error koneksi database seperti time-out atau penolakan otentikasi (`pg_hba.conf` rejection).

---

## 3. Kebijakan Struktur (No Fixed Limit)
Jumlah bab dirancang secara modular dan tidak dibatasi secara kaku. Rencana ekspansi buku ini di masa depan mencakup monitoring koneksi aktif di database (`pg_stat_activity`) dan konfigurasi dynamic pooling.

---

## 4. Daftar Bab Aktif

| No | Bab | Status | Tipe | Ringkasan Materi |
| :---: | :--- | :---: | :---: | :--- |
| 1 | [Bab 01: Konfigurasi Env Var Database](./bab-01-konfigurasi-env-var-database.md) | **DRAFT** | Praktik | Pemisahan environment, penulisan berkas `.env`, parsing env var di backend, dan pencegahan kebocoran kredensial ke Git. |
| 2 | [Bab 02: Manajemen Secret Database](./bab-02-manajemen-secret-database.md) | **DRAFT** | Praktik | Bahaya hardcode password, penggunaan secret manager (AWS Secrets Manager/Vault), dan rotasi password database berkala. |
| 3 | [Bab 03: Troubleshooting Koneksi Aplikasi](./bab-03-troubleshooting-koneksi-aplikasi.md) | **DRAFT** | Praktik | Mendiagnosis kegagalan koneksi, melacak error timeout port 5432, membaca log database, dan mengatasi penolakan akses pg_hba. |

---

## 5. Urutan Belajar
Pembaca direkomendasikan menyelesaikan Bab 01 untuk memahami env var logis, dilanjutkan ke proteksi tingkat tinggi di Bab 02, dan dibekali modul penyelamatan darurat di Bab 03.

---

## 6. Koneksi ke Project Nyata
Penerapan env var dan secret management merupakan standar wajib kepatuhan keamanan industri (PCI-DSS/ISO 27001) untuk mengamankan data sensitif pengguna dari eksploitasi peretas.

---

## 7. Status & Kebijakan Dokumen
*   **Status Verifikasi**: `REVIEW` (Belum divalidasi langsung dengan PostgreSQL Official Documentation).
*   **Pranala Rujukan**:
    *   [Kebijakan Kedalaman Expert-Scale](../../../docs/project/book-chapter-depth-policy.md)
    *   [Matriks Celah Materi (Gap Matrix)](../../../docs/project/materi-expert-scale-gap-matrix.md)
