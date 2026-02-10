FROM maven:3.9.6-eclipse-temurin-17

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/quarkusio__quarkus.99a220ef /testbed
WORKDIR /testbed
# Remove Maven 4/Extension configs
RUN rm -f .mvn/extensions.xml .mvn/maven.config

# Build a simpler module to avoid complex dependency and configuration issues
RUN mvn clean install -B -q -am -pl independent-projects/arc/runtime -DskipTests -Denforcer.skip=true
CMD ["/bin/bash"]