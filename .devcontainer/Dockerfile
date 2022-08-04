FROM debian:bullseye-slim

RUN apt-get update \
    && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
    git \
    ssh \
    build-essential \
    gdb \
    expect \
    python3-pip \
    nodejs \
    npm \
    && pip3 install online-judge-tools \
    && npm install -g atcoder-cli \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf ~/.cache/pip \
    && npm cache clean --force
