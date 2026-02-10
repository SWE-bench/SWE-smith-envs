FROM eclipse-temurin:17-jdk

RUN apt-get update && apt-get install -y git graphviz && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/plantuml__plantuml.783ae241 /testbed
WORKDIR /testbed
RUN ./gradlew --no-daemon --console=plain classes
CMD ["/bin/bash"]