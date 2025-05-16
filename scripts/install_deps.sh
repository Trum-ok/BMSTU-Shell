#!/bin/bash

set -e

apt-get update
DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    clang \
    curl \
    file \
    git \
    lcov \
    llvm \
    shellcheck \
    vim \
    wget \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*
