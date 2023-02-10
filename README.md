## Container template to develop within a containerised environment

docker build -t myapp-dev .


docker run -it --name myapp-dev --rm \
    --volume $(pwd):/usr/src/app \
    --net=host myapp-dev:latest \
    sh


Using --volume bind mount allows pwd on host machine to be available inside the container, allowing edits to be shared between local machine and within the contianer.

--net=host allows the container to share the host network  using the localhost address.

