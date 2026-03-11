# Root Scope Governance

Dokumen ini menetapkan batas kewenangan aturan pada level root, topic, dan module.

## Prinsip Scope

1. Root mengatur aturan global repositori.
2. Topic mengatur aturan internal topic.
3. Module mengatur aturan internal module.
4. Aturan tidak boleh melampaui scope dokumen tempat aturan ditulis.

## Resolusi Konflik

1. Gunakan aturan yang paling dekat dengan konteks kerja.
2. Jika tetap konflik, aturan root dipakai hanya untuk aspek global.

## Evolusi Struktur Konten

1. Root berhak menetapkan bahwa struktur topic dan module bersifat evolutif.
2. Daftar module pada topic mana pun boleh berubah jika pemetaan dari sumber resmi menunjukkan struktur yang lebih tepat.
3. Module boleh dipecah, digabung, dipindah, atau diurutkan ulang selama perubahan itu membuat jalur belajar lebih jelas.
4. Perubahan struktur konten harus tetap menjaga batas scope antara root, topic, dan module.

## Mode Pemetaan Topic

1. Root berhak menetapkan mode pemetaan untuk tiap topic.
2. Topic fondasi boleh memakai pendekatan pedagogis jika itu membuat jalur belajar lebih nyaman.
3. Topic teknis boleh memakai pendekatan yang lebih dekat ke dokumentasi resmi PostgreSQL.
4. Perbedaan mode pemetaan tidak dianggap konflik selama scope dan alasan pemetaannya jelas.
