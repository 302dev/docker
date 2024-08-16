
!/bin/bash



 Stop any running images

ocker stop $(docker ps -a -q)

 Runs the commands to test the images.

ocker-compose -f docker-compose.test-cli.yml -p ci build && \

ocker-compose -f docker-compose.test-cli.yml -p ci up -d && \

ocker logs test-cakephp-app-php7.4-cli && \

ocker logs test-cakephp-app-php8.0-cli && \

ocker logs test-cakephp-app-php8.1-cli && \

ocker logs test-cakephp-app-php8.2-cli && \

ocker logs test-cakephp-app-php-latest
