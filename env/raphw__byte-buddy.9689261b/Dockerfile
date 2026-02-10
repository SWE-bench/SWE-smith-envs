FROM eclipse-temurin:17-jdk

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/raphw__byte-buddy.9689261b /testbed
WORKDIR /testbed
RUN ./mvnw clean install -B -q -DskipTests
CMD ["/bin/bash"]