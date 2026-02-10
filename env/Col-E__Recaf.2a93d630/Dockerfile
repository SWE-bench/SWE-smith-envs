FROM eclipse-temurin:22-jdk

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/Col-E__Recaf.2a93d630 /testbed
WORKDIR /testbed
RUN ./gradlew :recaf-core:build -x test --no-daemon --console=plain

CMD ["/bin/bash"]