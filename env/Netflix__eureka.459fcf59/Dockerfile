FROM eclipse-temurin:8-jdk

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/Netflix__eureka.459fcf59 /testbed
WORKDIR /testbed
RUN ./gradlew build -x test --no-daemon --console=plain

CMD ["/bin/bash"]