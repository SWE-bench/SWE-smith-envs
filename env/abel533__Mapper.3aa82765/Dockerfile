FROM maven:3.9-eclipse-temurin-17

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/abel533__Mapper.3aa82765 /testbed
WORKDIR /testbed
RUN mvn clean install -B -q -DskipTests
CMD ["/bin/bash"]