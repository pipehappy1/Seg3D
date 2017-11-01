FROM ubuntu:16.04

RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y qt5-default && \
  apt-get install -y subversion && \
  apt-get install -y git && \
  apt-get install -y libqt5svg5-dev && \
  apt-get install -y emacs && \
  apt-get install -y software-properties-common && \
  rm -rf /var/lib/apt/lists/*

