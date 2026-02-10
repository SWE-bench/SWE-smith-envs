FROM eclipse-temurin:21-jdk

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/baomidou__mybatis-plus.9c06ccaf /testbed
WORKDIR /testbed
RUN ./gradlew build -x test --no-daemon --console=plain
CMD ["/bin/bash"]