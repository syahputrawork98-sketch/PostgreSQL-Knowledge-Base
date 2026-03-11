-- Contoh table sederhana dengan beberapa tipe data inti PostgreSQL.

CREATE TABLE products (
    product_id INTEGER,
    product_name TEXT,
    price NUMERIC(10,2),
    is_available BOOLEAN,
    release_date DATE,
    created_at TIMESTAMP
);

INSERT INTO products (
    product_id,
    product_name,
    price,
    is_available,
    release_date,
    created_at
)
VALUES (
    1,
    'Mechanical Keyboard',
    799000.00,
    true,
    DATE '2026-03-12',
    TIMESTAMP '2026-03-12 09:30:00'
);

SELECT *
FROM products;
