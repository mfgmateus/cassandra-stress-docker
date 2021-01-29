FROM openjdk:8

RUN wget https://downloads.apache.org/cassandra/3.11.8/apache-cassandra-3.11.8-bin.tar.gz && \
	tar -xf apache-cassandra-3.11.8-bin.tar.gz && \
	mv apache-cassandra-3.11.8 /cassandra

ENV PROFILE=/cassandra/tools/cqlstress-example.yaml
ENV OPERATIONS=ops(simple1=1)
ENV NODES=34.121.17.215
ENV TEST_NAME=default
ENV DURATION=10m
ENV THREADS=4

ADD entrypoint.sh /

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
