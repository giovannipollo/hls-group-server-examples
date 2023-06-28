# Start with nvidia/cuda base image
FROM nvidia/cuda:12.1.0-base-ubuntu22.04

# Add a user that is the same as the host user
ARG USER_ID
ARG GROUP_ID

# Update the system
RUN apt update && apt upgrade -y

RUN apt-get install software-properties-common -y

# Install git, python3 and pip3
RUN apt install -y git python3 python3-pip python3-venv

# Install python packages
RUN pip3 install --upgrade pip

# Copy the requirements.txt file
COPY requirements.txt requirements.txt

# Create the user
RUN groupadd -g ${GROUP_ID} docker_user
RUN useradd -m -u ${USER_ID} -g ${GROUP_ID} docker_user

# Switch to the user
USER docker_user

# Install the requirements
RUN pip3 install -r requirements.txt