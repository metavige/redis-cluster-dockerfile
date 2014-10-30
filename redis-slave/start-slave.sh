#!/bin/bash

redis-server --slaveof $REDIS_PORT_6379_TCP_ADDR $REDIS_PORT_6379_TCP_PORT