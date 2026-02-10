FROM eclipse-temurin:8-jdk

RUN apt-get update && apt-get install -y git maven && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/apache__shardingsphere.ecf76ffc /testbed
WORKDIR /testbed
# Build required modules for infra-common
RUN mvn clean install -B -q -DskipTests -pl infra/common -am

CMD ["/bin/bash"]