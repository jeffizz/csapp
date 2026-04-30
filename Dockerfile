FROM --platform=linux/amd64 ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    gcc-multilib \
    gdb \
    make \
    valgrind \
    binutils \
    strace \
    vim \
    git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /csapp

CMD ["/bin/bash"]
