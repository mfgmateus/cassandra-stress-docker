#!/bin/bash

mkdir -p /var/loadgen/cassandra/$TEST_NAME
LOG_FILE=/var/loadgen/cassandra/$TEST_NAME/$HOSTNAME.log
GRAPH_FILE=/var/loadgen/cassandra/$TEST_NAME/$HOSTNAME.html
/cassandra/tools/bin/cassandra-stress user duration=$DURATION profile=$PROFILE $OPERATIONS no-warmup -node $NODES -rate threads=$THREADS -log file=$LOG_FILE -graph file=$GRAPH_FILE 

while true
do
    sleep 10
done
