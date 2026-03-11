-- Contoh seed data sederhana untuk table products.

CREATE TABLE products (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT NOT NULL,
    price NUMERIC(10,2),
    is_available BOOLEAN DEFAULT true
);

INSERT INTO products (product_id, product_name, price, is_available)
VALUES
    (1, 'Mechanical Keyboard', 799000.00, true),
    (2, 'Wireless Mouse', 299000.00, true),
    (3, 'Laptop Stand', 199000.00, false);

SELECT *
FROM products;
