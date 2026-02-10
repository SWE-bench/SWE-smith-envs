FROM eclipse-temurin:11-jdk

RUN apt-get update && apt-get install -y git ant ant-optional python3 python3-pip && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/apache__cassandra.7fe688b0 /testbed
WORKDIR /testbed
# Cassandra build can be heavy, we'll run 'ant jar' to download dependencies and build the core
RUN ant jar

CMD ["/bin/bash"]