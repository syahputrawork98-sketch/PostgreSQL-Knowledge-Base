-- Contoh query dasar dengan WHERE, ORDER BY, LIMIT, dan OFFSET.

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
    (3, 'Laptop Stand', 199000.00, false),
    (4, 'USB Hub', 159000.00, true),
    (5, 'Desk Lamp', 259000.00, true);

SELECT product_name, price
FROM products
WHERE is_available = true;

SELECT product_name, price
FROM products
ORDER BY price DESC;

SELECT product_name, price
FROM products
WHERE is_available = true
ORDER BY price DESC
LIMIT 3;

SELECT product_name, price
FROM products
WHERE is_available = true
ORDER BY price DESC
LIMIT 2 OFFSET 1;
