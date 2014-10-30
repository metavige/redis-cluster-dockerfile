FROM ubuntu:14.04

MAINTAINER "metavige <metavige@gmail.com>"

ENV DEBIAN_FRONTEND noninteractive

# Install.
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get -q update && \
  apt-get -qy upgrade && \
  apt-get install -qy build-essential && \
  apt-get install -qy software-properties-common && \
  apt-get install -qy byobu htop man unzip vim supervisor wget curl git && \
  rm -rf /var/lib/apt/lists/* 

# Better logging of services in supervisor
RUN apt-get -qy install python-pip && pip install --quiet supervisor-stdout

# Install confd
RUN curl -qL https://github.com/kelseyhightower/confd/releases/download/v0.5.0/confd-0.5.0-linux-amd64 -o /confd && chmod +x /confd
RUN mkdir -p /etc/confd/conf.d
RUN mkdir -p /etc/confd/templates
