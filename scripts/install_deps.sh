#!/bin/bash

set -e

apt-get update
DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    clang \
    curl \
    file \
    git \
    gcov \
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
    libc6-dbg
