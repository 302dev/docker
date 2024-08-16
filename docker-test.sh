
!/bin/bash



 Stop any running images

ocker stop $(docker ps -a -q)

 Runs the commands to test the images.

ocker-compose -f docker-compose.test.yml -p ci build && \

ocker-compose -f docker-compose.test.yml -p ci up -d && \

ocker logs -f test-apache
