FROM eclipse-temurin:17-jdk

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/apache__calcite.84e35baf /testbed
WORKDIR /testbed
# Use gradle wrapper to install dependencies. 
# We run help to trigger wrapper download and then build -x test to install deps.
RUN ./gradlew --no-daemon --console=plain help
RUN ./gradlew --no-daemon --console=plain build -x test --continue || true

CMD ["/bin/bash"]