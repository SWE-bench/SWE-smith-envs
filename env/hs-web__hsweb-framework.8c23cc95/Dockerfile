FROM eclipse-temurin:17-jdk

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/hs-web__hsweb-framework.8c23cc95 /testbed
WORKDIR /testbed
RUN ./mvnw clean install -B -q -DskipTests

CMD ["/bin/bash"]