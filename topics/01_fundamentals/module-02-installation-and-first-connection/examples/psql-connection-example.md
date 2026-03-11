# Contoh Koneksi psql

Contoh command:

```bash
psql -h localhost -p 5432 -U postgres -d postgres
```

Keterangan singkat:

- `localhost` berarti koneksi ke server lokal
- `5432` adalah port PostgreSQL yang umum dipakai
- `postgres` pada `-U` adalah user contoh
- `postgres` pada `-d` adalah database awal contoh
