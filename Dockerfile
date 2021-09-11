FROM ubuntu:21.04
ENV DEBIAN_FRONTEND=noninteractive
RUN echo "deb http://us.archive.ubuntu.com/ubuntu/ hirsute universe" > /etc/apt/sources.list && \
    apt-get update && \
RUN apt-get install -y --no-install-recommends \
    aria2 \
    chromium \
    chromium-chromedriver \
    curl \
    git \
    g++ \
    build-essential \
    gnupg2 \
    figlet \
    ffmpeg \
    jq \
    libpq-dev \
    libevent-dev \
    neofetch \
    netbase \
    wget \
    unzip \
    python3-pip
