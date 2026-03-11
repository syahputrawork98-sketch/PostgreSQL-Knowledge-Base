-- Contoh dasar penggunaan DEFAULT di PostgreSQL.

CREATE TABLE tasks (
    task_name TEXT,
    is_done BOOLEAN DEFAULT false,
    priority_level INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO tasks (task_name)
VALUES ('Belajar PostgreSQL');

INSERT INTO tasks (task_name, is_done, priority_level)
VALUES ('Menulis catatan', true, 2);

SELECT task_name, is_done, priority_level, created_at
FROM tasks;
