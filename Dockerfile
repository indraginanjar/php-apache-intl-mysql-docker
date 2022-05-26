# indraginanjar/php:${php_version}-apache-intl-mysql
ARG php_version

FROM php:${php_version}-apache

RUN apt-get -y update \
    && apt-get install -y libicu-dev\
    && docker-php-ext-configure intl \
    && docker-php-ext-install intl \
    && docker-php-ext-install pdo_mysql
