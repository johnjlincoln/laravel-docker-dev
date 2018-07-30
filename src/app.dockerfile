FROM php:7.2-fpm

LABEL maintainer="John Lincoln <jlincoln88@gmail.com>"

RUN apt-get update && apt-get install -y libmcrypt-dev \
    mysql-client libmagickwand-dev --no-install-recommends \
    && docker-php-ext-install pdo_mysql

RUN chown -R www-data:www-data /var/www
