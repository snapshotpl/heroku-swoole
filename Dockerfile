FROM php:8.0-apache-buster

RUN pecl install openswoole

COPY . /var/www/html

CMD sed -i "s/80/$PORT/g" /etc/apache2/sites-available/000-default.conf /etc/apache2/ports.conf && docker-php-entrypoint apache2-foreground
