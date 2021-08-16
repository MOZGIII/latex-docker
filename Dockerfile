FROM debian:buster

RUN apt-get update \
  && apt-get install -y \
  texlive-full \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /data
