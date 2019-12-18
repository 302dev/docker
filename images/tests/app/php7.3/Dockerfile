########################################
# Tests cakephp/app with ci_php7.3-cli #
########################################

FROM ci_php7.3-cli

RUN composer create-project --prefer-dist cakephp/app /app

WORKDIR /app

RUN cp phpunit.xml.dist phpunit.xml \
    && composer test

ADD run.sh run.sh

ENTRYPOINT run.sh

EXPOSE 8765
