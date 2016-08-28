#!/bin/sh
CONTAINER_ID=$(docker ps -q --filter ancestor=test_web_git_hub)
docker stop $CONTAINER_ID
docker build -t test_web_git_hub --rm .
docker run -d -p 80:80 test_web_git_hub
