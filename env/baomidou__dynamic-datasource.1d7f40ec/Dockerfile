FROM eclipse-temurin:17-jdk-focal

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/baomidou__dynamic-datasource.1d7f40ec /testbed
WORKDIR /testbed
RUN ./gradlew build -x test --no-daemon --console=plain

CMD ["/bin/bash"]