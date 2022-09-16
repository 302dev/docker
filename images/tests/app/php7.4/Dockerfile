########################################
# Tests cakephp/app with ci_php7.4-cli #
########################################

FROM ci_php7.4-cli

RUN useradd docker

RUN mkdir -p /home/docker/.composer \
    && chown -R docker /home/docker/.composer

RUN mkdir -p /app \
    && chown -R docker /app

USER docker

RUN composer create-project --prefer-dist cakephp/app /app ~4.0

WORKDIR /app

RUN chmod -R 777 tmp \
    && cp phpunit.xml.dist phpunit.xml \
    && composer test

ADD run.sh /run.sh

ENTRYPOINT /run.sh

EXPOSE 8765
