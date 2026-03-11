# Contoh Dasar COPY Dan \copy

Contoh import CSV:

```sql
\copy products(product_id, product_name, price, is_available)
FROM 'products.csv'
WITH (FORMAT csv, HEADER true);
```

Contoh export CSV:

```sql
\copy (
    SELECT product_id, product_name, price, is_available
    FROM products
) TO 'products-export.csv'
WITH (FORMAT csv, HEADER true);
```

Catatan:

- pastikan urutan kolom cocok
- cek hasil dengan `SELECT`
- untuk pemula, `\copy` sering lebih mudah dicoba dari `psql`
