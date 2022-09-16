###########################################
# Tests cakephp/app with ci_php7.4-apache #
###########################################

FROM ci_php7.4-apache

RUN useradd docker

RUN usermod −aG apache docker

USER docker

RUN composer create-project --prefer-dist cakephp/app /var/www/html ~4.0

WORKDIR /var/www/html

ADD cakephp.default.conf /etc/apache2/sites-enabled/000-default.conf

RUN chmod -R 777 tmp

RUN sudo a2enmod rewrite
RUN sudo service apache2 restart

RUN cp phpunit.xml.dist phpunit.xml \
    && composer test

EXPOSE 80
