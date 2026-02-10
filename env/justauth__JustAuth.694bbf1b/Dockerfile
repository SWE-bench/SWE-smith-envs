FROM eclipse-temurin:8-jdk

RUN apt-get update && apt-get install -y git maven && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/justauth__JustAuth.694bbf1b /testbed
WORKDIR /testbed
RUN mvn clean install -B -q -DskipTests

CMD ["/bin/bash"]