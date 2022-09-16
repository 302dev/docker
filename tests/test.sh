#!/bin/bash
source _helpers.sh

echo
echo "=> Sleeping to allow boot of containers"
sleep 10

if [ ! -d actual ]; then
    mkdir actual
fi

echo "=> Testing test-cakephp-app-php7.4-apache"
. test-cakephp-app-php7.4-apache.sh

echo "=> Testing test-cakephp-app-php8.0-apache"
. test-cakephp-app-php8.0-apache.sh
