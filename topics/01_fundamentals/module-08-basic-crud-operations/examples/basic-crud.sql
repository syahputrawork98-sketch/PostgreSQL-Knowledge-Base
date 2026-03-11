-- Contoh CRUD dasar dengan table sederhana.

CREATE TABLE students (
    student_id INTEGER PRIMARY KEY,
    full_name TEXT NOT NULL,
    is_active BOOLEAN DEFAULT true
);

INSERT INTO students (student_id, full_name, is_active)
VALUES
    (1, 'Alya Putri', true),
    (2, 'Bima Saputra', true),
    (3, 'Citra Lestari', false);

SELECT *
FROM students;

UPDATE students
SET is_active = false
WHERE student_id = 2;

SELECT student_id, full_name, is_active
FROM students;

DELETE FROM students
WHERE student_id = 3;

SELECT *
FROM students;
