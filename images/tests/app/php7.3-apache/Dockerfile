###########################################
# Tests cakephp/app with ci_php7.3-apache #
###########################################

FROM ci_php7.3-apache

RUN composer create-project --prefer-source cakephp/app /var/www/html

WORKDIR /var/www/html

ADD cakephp.default.conf /etc/apache2/sites-enabled/000-default.conf

RUN chmod -R 777 tmp

RUN a2enmod rewrite

RUN chmod -R 777 tmp \
    && cp phpunit.xml.dist phpunit.xml \
    && composer test

EXPOSE 80
