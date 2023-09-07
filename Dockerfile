FROM php:8.0-fpm-alpine

# Install Node.js
RUN apk add --update nodejs npm

RUN docker-php-ext-install mysqli pdo_mysql

# Set custom memory limit
COPY php.ini /usr/local/etc/php/php.ini

RUN docker-php-ext-enable opcache

WORKDIR /var/www/html