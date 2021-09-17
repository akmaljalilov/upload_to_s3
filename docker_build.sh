#!/usr/bin/env bash
docker build -t test .
docker run --name my-test-new -d -t test

docker cp my-test-new:/build/hi.txt ./