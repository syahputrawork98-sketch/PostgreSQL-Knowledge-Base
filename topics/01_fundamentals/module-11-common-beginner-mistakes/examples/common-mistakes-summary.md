# Ringkasan Kesalahan Umum Pemula

| Kesalahan | Dampak | Cara Menghindari |
| --------- | ------ | ---------------- |
| Bingung database/schema/table | salah konteks kerja | pahami hirarki object |
| Semua disimpan sebagai `TEXT` | struktur data kabur | pilih tipe data sesuai arti |
| `UPDATE` tanpa `WHERE` | semua row berubah | cek query sebelum jalan |
| `DELETE` tanpa `WHERE` | semua row terhapus | biasakan `SELECT` dulu |
| Tidak cek hasil perubahan | salah langkah terlambat disadari | verifikasi setelah query |
