FROM php:7.3-fpm

RUN apt-get update

RUN apt-get install -y \
    git \
    zip \
    curl \
    sudo \
    unzip \
    libpng-dev

RUN docker-php-ext-install \
    pdo_mysql \
    gd
    
RUN docker-php-ext-enable \
    opcache
