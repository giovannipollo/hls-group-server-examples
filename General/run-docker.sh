# Build the image
docker build -t my-first-docker-container --build-arg USER_ID=$(id -u ${USER}) --build-arg GROUP_ID=$(id -g ${USER}) .

# Run the image passing the current directory as a volume and the GPU devices and pass the user
docker run -it --gpus  '"device=0"' --rm -m 80g --shm-size=80gb --cpus="12" --name my-first-docker-container-container -v FOLDER_OUTSIDE_DOCKER_CONTAINER:FOLDER_INSIDE_DOCKER_CONTAINER -w FOLDER_INSIDE_DOCKER_CONTAINER my-first-docker-container bash