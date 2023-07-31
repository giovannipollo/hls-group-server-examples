# Start with nvidia/cuda base image
FROM nvidia/cuda:12.1.0-base-ubuntu22.04

# Add a user that is the same as the host user
ARG USER_ID
ARG GROUP_ID

# Update the system
RUN apt update && apt upgrade -y
RUN apt-get update
# Install git, python3 and pip3
RUN apt install -y git python3 python3-pip python3-venv

# Install python packages
RUN pip3 install --upgrade pip
# Install Conda
RUN apt install -y wget

# Install miniconda
ENV CONDA_DIR /opt/conda
RUN wget --quiet https://repo.anaconda.com/archive/Anaconda3-2023.03-1-Linux-x86_64.sh -O ~/conda.sh && \
     /bin/bash ~/conda.sh -b -p /opt/conda


# Put conda in path so we can use conda activate
ENV PATH=$CONDA_DIR/bin:$PATH

# Install conda packages from environment.yml
COPY envinroment.yml .
RUN conda env create -f envinroment.yml

# Create the user
RUN groupadd -g ${GROUP_ID} docker_user
RUN useradd -m -u ${USER_ID} -g ${GROUP_ID} docker_user

# Switch to the user
USER docker_user