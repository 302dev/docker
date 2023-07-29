################################
# fr3nch13702/cakephp:php8.0-apache #
################################

# @see https://hub.docker.com/_/php
FROM php:8.1-apache

RUN sed -i '/<Directory \/var\/www\/>/,/<\/Directory>/ s/AllowOverride None/AllowOverride All/' /etc/apache2/apache2.conf \
    && a2enmod rewrite

# Update the packages, and install the libraries need to the php extensions.
RUN apt-get update --fix-missing \
    && apt-get upgrade -y \
    && apt-get -yq install \
        ca-certificates \
        curl default-mysql-client git libicu-dev libldap-dev \
        libmemcached-dev libmemcached-tools libpng-dev libsqlite3-dev \
        libxml2-dev libzip-dev memcached net-tools unzip zlib1g-dev

# make sure the memcached server is started
RUN service memcached start

# Install xdebug
RUN pecl install xdebug \
    && docker-php-ext-enable xdebug \
    && docker-php-ext-install gd \
    && docker-php-ext-install intl \
    && docker-php-ext-install ldap \
    && docker-php-ext-install mysqli \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-install pdo_sqlite \
    && docker-php-ext-install soap \
    && docker-php-ext-install zip

RUN git clone https://github.com/php-memcached-dev/php-memcached /usr/src/php/ext/memcached \
    && docker-php-ext-configure memcached \
    && docker-php-ext-install memcached

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# smoke test
RUN php --version
