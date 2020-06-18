#!/bin/bash

# Stop any running images
docker stop $(docker ps -a -q)
# Runs the commands to test the images.
docker-compose -f docker-compose.74.yml -p ci build && \
docker-compose -f docker-compose.74.yml -p ci up -d && \
docker logs php7.4-cli && \
docker logs php7.4-apache && \
docker images && \
docker ps -a
