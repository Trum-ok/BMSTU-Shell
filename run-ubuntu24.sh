#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
RESET='\033[0m'

err() {
    echo -e "${RED}Error: $*${RESET}" >&2
}

PATH_TO_DOCKERFILE="$HOME/VScProjects/BMSTU/BMSTU-Shell/docker-compose.yaml"
UBUNTU_CONTAINER_NAME="ubuntu24"

if ! docker compose -f "$PATH_TO_DOCKERFILE" up "$UBUNTU_CONTAINER_NAME" --build -d; then
    err "Failed to start the docker container"
    exit 1
fi

echo -e "\n${GREEN}Ubuntu 24 docker container is started${RESET}"
