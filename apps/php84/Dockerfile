FROM php:8.4-fpm

# Gerekli sistem paketlerini kur
RUN apt-get update && apt-get install -y \
    zip unzip git curl libpng-dev libonig-dev libxml2-dev \
    && docker-php-ext-install pdo pdo_mysql mbstring exif pcntl bcmath gd

# Composer ekle
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# PHP ayarları
COPY php.ini /usr/local/etc/php/

WORKDIR /var/www/html