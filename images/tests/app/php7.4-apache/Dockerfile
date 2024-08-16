
##########################################

 Tests cakephp/app with ci_php7.4-apache #

##########################################



ROM ci_php7.4-apache



DD cakephp.default.conf /etc/apache2/sites-enabled/000-default.conf



UN a2enmod rewrite

UN service apache2 restart



UN useradd docker



UN if [[ $(grep apache /etc/group) ]]; then usermod −aG apache docker; elif [[ $(grep www-data /etc/group) ]]; then usermod −aG www-data docker; fi



UN mkdir -p /home/docker/.composer \

   && chown -R docker /home/docker/.composer



UN mkdir -p /var/www/html \

   && chown -R docker /var/www/html



SER docker



UN composer create-project --prefer-dist cakephp/app /var/www/html ~4.0



ORKDIR /var/www/html



UN chmod -R 777 tmp



UN echo $(ls -l /usr/local/lib/php/extensions/)



UN cp phpunit.xml.dist phpunit.xml \

   && composer test



XPOSE 80
