#!/usr/bin/env bash
docker build -t test .
docker run -t -d test --name my-test

docker cp my-test:/build/hi.txt ./