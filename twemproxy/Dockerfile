FROM dockerfile/ubuntu

RUN cd /tmp && \
    wget https://twemproxy.googlecode.com/files/nutcracker-0.3.0.tar.gz && \ 
    tar zxvf nutcracker-0.3.0.tar.gz && \
    cd nutcracker-0.3.0 && \
    ./configure && \
    make && \
    make install

RUN cd /tmp && \
    git clone https://gist.github.com/0b391af99fb9db4efa65.git nutcracker_conf && \
    mkdir /etc/nutcracker && \
    cp nutcracker_conf/nutcracker.yml /etc/nutcracker/nutcracker.yml && \
    sed -i 's/{REDIS_HOST}/'"$REDIS_PORT_6379_TCP_ADDR"'/g' /etc/nutcracker/nutcracker.yml && \
    sed -i 's/{REDIS_POST}/'"$REDIS_PORT_6379_TCP_POST"'/g' /etc/nutcracker/nutcracker.yml

CMD ["nutcracker", "-d", "-c", "/etc/nutcracker/nutcracker.yml", "-o", "/var/log/nutcracker.log"]

EXPOSE 22120
EXPOSE 22222