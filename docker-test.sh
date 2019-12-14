#!/bin/bash

# Runs the commands to test the images.
docker-compose -f docker-compose.test.yml -p ci build && \
docker-compose -f docker-compose.test.yml -p ci up -d && \
docker images && \
docker ps -a
