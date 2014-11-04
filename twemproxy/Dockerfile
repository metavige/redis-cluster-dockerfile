FROM nebula/ubuntu-confd

MAINTAINER "metavige <metavige@gmail.com>"

# Install twemproxy
RUN curl -qL https://twemproxy.googlecode.com/files/nutcracker-0.3.0.tar.gz | tar xzf -
RUN cd nutcracker-0.3.0 && ./configure --enable-debug=log && make && mv src/nutcracker /twemproxy
RUN cd /root && rm -rf nutcracker-0.3.0

# Set up run script
ADD run.sh /root/bin/twemproxy-run.sh
RUN chmod 755 /root/bin/twemproxy-run.sh

# Copy confd files
ADD confd/conf.d/twemproxy.toml /etc/confd/conf.d/twemproxy.toml
ADD confd/templates/twemproxy.tmpl /etc/confd/templates/twemproxy.tmpl

# Copy supervisord files
ADD supervisord.conf /etc/supervisor/conf.d/twemproxy.conf

EXPOSE 22 6000 6222

CMD ["/root/bin/twemproxy-run.sh"]
