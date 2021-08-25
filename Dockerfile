FROM python:3.9.6-slim-bullseye
ENV DEBIAN_FRONTEND=noninteractive
RUN echo 'deb http://deb.debian.org/debian bullseye main contrib non-free' > /etc/apt/sources.list.d/docker.list && \
    apt-get update 
RUN apt-get install -y --no-install-recommends \
    aria2 \
    chromium \
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
    netbase
RUN wget -qP /tmp/ "https://chromedriver.storage.googleapis.com/2.31/chromedriver_linux64.zip"
RUN unzip -o /tmp/chromedriver_linux64.zip -d /usr/bin
RUN chmod 755 /usr/bin/chromedriver

