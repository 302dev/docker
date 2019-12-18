#!/bin/bash
source _helpers.sh

echo
echo "=> Sleeping to allow boot of containers"
sleep 10

if [ ! -d actual ]; then
    mkdir actual
fi

echo
echo "=> Testing test-cakephp-app-php7.2-apache"
. test-cakephp-app-php7.2-apache.sh

echo "=> Testing test-cakephp-app-php7.3-apache"
. test-cakephp-app-php7.3-apache.sh
