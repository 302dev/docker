########################################
# Tests cakephp/app with ci_php7.2-cli #
########################################

FROM ci_php7.2-cli

# smoke test
RUN composer create-project --prefer-dist cakephp/app app \
    && cd app \
    && composer update \
    && composer check

EXPOSE 8765

CMD ["bin/cake", "server" "-p" "8765"]
