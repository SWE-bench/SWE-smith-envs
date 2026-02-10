FROM eclipse-temurin:11-jdk

RUN apt-get update && apt-get install -y git maven && rm -rf /var/lib/apt/lists/*


RUN git clone https://github.com/swesmith/apache__rocketmq.9ad4a1b9 /testbed
WORKDIR /testbed
# Build only a subset of core modules to stay within time limits
RUN mvn clean install -B -q -DskipTests -pl common,namesrv,srvutil -am

CMD ["/bin/bash"]