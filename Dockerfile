# syntax=docker/dockerfile:1
FROM php:8.4-fpm-bookworm

RUN apt-get update && apt-get install -y --no-install-recommends \
    git unzip curl ca-certificates \
    libicu-dev libzip-dev libpng-dev libjpeg62-turbo-dev libfreetype6-dev \
    libonig-dev libxml2-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j"$(nproc)" \
       bcmath gd intl mbstring opcache pcntl pdo_mysql zip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html

COPY --chown=www-data:www-data . /var/www/html

RUN if [ -f composer.json ]; then \
      composer install --no-interaction --prefer-dist --no-progress; \
    fi \
    && mkdir -p storage/framework/cache storage/framework/sessions \
       storage/framework/views storage/logs bootstrap/cache \
    && chown -R www-data:www-data storage bootstrap/cache

USER www-data

CMD ["php-fpm"]
