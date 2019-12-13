############################
# 302dev/bionic:php7.2-cli #
############################

FROM ubuntu:bionic

ARG codename='bionic'
ARG pv='7.2'

# Fixes some weird terminal issues such as broken clear / CTRL+L
ENV TERM=linux

ENV DEBIAN_FRONTEND noninteractive

ENV LC_ALL=C.UTF-8

# General updates
RUN apt-get update --fix-missing \
    && apt-get install -y --no-install-recommends gnupg software-properties-common apt-utils

# Include ondrej/php
RUN && echo "deb http://ppa.launchpad.net/ondrej/php/ubuntu $codename main" > /etc/apt/sources.list.d/ondrej-php.list \
    && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 4F4EA0AAE5267A6C \
    && apt-get update --fix-missing

# Install packages we need for below
RUN apt-get -yq install git wget curl zlib1g-dev libicu-dev libzip-dev

# Install the initial php$pv
RUN apt-get -yq install php$pv php$pv-dev  php$pv-common

# Install packages specific to this php build
RUN apt-get -yq install \
    && php$pv-intl \
    && php$pv-mbstring php$pv-dom php$pv-simplexml \
    && php$pv-curl php$pv-mysql php$pv-soap php$pv-gd

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# smoke test
RUN php --version

CMD ["php", "-a"]
