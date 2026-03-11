-- Contoh ini menunjukkan schema, table, column, dan row dalam bentuk paling dasar.

CREATE TABLE public.students (
    student_id INTEGER,
    full_name TEXT,
    birth_date DATE
);

INSERT INTO public.students (student_id, full_name, birth_date)
VALUES (1, 'Alya Putri', DATE '2005-02-14');

SELECT student_id, full_name, birth_date
FROM public.students;
