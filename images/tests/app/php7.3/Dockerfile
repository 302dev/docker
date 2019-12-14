########################################
# Tests cakephp/app with ci_php7.3-cli #
########################################

FROM ci_php7.3-cli

# smoke test
RUN composer create-project --prefer-source cakephp/app:dev-master app \
    && cd app \
    && composer update \
    && composer test

EXPOSE 8765

CMD ["bin/cake", "server" "-p" "8766"]
