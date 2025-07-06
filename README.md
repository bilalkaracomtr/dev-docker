# 🧱 Dev Docker Ortamı (Multi Stack)

Bu yapı, **Node.js**, **NestJS**, **Vue.js**, **Nuxt.js**, **Python (Django)** ve **PHP (Laravel, Symfony, PrestaShop, Bagisto)** gibi çoklu yazılım yığınlarını destekleyen, modüler ve sürdürülebilir bir yerel geliştirme ortamı kurmak için hazırlanmıştır.

---

## 📁 Klasör Yapısı

```
dev-docker/
├── apps/                      # Uygulama projeleri (kaynak kodlar burada)
│   ├── php84/                 # Laravel, Symfony, PrestaShop projeleri
│   ├── ttoc/                  # Apache + PHP 7.4 (eski sistem)
│   ├── tasktrack/             # NestJS (veya JS backend)
│   ├── ttpanel/               # NuxtJS (frontend panel)
│   └── python/                # Django projeleri (örn: django-test)
│
└── docker/                    # Tüm servis altyapısı burada
    ├── core/                  # Ortak servisler (nginx, redis, minio, db, vs)
    │   ├── services/
    │   │   └── nginx/
    │   │       ├── conf.d/    # Aktif nginx yönlendirme dosyaları
    │   │       └── logs/
    │   └── volumes/           # Veritabanı, redis, mailhog, minio kalıcı verileri
    │
    ├── apps/                  # Servis tanımları (tekil konteynerler)
    │   ├── php84/             # PHP 8.4 + FPM
    │   ├── php74-apache/      # PHP 7.4 + Apache
    │   └── python/            # Django servisi (python:3.12-slim)
    │
    ├── bin/                   # (İsteğe bağlı) bash script komutları
    ├── Makefile               # Tüm sistem komutları burada
    └── README.md              # Bu döküman
```

---

## ⚙️ Desteklenen Yığınlar

- ✅ Node.js / NestJS  
- ✅ Vue.js / Nuxt.js  
- ✅ PHP: 7.4 (Apache), 8.4 (FPM) — Laravel, Symfony, PrestaShop  
- ✅ Python / Django  
- ✅ Ortak servisler: Redis, PostgreSQL, MySQL, MinIO, Mailhog, pgAdmin, phpMyAdmin  
- ✅ Ters proxy yönlendirme: NGINX

---

## 🚀 Komutlar (Makefile)

### Genel Core servisleri

```bash
make up           # Ortak servisleri başlat
make down         # Ortak servisleri durdur
make restart      # NGINX, redis, minio, vs. yeniden başlat
```

### PHP 8.4 (Laravel vb.)

```bash
make up-php84
make stop-php84
make downup-php84
```

### PHP 7.4 + Apache (ttoc için)

```bash
make up-php74
make down-php74
make restart-php74
```

### Django (Python 3.12)

```bash
make up-django
make down-django
make restart-django
```

---

## 🔧 İlk Kurulum

```bash
cd docker
cp core/.env.example core/.env
make up
```

> Ardından servislerinizden birini başlatın:  
> `make up-php84`, `make up-django` gibi

---

## 🌐 NGINX Yönlendirme

- Her proje için `conf.d/` içinde `.conf` dosyası tanımlanır
- Çalışmayan servisler için `.conf.disabled` olarak bırakılır
- Örnek:
  - `laravel.test.conf`
  - `django.test.conf.disabled`
- Tarayıcı erişimi için `/etc/hosts` dosyasına şu eklenir:

```
127.0.0.1 laravel.test
127.0.0.1 django.test
127.0.0.1 ttoc.test
```

---

## 📦 Ortam Değişkenleri

Tüm servis yapılandırmaları için `.env.example` mevcuttur:

**📄 `core/.env.example`:**

```env
# PostgreSQL
POSTGRES_DB=your_db
POSTGRES_USER=your_user
POSTGRES_PASSWORD=your_pass

# MySQL
MYSQL_DATABASE=your_db
MYSQL_USER=your_user
MYSQL_PASSWORD=your_pass
MYSQL_ROOT_PASSWORD=root

# pgAdmin
PGADMIN_EMAIL=admin@example.com
PGADMIN_PASSWORD=admin123

# MinIO
MINIO_ROOT_USER=admin
MINIO_ROOT_PASSWORD=admin123
```

> Gerçek `.env` dosyası `.gitignore` içindedir

---

## 🧼 .gitignore

**📄 `docker/.gitignore`:**

```gitignore
core/.env
core/volumes/
../apps/
.DS_Store
.vscode/
.idea/
node_modules/
vendor/
```

---

## 🔚 Versiyon: V1 — Çoklu Proje Altyapısı Kurulumu

Bu sürüm:

✅ Çoklu teknoloji desteği (PHP, Node, Python)  
✅ Ortak servis altyapısı  
✅ Volume ve yönlendirme sistemi  
✅ Komutlarla yönetim (`make`)  
✅ Git sürümüne hazır
