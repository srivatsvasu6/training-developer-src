FROM openjdk:11

# Install Kafka and ZooKeeper
RUN wget https://downloads.apache.org/kafka/2.8.1/kafka_2.13-2.8.1.tgz -O /tmp/kafka.tgz && \
    tar -xzf /tmp/kafka.tgz -C /opt && \
    mv /opt/kafka_2.13-2.8.1 /opt/kafka && \
    rm /tmp/kafka.tgz

RUN wget https://downloads.apache.org/zookeeper/zookeeper-3.7.0/apache-zookeeper-3.7.0-bin.tar.gz -O /tmp/zookeeper.tgz && \
    tar -xzf /tmp/zookeeper.tgz -C /opt && \
    mv /opt/apache-zookeeper-3.7.0-bin /opt/zookeeper && \
    rm /tmp/zookeeper.tgz

# Add Kafka and ZooKeeper to PATH
ENV PATH="/opt/kafka/bin:/opt/zookeeper/bin:${PATH}"

# Any other setup or dependencies you may need
