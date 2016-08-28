docker-machine start default
echo "Sleeping before get environment"
sleep 10
docker-machine env default
eval $(docker-machine env default)


echo "Building and starging"
docker build -t test_web_git_hub --rm .
docker run -d -p 80:80 test_web_git_hub

