FROM ubuntu:16.04

RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y git && \
  apt-get install -y libqt5svg5-dev && \
  apt-get install -y emacs && \
  apt-get install -y qt5-default && \
  apt-get install -y software-properties-common && \
  apt-get install -y subversion && \
  apt-get install -y wget && \
  rm -rf /var/lib/apt/lists/*

RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y libssl-dev && \
  apt-get install -y cmake && \
  apt-get install -y curl && \
  apt-get install -y python-dev libpython-dev libpython3-dev python3-dev

RUN curl --version


WORKDIR /seg3d

COPY build.sh /seg3d/build.sh
COPY scripts /seg3d/scripts
COPY src /seg3d/src
COPY Superbuild /seg3d/Superbuild

# RUN ls /seg3d

RUN \
  /bin/bash /seg3d/build.sh
