FROM eclipse-temurin:25-jdk-noble

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/hibernate__hibernate-orm.8cc56928 /testbed
WORKDIR /testbed
# Use -x test to skip tests during installation phase
RUN ./gradlew help --no-daemon --console=plain

CMD ["/bin/bash"]