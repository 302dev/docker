############################
# 302dev/bionic:php7.2-cli #
############################

# Based on: https://github.com/phpdocker-io/base-images/blob/master/php/7.2/cli/Dockerfile

FROM ubuntu:bionic

# Fixes some weird terminal issues such as broken clear / CTRL+L
ENV TERM=linux

ENV DEBIAN_FRONTEND noninteractive

# Install Ondrej repos for Ubuntu Bionic, PHP7.2, composer and selected extensions - better selection than
# the distro's packages
RUN apt-get update \
    && apt-get install -y --no-install-recommends gnupg \
    && echo "deb http://ppa.launchpad.net/ondrej/php/ubuntu bionic main" > /etc/apt/sources.list.d/ondrej-php.list \
    && echo "deb http://ppa.launchpad.net/ondrej/apache2/ubuntu bionic main" > /etc/apt/sources.list.d/ondrej-apache2.list \
    && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 4F4EA0AAE5267A6C \
    && apt-get update \
    && apt-get update \
    && apt-get -y --no-install-recommends install curl ca-certificates unzip \
        apache2 \
        php-apcu php-apcu-bc php-pear php-xdebug \
        php7.2-cli php7.2-curl php7.2-json php7.2-mbstring \
        php7.2-opcache php7.2-readline php7.2-xml php7.2-zip \
        php7.2-intl php7.2-dev php7.2-mysql php7.2-soap php7.2-gd \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && composer clear-cache \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/* ~/.composer

CMD ["php", "-a"]
