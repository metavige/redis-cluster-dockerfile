FROM nebula/ubuntu-base

MAINTAINER "metavige <metavige@gmail.com>"

# Install confd
RUN curl -qL https://github.com/kelseyhightower/confd/releases/download/v0.6.3/confd-0.6.3-linux-amd64 -o /tmp/confd && \
    mv /tmp/confd /usr/local/bin/confd && \
    chmod +x /usr/local/bin/confd
RUN mkdir -p /etc/confd/conf.d
RUN mkdir -p /etc/confd/templates
