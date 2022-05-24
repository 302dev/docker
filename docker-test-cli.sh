#!/bin/bash

# Stop any running images
docker stop $(docker ps -a -q)
# Runs the commands to test the images.
docker-compose -f docker-compose.test-cli.yml -p ci build && \
docker-compose -f docker-compose.test-cli.yml -p ci up -d && \
docker logs test-cakephp-app-php7.4-cli && \
docker logs test-cakephp-app-php8.0-cli
