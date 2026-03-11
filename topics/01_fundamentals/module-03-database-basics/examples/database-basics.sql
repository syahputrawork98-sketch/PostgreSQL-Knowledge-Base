-- Jalankan bagian SQL ini setelah terhubung ke database yang sesuai.

SELECT current_database();

CREATE DATABASE learning_db;

-- Untuk berpindah ke database baru, gunakan prompt psql:
-- \c learning_db

SELECT current_database();

-- Hati-hati: perintah ini bersifat destruktif.
-- DROP DATABASE learning_db;
