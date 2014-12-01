!/bin/bash

# This is an alternative to invoking decking build 

docker build -t belka/apt-cacher-ng ./docker/apt-cacher-ng
docker build -t belka/devpi-server ./docker/devpi-server
docker build -t belka/gitpod ./docker/gitpod
