###########################################
# Tests cakephp/app with ci_php8.0-apache #
###########################################

FROM ci_php8.2-apache

ADD cakephp.default.conf /etc/apache2/sites-enabled/000-default.conf

RUN a2enmod rewrite
RUN service apache2 restart

RUN useradd docker

RUN if [[ $(grep apache /etc/group) ]]; then usermod −aG apache docker; elif [[ $(grep www-data /etc/group) ]]; then usermod −aG www-data docker; fi

RUN mkdir -p /home/docker/.composer \
    && chown -R docker /home/docker/.composer

RUN mkdir -p /var/www/html \
    && chown -R docker /var/www/html

USER docker

RUN composer create-project --prefer-dist cakephp/app /var/www/html ~4.0

WORKDIR /var/www/html

RUN chmod -R 777 tmp

RUN echo $(ls -l /usr/local/lib/php/extensions/)

RUN cp phpunit.xml.dist phpunit.xml \
    && composer test

EXPOSE 80
