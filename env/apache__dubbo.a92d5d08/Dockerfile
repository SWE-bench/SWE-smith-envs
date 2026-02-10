FROM eclipse-temurin:8-jdk-focal

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*


RUN git clone https://github.com/swesmith/apache__dubbo.a92d5d08 /testbed
WORKDIR /testbed
RUN ./mvnw clean install -B -q -DskipTests -pl dubbo-common,dubbo-remoting,dubbo-rpc,dubbo-cluster,dubbo-registry,dubbo-config -am

CMD ["/bin/bash"]