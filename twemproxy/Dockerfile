FROM nebula/ubuntu-confd

ENV DEBIAN_FRONTEND noninteractive

RUN \
    apt-get -q update && \
    apt-get -qy install nodejs && \
    rm -rf /var/lib/apt/lists/* && \
    ln -s /usr/bin/js /usr/bin/node

# Install twemproxy
RUN curl -qL https://twemproxy.googlecode.com/files/nutcracker-0.3.0.tar.gz | tar xzf -
RUN cd nutcracker-0.3.0 && ./configure --enable-debug=log && make && mv src/nutcracker /twemproxy
RUN cd / && rm -rf nutcracker-0.3.0

RUN git clone https://github.com/Stono/redis-twemproxy-agent.git /root/redis-twemproxy-agent     

# Set up run script
ADD run.sh /run.sh
RUN chmod 755 /run.sh

# Copy confd files
ADD confd/conf.d/twemproxy.toml /etc/confd/conf.d/twemproxy.toml
ADD confd/templates/twemproxy.tmpl /etc/confd/templates/twemproxy.tmpl

ADD confd/conf.d/cli.js.toml /etc/confd/conf.d/cli.js.toml
ADD confd/templates/cli.js.tmpl /etc/confd/templates/cli.js.tmpl

# Copy supervisord files
ADD supervisord.conf /etc/supervisor/supervisord.conf

EXPOSE 6000 6222

CMD ["/run.sh"]
