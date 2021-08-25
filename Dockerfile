FROM python:3.9.6-slim-bullseye
ENV DEBIAN_FRONTEND=noninteractive
RUN echo 'deb http://deb.debian.org/debian bullseye main' > /etc/apt/sources.list.d/docker.list && \
    apt-get update 
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

