#############################
# fr3nch13702/cakephp:php7.4-cli #
#############################

# @see https://hub.docker.com/_/php
FROM php:7.4-cli

# Update the packages, and install the libraries need to the php extensions.
RUN apt-get update --fix-missing \
    && apt-get -yq install \
        ca-certificates \
        zlib1g-dev libicu-dev libxml2-dev libpng-dev libzip-dev libldap-dev libsqlite3-dev \
        unzip curl git default-mysql-client memcached

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
    && docker-php-ext-install zip \
    && docker-php-ext-install mamcached

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# smoke test
RUN php --version

CMD ["php", "-a"]
