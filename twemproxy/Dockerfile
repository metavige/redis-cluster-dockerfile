FROM dockerfile/ubuntu

RUN cd /tmp && \
    wget https://twemproxy.googlecode.com/files/nutcracker-0.3.0.tar.gz && \ 
    tar zxvf nutcracker-0.3.0.tar.gz && \
    cd nutcracker-0.3.0 && \
    ./configure && \
    make && \
    make install


