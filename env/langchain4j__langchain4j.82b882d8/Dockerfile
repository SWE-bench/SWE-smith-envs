FROM eclipse-temurin:17-jdk

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*


RUN git clone https://github.com/swesmith/langchain4j__langchain4j.82b882d8 /testbed
WORKDIR /testbed
# Build only core and open-ai modules to keep it manageable and stable
RUN ./mvnw clean install -B -q -DskipTests -pl langchain4j-core,langchain4j-open-ai,langchain4j -am

CMD ["/bin/bash"]