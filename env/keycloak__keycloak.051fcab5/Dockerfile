FROM eclipse-temurin:17-jdk

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/keycloak__keycloak.051fcab5 /testbed
WORKDIR /testbed
# Build only the 'core' module and its dependencies to keep the build manageable
RUN ./mvnw clean install -B -q -DskipTests -pl core -am

CMD ["/bin/bash"]