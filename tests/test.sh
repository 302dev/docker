
!/bin/bash

ource _helpers.sh



cho

cho "=> Sleeping to allow boot of containers"

leep 10



f [ ! -d actual ]; then

   mkdir actual

i



cho "=> Testing test-cakephp-app-php7.4-apache"

 test-cakephp-app-php7.4-apache.sh



cho "=> Testing test-cakephp-app-php8.0-apache"

 test-cakephp-app-php8.0-apache.sh



cho "=> Testing test-cakephp-app-php8.1-apache"

 test-cakephp-app-php8.1-apache.sh



cho "=> Testing test-cakephp-app-php8.2-apache"

 test-cakephp-app-php8.2-apache.sh
