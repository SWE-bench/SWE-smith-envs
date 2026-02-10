FROM eclipse-temurin:21-jdk

RUN apt-get update && apt-get install -y git maven && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/apache__nifi.ab050e0c /testbed
WORKDIR /testbed
RUN ./mvnw clean install -B -q -DskipTests -pl nifi-commons/nifi-utils -am

CMD ["/bin/bash"]