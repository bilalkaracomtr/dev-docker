# ============================
# Dizin Tanımları
# ============================

CORE_DIR=./core
SERV_PHP84=./apps/php84
SERV_PHP74=./apps/php74-apache
SERV_DJANGO=./apps/python/django

# ============================
# Core Servisleri
# ============================

up:
	@echo "🚀 Core servisleri başlatılıyor..."
	cd $(CORE_DIR) && docker compose up -d

down:
	@echo "⛔ Core servisleri tamamen durduruluyor..."
	cd $(CORE_DIR) && docker compose down

start:
	@echo "▶️ Core servisleri yeniden başlatılıyor..."
	cd $(CORE_DIR) && docker compose start

stop:
	@echo "🛑 Core servisleri geçici olarak durduruluyor..."
	cd $(CORE_DIR) && docker compose stop

restart:
	@echo "🔁 Core servisleri yeniden başlatılıyor..."
	cd $(CORE_DIR) && docker compose restart

downup:
	@echo "♻️ Core servisleri temiz başlatılıyor (down + up)..."
	cd $(CORE_DIR) && docker compose down && docker compose up -d

# ============================
# PHP 8.4 Servisi (FPM)
# ============================

up-php84:
	@echo "🚀 PHP 8.4 servisleri başlatılıyor..."
	cd $(SERV_PHP84) && docker compose up -d

down-php84:
	@echo "⛔ PHP 8.4 servisleri durduruluyor..."
	cd $(SERV_PHP84) && docker compose down

start-php84:
	@echo "▶️ PHP 8.4 servisleri yeniden başlatılıyor..."
	cd $(SERV_PHP84) && docker compose start

stop-php84:
	@echo "🛑 PHP 8.4 servisleri durduruluyor..."
	cd $(SERV_PHP84) && docker compose stop

restart-php84:
	@echo "🔁 PHP 8.4 servisleri yeniden başlatılıyor..."
	cd $(SERV_PHP84) && docker compose restart

downup-php84:
	@echo "♻️ PHP 8.4 servisleri temiz başlatılıyor..."
	cd $(SERV_PHP84) && docker compose down && docker compose up -d

# ============================
# PHP 7.4 + Apache Servisi
# ============================

up-php74:
	@echo "🚀 PHP 7.4 Apache servisleri başlatılıyor..."
	cd $(SERV_PHP74) && docker compose up -d

down-php74:
	@echo "⛔ PHP 7.4 Apache servisleri durduruluyor..."
	cd $(SERV_PHP74) && docker compose down

start-php74:
	@echo "▶️ PHP 7.4 Apache servisleri yeniden başlatılıyor..."
	cd $(SERV_PHP74) && docker compose start

stop-php74:
	@echo "🛑 PHP 7.4 Apache servisleri durduruluyor..."
	cd $(SERV_PHP74) && docker compose stop

restart-php74:
	@echo "🔁 PHP 7.4 Apache servisleri yeniden başlatılıyor..."
	cd $(SERV_PHP74) && docker compose restart

downup-php74:
	@echo "♻️ PHP 7.4 Apache servisleri temiz başlatılıyor..."
	cd $(SERV_PHP74) && docker compose down && docker compose up -d

# ============================
# Python / Django Servisi
# ============================

up-django:
	@echo "🚀 Django servisi başlatılıyor..."
	cd $(SERV_DJANGO) && docker compose up -d

down-django:
	@echo "⛔ Django servisi durduruluyor..."
	cd $(SERV_DJANGO) && docker compose down

start-django:
	@echo "▶️ Django servisi yeniden başlatılıyor..."
	cd $(SERV_DJANGO) && docker compose start

stop-django:
	@echo "🛑 Django servisi geçici olarak durduruluyor..."
	cd $(SERV_DJANGO) && docker compose stop

restart-django:
	@echo "🔁 Django servisi yeniden başlatılıyor..."
	cd $(SERV_DJANGO) && docker compose restart

downup-django:
	@echo "♻️ Django servisi temiz başlatılıyor..."
	cd $(SERV_DJANGO) && docker compose down && docker compose up -d