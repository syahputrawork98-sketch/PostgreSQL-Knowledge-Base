-- Jalankan setelah berhasil masuk ke psql.
-- Tujuannya untuk memverifikasi koneksi dan membuat database latihan pertama.

SELECT current_database(), current_user;

CREATE DATABASE playground_db;

-- Setelah database dibuat, pindah ke sana dari prompt psql dengan:
-- \c playground_db

SELECT current_database();
