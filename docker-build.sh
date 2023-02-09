#!/bin/bash

# Stop any running images
docker stop $(docker ps -a -q)
# Runs the commands to test the images.
docker-compose -p ci build && \
docker-compose -p ci up -d && \
docker logs php7.4-cli && \
docker logs php7.4-apache && \
docker logs php8.0-cli && \
docker logs php8.0-apache && \
docker logs php8.1-cli && \
docker logs php8.1-apache && \
docker logs php8.2-cli && \
docker logs php8.2-apache && \
docker logs php-latest && \
docker images && \
docker ps -a
