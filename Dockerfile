FROM --platform=linux/amd64 ubuntu:20.04

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
    # === Architecture Lab ===
    tcl-dev \
    tk-dev \
    xauth \
    libx11-dev \
    flex \
    bison \
    libfl-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /csapp

CMD ["/bin/bash"]
