#!/bin/bash

GREEN='\033[0;32m'
RESET='\033[0m'

PATH_TO_DOCKERFILE="$HOME/VScProjects/BMSTU/BMSTU-Shell/docker-compose.yaml"

docker compose -f "$PATH_TO_DOCKERFILE" up ubuntu --build -d
echo -e "\n${GREEN}Ubuntu 24.04 docker container is started${RESET}"
