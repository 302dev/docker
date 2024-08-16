
ROM ubuntu:latest



UN echo "--------------------------" && \

   echo "-------Running Test-------" && \

   echo "--------------------------"

UN apt-get update && apt-get install -yq curl && apt-get clean



ORKDIR /test



OPY test.sh /test/test.sh

OPY test-cakephp-app-php7.4-apache.sh /test/test-cakephp-app-php7.4-apache.sh

OPY test-cakephp-app-php8.0-apache.sh /test/test-cakephp-app-php8.0-apache.sh

OPY test-cakephp-app-php8.1-apache.sh /test/test-cakephp-app-php8.1-apache.sh

OPY test-cakephp-app-php8.2-apache.sh /test/test-cakephp-app-php8.2-apache.sh

OPY _helpers.sh /test/_helpers.sh

OPY expected/test-cakephp-app-php7.4-apache.html /test/expected/test-cakephp-app-php7.4-apache.html

OPY expected/test-cakephp-app-php8.0-apache.html /test/expected/test-cakephp-app-php8.0-apache.html

OPY expected/test-cakephp-app-php8.1-apache.html /test/expected/test-cakephp-app-php8.1-apache.html

OPY expected/test-cakephp-app-php8.2-apache.html /test/expected/test-cakephp-app-php8.2-apache.html



UN mkdir -p actual/



MD ["bash", "test.sh"]
