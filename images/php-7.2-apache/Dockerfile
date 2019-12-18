################################
# 302dev/cakephp:php7.2-apache #
################################

# @see https://hub.docker.com/_/php
FROM php:7.2-apache

# Update the packages, and install the libraries need to the php extensions.
RUN apt-get update --fix-missing \
    && apt-get -yq install \
        zlib1g-dev libicu-dev libxml2-dev libpng-dev libzip-dev libldap-dev libsqlite3-dev \
        unzip curl git

# Install xdebug
RUN pecl install xdebug \
    && echo "zend_extension=/usr/local/lib/php/extensions/no-debug-non-zts-20170718/xdebug.so" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

# Add the extensions we need.
RUN docker-php-ext-install gd
RUN docker-php-ext-install intl
RUN docker-php-ext-install ldap
RUN docker-php-ext-install mysqli
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install pdo_sqlite
RUN docker-php-ext-install soap
RUN docker-php-ext-enable xdebug
RUN docker-php-ext-install zip

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# smoke test
RUN php --version
