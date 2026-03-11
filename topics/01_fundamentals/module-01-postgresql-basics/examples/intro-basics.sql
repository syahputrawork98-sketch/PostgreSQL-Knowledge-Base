-- Contoh latihan pembuka untuk memahami table, row, column, dan CRUD dasar.

CREATE TABLE students (
    student_id INTEGER,
    full_name TEXT,
    is_active BOOLEAN,
    birth_date DATE
);

INSERT INTO students (student_id, full_name, is_active, birth_date)
VALUES
    (1, 'Alya Putri', true, DATE '2005-02-14'),
    (2, 'Bima Saputra', true, DATE '2004-09-30');

SELECT student_id, full_name, is_active, birth_date
FROM students;

UPDATE students
SET is_active = false
WHERE student_id = 2;

SELECT student_id, full_name, is_active
FROM students;

DELETE FROM students
WHERE student_id = 1;

SELECT *
FROM students;
