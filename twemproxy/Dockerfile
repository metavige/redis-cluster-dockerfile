FROM nebula/ubuntu-confd

ENV DEBIAN_FRONTEND noninteractive

# Install twemproxy
RUN curl -qL https://twemproxy.googlecode.com/files/nutcracker-0.3.0.tar.gz | tar xzf -
RUN cd nutcracker-0.3.0 && ./configure --enable-debug=log && make && mv src/nutcracker /twemproxy
RUN cd / && rm -rf nutcracker-0.3.0
# Set up run script
ADD run.sh /run.sh
RUN chmod 755 /run.sh

# Copy confd files
ADD confd/conf.d/twemproxy.toml /etc/confd/conf.d/twemproxy.toml
ADD confd/templates/twemproxy.tmpl /etc/confd/templates/twemproxy.tmpl

# Copy supervisord files
ADD supervisord.conf /etc/supervisor/supervisord.conf

EXPOSE 6000 6222

CMD ["/run.sh"]
