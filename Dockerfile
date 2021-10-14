FROM php:8.0-buster

RUN pecl install openswoole

RUN docker-php-ext-enable swoole

COPY . /var/www/html
