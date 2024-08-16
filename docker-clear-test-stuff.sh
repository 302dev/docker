
!/bin/bash

 Cleans up the images and stopped containers after testing



FS=$'\n'



 Stop any running test containers

cho "Stopping Test containers"

or line in $( docker ps -a | sed -n '1!p' ); do

   containerID=$(echo ${line} | awk '{print $1}')

   containerStatus=$(echo ${line} | awk '{print $1}')

   imageName=$(echo ${line} | awk '{print $2}')

   [[ ${imageName} =~ (ci_|\<none\>) ]] && \

       echo "Stoping container: ${imageName} - ${containerID}" && \

       docker stop ${containerID}

one



ocker rm $(docker ps -a -q -f status=exited)



 Removing test containers

cho "Removing Test containers"

or line in $( docker ps -a | sed -n '1!p' ); do

   containerID=$(echo ${line} | awk '{print $1}')

   imageName=$(echo ${line} | awk '{print $2}')

   [[ ${imageName} =~ (ci_|\<none\>) ]] && \

       echo "Removing container: ${imageName} - ${containerID}" && \

       docker rm ${containerID}

one



ocker ps -a



 Remove Test images

cho "Removing Test images"

or line in $( docker images | sed -n '1!p' ); do

   imageName=$(echo ${line} | awk '{print $1}')

   imageID=$(echo ${line} | awk '{print $3}')

   [[ ${imageName} =~ ^(ci_|\<none\>) ]] && \

       echo "Removing image: ${imageName} - ${imageID}" && \

       docker rmi ${imageID}

one



ocker images
