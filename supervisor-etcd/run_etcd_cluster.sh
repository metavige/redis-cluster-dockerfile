#!/bin/bash

PUBLIC_IP=`ifconfig eth0 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}'`
docker run -d -p 7001:7001 -p 4001:4001 coreos/etcd -peer-addr ${PUBLIC_IP}:7001 -addr ${PUBLIC_IP}:4001 -name etcd-node1
#docker run -d -p 7002:7001 -p 4002:4002 coreos/etcd -peer-addr ${PUBLIC_IP}:7002 -addr ${PUBLIC_IP}:4002 -name etcd-node2 -peers ${PUBLIC_IP}:7001,${PUBLIC_IP}:7002,${PUBLIC_IP}:7003
#docker run -d -p 8003:8003 -p 4003:4003 coreos/etcd -peer-addr ${PUBLIC_IP}:7003 -addr ${PUBLIC_IP}:4003 -name etcd-node3 -peers ${PUBLIC_IP}:7001,${PUBLIC_IP}:7002,${PUBLIC_IP}:7003
