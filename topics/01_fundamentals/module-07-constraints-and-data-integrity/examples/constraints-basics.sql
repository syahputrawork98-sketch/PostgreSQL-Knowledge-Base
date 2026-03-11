-- Contoh dasar beberapa constraint di PostgreSQL.

CREATE TABLE students (
    student_id INTEGER PRIMARY KEY,
    full_name TEXT NOT NULL,
    email TEXT UNIQUE,
    age INTEGER CHECK (age >= 0),
    is_active BOOLEAN DEFAULT true
);

INSERT INTO students (student_id, full_name, email, age)
VALUES (1, 'Alya Putri', 'alya@example.com', 20);

INSERT INTO students (student_id, full_name, email, age)
VALUES (2, 'Bima Saputra', 'bima@example.com', 19);

SELECT student_id, full_name, email, age, is_active
FROM students;
