FROM eclipse-temurin:17-jdk

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/mybatis__generator.c8cd0c8e /testbed
WORKDIR /testbed/core
RUN ./mvnw clean install -B -q -DskipTests
CMD ["/bin/bash"]