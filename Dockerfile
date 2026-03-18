FROM php:8.4-fpm

# Instalacja zależności systemowych i rozszerzeń PHP
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip \
    curl

# Rozszerzenia dla MySQL
RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd

# Kopiowanie plików aplikacji
WORKDIR /var/www
COPY . .

# Instalacja Composera
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

EXPOSE 9000
CMD ["php-fpm"]
