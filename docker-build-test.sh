#!/bin/bash

# Runs the commands to test the images.
docker-compose -p ci build && \
docker-compose -p ci up -d && \
docker logs bionic-php7.2-cli && \
docker logs bionic-php7.3-cli && \
docker logs xenial-php7.2-cli && \
docker logs xenial-php7.3-cli && \
docker images && \
docker ps -a
