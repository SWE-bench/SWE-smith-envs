FROM eclipse-temurin:11-jdk-focal

RUN apt-get update && apt-get install -y git maven thrift-compiler && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/apache__iotdb.36dadf5d /testbed
WORKDIR /testbed
RUN mvn clean install -B -q -DskipTests -am -pl iotdb-api/udf-api,iotdb-api/trigger-api,iotdb-core/node-commons

CMD ["/bin/bash"]