# Start with nvidia/cuda base image
FROM tensorflow/tensorflow:latest-gpu

# Add a user that is the same as the host user
ARG USER_ID
ARG GROUP_ID

# Update the system
RUN apt update && apt upgrade -y

# Install git, python3 and pip3
RUN apt install -y git python3 python3-pip 

# Copy the requirements file
COPY requirements.txt requirements.txt

# Create the user
RUN groupadd -g ${GROUP_ID} docker_user
RUN useradd -m -u ${USER_ID} -g ${GROUP_ID} docker_user

# Switch to the user
USER docker_user


# Install requirements
RUN pip3 install -r requirements.txt