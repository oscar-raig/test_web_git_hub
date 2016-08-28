CONTAINER_ID=$(docker ps -q --filter ancestor=test_web_git_hub)
docker stop $CONTAINER_ID
docker-machine stop default