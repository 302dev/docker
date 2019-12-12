#!/bin/bash

# Runs the commands to test the images.
docker-compose -f docker-compose.test.yml -p ci build && \
docker-compose -f docker-compose.test.yml -p ci up -d && \
docker logs -f ci_test && echo "Exited with status code: $(docker wait ci_test)";
