#!/bin/bash

# Stop any running images
docker stop $(docker ps -a -q)
# Runs the commands to test the images.
docker-compose -f docker-compose.test.yml -p ci build && \
docker-compose -f docker-compose.test.yml -p ci up -d && \
docker logs -f test-apache
