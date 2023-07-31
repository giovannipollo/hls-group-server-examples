This folder contains general examples, when you want to replicate a conda enviroment in a Docker container.

## How to use

1. Launch the container with the following command:
```bash
./run-docker.sh
```

2. Once inside the container, run the following command to initialize the conda environment:
```bash
conda init
```

3. Source the bashrc file to activate the conda environment:
```bash
source ~/.bashrc
```

4. Run the following command to activate your custom conda environment:
```bash
conda activate myenv
```