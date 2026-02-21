#!/bin/bash

set -e

apt-get update
DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    clang \
    curl \
    file \
    git \
    gcc \
    gdb \
    ghostscript \
    lcov \
    llvm \
    shellcheck \
    shfmt \
    vim \
    wget \
    python3 \
    python3-pip \
    libasan* \
    libubsan* \
    libtsan* \
    liblsan* \
    libc6-dbg \
    locales

echo "ru_RU.UTF-8 UTF-8" > /etc/locale.gen
locale-gen ru_RU.UTF-8
update-locale LANG=ru_RU.UTF-8 LC_ALL=ru_RU.UTF-8
