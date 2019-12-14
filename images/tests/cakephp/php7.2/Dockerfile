########################################
# Tests cakephp/app with ci_php7.2-cli #
########################################

FROM ci_php7.2-cli

# smoke test
RUN composer create-project --prefer-dist cakephp/cakephp cakephp \
    && cd cakephp \
    && composer update \
    && composer check

CMD ["php", "-a"]
