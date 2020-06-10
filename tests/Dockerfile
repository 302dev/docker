FROM ubuntu:latest

RUN echo "--------------------------" && \
    echo "-------Running Test-------" && \
    echo "--------------------------"
RUN apt-get update && apt-get install -yq curl && apt-get clean

WORKDIR /test

COPY test.sh /test/test.sh
COPY test-cakephp-app-php7.2-apache.sh /test/test-cakephp-app-php7.2-apache.sh
COPY test-cakephp-app-php7.3-apache.sh /test/test-cakephp-app-php7.3-apache.sh
COPY test-cakephp-app-php7.4-apache.sh /test/test-cakephp-app-php7.4-apache.sh
COPY _helpers.sh /test/_helpers.sh
COPY expected/test-cakephp-app-php7.2-apache.html /test/expected/test-cakephp-app-php7.2-apache.html
COPY expected/test-cakephp-app-php7.3-apache.html /test/expected/test-cakephp-app-php7.3-apache.html
COPY expected/test-cakephp-app-php7.4-apache.html /test/expected/test-cakephp-app-php7.4-apache.html

RUN mkdir -p actual/

CMD ["bash", "test.sh"]
