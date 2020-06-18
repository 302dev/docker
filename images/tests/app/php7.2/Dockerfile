########################################
# Tests cakephp/app with ci_php7.2-cli #
########################################

FROM ci_php7.2-cli

RUN composer create-project --prefer-dist cakephp/app /app ~4.0

WORKDIR /app

RUN cp phpunit.xml.dist phpunit.xml \
    && composer test

ADD run.sh /run.sh

ENTRYPOINT /run.sh

EXPOSE 8765
