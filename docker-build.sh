#!/bin/bash

# Runs the commands to test the images.
docker-compose -p ci build && \
docker-compose -p ci up -d && \
docker logs php7.2-cli && \
docker logs php7.3-cli && \
docker images && \
docker ps -a
