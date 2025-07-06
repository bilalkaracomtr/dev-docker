FROM php:7.4-apache

# Sistem paketlerini yükle
RUN apt-get update && apt-get install -y \
    zip unzip git curl libpng-dev libonig-dev libxml2-dev \
    && docker-php-ext-install pdo pdo_mysql mbstring exif pcntl bcmath gd

# Apache mod rewrite aktif et
RUN a2enmod rewrite

# PHP ayarlarını kopyala
COPY php.ini /usr/local/etc/php/

# Varsayılan çalışma dizini
WORKDIR /var/www/html