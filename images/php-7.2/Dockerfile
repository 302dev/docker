#############################
# 302dev/cakephp:php7.2-cli #
#############################

FROM php:7.2

# Update the packages, and install the libraries need to the php extensions.
RUN apt-get update --fix-missing \
    && apt-get -yq install \
        zlib1g-dev libicu-dev libxml2-dev libpng-dev libzip-dev \
        unzip curl git

# Add the extensions we need.
RUN docker-php-ext-install gd
RUN docker-php-ext-install intl
RUN docker-php-ext-install mysqli
RUN docker-php-ext-install soap
RUN docker-php-ext-install zip

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# smoke test
RUN php --version

CMD ["php", "-a"]
