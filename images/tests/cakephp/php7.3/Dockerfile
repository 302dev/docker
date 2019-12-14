########################################
# Tests cakephp/app with ci_php7.3-cli #
########################################

FROM ci_php7.3-cli

# smoke test
RUN composer create-project --prefer-dist cakephp/cakephp cakephp \
    && cd cakephp \
    && composer test

CMD ["php", "-a"]
