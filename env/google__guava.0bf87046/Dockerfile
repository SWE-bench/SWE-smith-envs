FROM eclipse-temurin:11-jdk

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/google__guava.0bf87046 /testbed
WORKDIR /testbed
RUN ./mvnw clean install -B -q -DskipTests -pl guava,guava-tests -am
CMD ["/bin/bash"]