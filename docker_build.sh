#!/usr/bin/env bash
DOCKER_LATEST=test
docker build -t $DOCKER_LATEST .
CONTAINER_COPY=${DOCKER_LATEST}_container
docker run --name $CONTAINER_COPY -d -t $DOCKER_LATEST
mkdir dist
docker cp $CONTAINER_COPY:/build/hi.txt ./dist
docker rm $CONTAINER_COPY -f