FROM nebula/ubuntu-base

MAINTAINER "metavige <metavige@gmail.com>"

ENV DEBIAN_FRONTEND noninteractive

# Install.
RUN \
  apt-get -q update && \
  apt-get install -qy python-pip && \
  rm -rf /var/lib/apt/lists/* 

ADD supervisor-etcd.conf /etc/supervisor/conf.d/etcd.conf
