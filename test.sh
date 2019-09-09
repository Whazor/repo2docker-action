docker build -t jupyter-builder .
docker image rm notebook-tech -f
docker run --rm \
    -v /Users/nanne/Projects/notebook-tech:/notebook \
    --privileged -e DOCKER_HOST="tcp://host.docker.internal:2375" -e IMAGE_NAME=notebook-tech jupyter-builder