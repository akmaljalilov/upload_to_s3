#!/usr/bin/env bash
docker build -t test .
docker run -t -d test test_container --name test_container

docker cp my-test:/build/hi.txt ./