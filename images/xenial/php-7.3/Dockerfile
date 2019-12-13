############################
# 302dev/bionic:php7.3-cli #
############################

FROM ubuntu:xenial

ARG codename='xenial'
ARG pv='7.3'

# Fixes some weird terminal issues such as broken clear / CTRL+L
ENV TERM=linux

ENV DEBIAN_FRONTEND noninteractive

ENV LC_ALL=C.UTF-8

# General updates, and include ondrej
RUN apt-get update --fix-missing \
    && apt-get install -y --no-install-recommends gnupg software-properties-common \
    && add-apt-repository ppa:ondrej/php \
    && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 4F4EA0AAE5267A6C \
    && apt-get update --fix-missing

# Install packages we need for below
RUN apt-get -yq install git wget curl zlib1g-dev libicu-dev libzip-dev

# Install the initial php$pv
RUN apt-get -yq install php$pv php$pv-dev

# Install packages specific to this php build
RUN apt-get -yq install \
    && php$pv-xdebug php$pv-intl \
    && php$pv-mbstring php$pv-dom php$pv-simplexml \
    && php$pv-curl php$pv-mysql php$pv-soap php$pv-gd

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# smoke test
RUN php --version

CMD ["php", "-a"]
