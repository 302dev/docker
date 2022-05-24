########################################
# Tests cakephp/app with ci_php8.0-cli #
########################################

FROM ci_php8.0-cli

RUN composer create-project --prefer-dist cakephp/app /app ~4.0

WORKDIR /app

RUN cp phpunit.xml.dist phpunit.xml \
    && composer test

ADD run.sh /run.sh

ENTRYPOINT /run.sh

EXPOSE 8765
