# Kebijakan Sumber Materi (Source Policy)

Dokumen ini menetapkan aturan resmi mengenai sumber referensi yang digunakan dalam penulisan materi PostgreSQL Living Knowledge Base.

## 1. Sumber Utama (Primary Source)
**PostgreSQL Official Documentation** adalah sumber kebenaran tertinggi. Seluruh definisi, fitur, syntax, behavior, dan batasan teknis wajib merujuk pada dokumentasi resmi.

## 2. Catatan Rilis (Release Notes)
**PostgreSQL Release Notes** digunakan sebagai referensi utama untuk materi pembaruan versi, fitur baru, perubahan behavior, fitur yang tidak lagi didukung (deprecated), dan catatan kompatibilitas.

## 3. Sumber Sekunder (Secondary Source)
Artikel teknis terpercaya, buku, dokumentasi extension resmi, catatan praktik pribadi, dan hasil eksperimen lokal hanya diperbolehkan sebagai **pelengkap** untuk memperkaya pemahaman, bukan sebagai rujukan utama fitur dasar.

## 4. Aturan Konflik (Conflict Rule)
Jika terjadi perbedaan informasi antara dokumentasi resmi PostgreSQL dengan sumber lain (artikel, buku, atau AI), maka **PostgreSQL Official Documentation** adalah acuan yang harus diikuti.

## 5. Aturan Penggunaan AI (AI Rule)
AI dapat digunakan untuk membantu menyusun struktur, merapikan kalimat, memberikan analogi, dan membuat draft awal materi. Namun, **AI bukan sumber kebenaran utama**. Setiap informasi yang dihasilkan AI wajib diverifikasi dengan dokumentasi resmi sebelum diberi status `VERIFIED`.

## 6. Aturan Status Materi (Status Rule)
- Materi yang belum memiliki rujukan dokumentasi resmi maksimal berstatus `DRAFT` atau `REVIEW`.
- Materi hanya boleh berstatus `VERIFIED` jika sudah diverifikasi dengan dokumentasi resmi atau hasil eksperimen lokal yang valid.
- Status `FINAL` berarti materi sudah stabil untuk versi PostgreSQL yang dirujuk.

## 7. Aturan Versi (Version Rule)
Setiap Bab disarankan untuk mencatat versi referensi PostgreSQL yang digunakan untuk menjaga akurasi materi:
- Gunakan `PostgreSQL docs/current` untuk dokumentasi versi terbaru yang stabil.
- Gunakan versi spesifik (contoh: `docs/16`, `docs/17`) jika materi sangat bergantung pada fitur versi tertentu.

## 8. Aturan Sitasi (Citation Rule)
- Setiap Bab wajib memiliki bagian **Referensi Resmi**.
- Tautan ke dokumentasi resmi PostgreSQL harus dicantumkan pada bagian Referensi Resmi jika relevan dengan isi Bab.
- Hindari mencantumkan tautan tanpa kaitan langsung dengan pembahasan materi.
