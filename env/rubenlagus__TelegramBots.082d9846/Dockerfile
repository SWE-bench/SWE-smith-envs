FROM eclipse-temurin:17-jdk

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/rubenlagus__TelegramBots.082d9846 /testbed
WORKDIR /testbed
RUN ./mvnw clean install -B -q -DskipTests -Dgpg.skip
CMD ["/bin/bash"]