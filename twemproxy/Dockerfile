FROM dockerfile/ubuntu

RUN cd /tmp && \
    wget https://twemproxy.googlecode.com/files/nutcracker-0.3.0.tar.gz && \ 
    tar zxvf nutcracker-0.3.0.tar.gz && \
    cd nutcracker-0.3.0 && \
    ./configure && \
    make && \
    make install

ADD nutcracker.yml /etc/nutcracker/nutcracker.yml
ADD start-nutcracker.sh /root/start-nutcracker.sh
RUN chmod +x ./start-nutcracker.sh 

CMD ["./start-nutcracker.sh"]

EXPOSE 22120
EXPOSE 22222