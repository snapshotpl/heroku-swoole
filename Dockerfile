FROM php:8.0-apache-buster

RUN pecl install openswoole

RUN docker-php-ext-enable swoole

COPY . /var/www/html
