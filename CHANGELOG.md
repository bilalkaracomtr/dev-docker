# 📦 CHANGELOG

Tüm sürüm değişiklikleri bu dosyada takip edilir.  
Versiyonlar semantik olarak `vX.Y.Z` biçiminde etiketlenir.

---

## 🚀 v1.0.0 – İlk Stabil Yapı (2025-07-06)

### 🔧 Eklendi
- `core/` içinde servisler kuruldu:
  - Redis, PostgreSQL, Mailhog, MinIO, NGINX, MySQL, PhpMyAdmin, PgAdmin
- `apps/` içinde örnek uygulama ortamları:
  - `php74-apache`: Apache yapılandırmalı PHP 7.4 ortamı
  - `php84`: Hafif yapılandırılmış PHP 8.4 ortamı
  - `django`: Python + Django + PostgreSQL ortamı
- Ortak NGINX yönlendirme yapılandırmaları `conf.d` içinde tanımlandı
- Makefile ile temel komut yönetimi sağlandı
- `.env.example` ile ortam değişkenleri örneklendi

### 🧱 Başlangıç Notu
- GitHub bağlantısı kuruldu → [dev-docker](https://github.com/bilalkaracomtr/dev-docker)
- `main` dalı başlatıldı, `v1.0.0` etiketi eklendi