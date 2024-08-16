
#######################################

 Tests cakephp/app with ci_php7.4-cli #

#######################################



ROM ci_php7.4-cli



UN useradd docker



UN mkdir -p /home/docker/.composer \

   && chown -R docker /home/docker/.composer



UN mkdir -p /app \

   && chown -R docker /app



SER docker



UN composer create-project --prefer-dist cakephp/app /app ~4.0



ORKDIR /app



UN echo $(ls -l /usr/local/lib/php/extensions/)



UN chmod -R 777 tmp \

   && cp phpunit.xml.dist phpunit.xml \

   && composer test



DD run.sh /run.sh



NTRYPOINT /run.sh



XPOSE 8765
