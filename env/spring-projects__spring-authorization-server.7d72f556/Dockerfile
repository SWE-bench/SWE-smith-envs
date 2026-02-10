FROM eclipse-temurin:17-jdk

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/spring-projects__spring-authorization-server.7d72f556 /testbed
WORKDIR /testbed
RUN ./gradlew classes --no-daemon --console=plain

CMD ["/bin/bash"]