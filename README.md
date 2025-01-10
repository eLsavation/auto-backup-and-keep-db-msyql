
# 🚀 MySQL Database Backup Script

Backup database MySQL dengan mudah dan otomatis menggunakan script ini! Simpan data penting Anda dengan aman, tanpa repot.

---

## 🛠️ Fitur
- 🔍 **Filter Database**: Hanya backup database tertentu sesuai kebutuhan.
- 📂 **Manajemen Backup**: Simpan hanya backup terbaru dengan jumlah yang dapat diatur.
- 🔒 **Aman & Otomatis**: Backup berjalan lancar, bahkan dapat dijadwalkan via cron.

---

## 🎯 Cara Menggunakan

### 1️⃣ **Persiapan**
- Pastikan Anda memiliki akses ke MySQL (username & password).
- Pastikan `mysqldump` sudah terinstall dan dapat digunakan.
- Tentukan direktori tempat menyimpan file backup.

### 2️⃣ **Konfigurasi**
Edit variabel berikut di script:
- **`DB_USER`**: Masukkan username MySQL Anda.
- **`DB_PASSWORD`**: Masukkan password MySQL Anda.
- **`BACKUP_DIR`**: Direktori tempat file backup akan disimpan.
- **`NUM_BACKUPS`**: Jumlah file backup terbaru yang akan disimpan.

Contoh:
```bash
DB_USER="root"
DB_PASSWORD="password123"
BACKUP_DIR="/home/user/mysql_backups"
NUM_BACKUPS=5
```

### 3️⃣ **Jalankan Script**
Jalankan script dengan perintah berikut:
```bash
./backup_mysql.sh
```

---

## ⏰ Penjadwalan Otomatis (Opsional)
Ingin proses backup berjalan otomatis? Gunakan **cron**:
1. Buka file konfigurasi cron:
   ```bash
   crontab -e
   ```
2. Tambahkan baris berikut untuk menjadwalkan backup harian pukul 2 pagi:
   ```bash
   0 2 * * * /path/to/backup_mysql.sh
   ```

---

## 📦 Format File Backup
File backup akan disimpan dengan format:
```
<DB_NAME>_<dd-mm-yyyy>.sql
```

Contoh:
```
my_database_01-01-2025.sql
```

---

## 📝 Catatan Penting
- Pastikan direktori `BACKUP_DIR` memiliki izin tulis.
- Amankan script agar kredensial MySQL tidak terekspos.

---

## 🎉 Apa yang Baru?
- **Efisiensi Lebih Baik**: Kelola backup lama secara otomatis.
- **Fleksibel**: Pilih database yang ingin di-backup dengan mudah.
- **Ramah Pengguna**: Siap digunakan langsung setelah konfigurasi sederhana.

---

💡 **Tips**: Jangan lupa untuk memonitor ruang penyimpanan Anda agar proses backup berjalan tanpa kendala.
