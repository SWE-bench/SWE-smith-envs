FROM eclipse-temurin:11-jdk

RUN apt-get update && apt-get install -y git maven && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/apache__flink-cdc.7d9e1c62 /testbed
WORKDIR /testbed
# Use -pl flink-cdc-common -am to keep the build manageable if needed, 
# but let's try building the core modules.
RUN mvn clean install -B -q -DskipTests -pl flink-cdc-common,flink-cdc-pipeline-model,flink-cdc-runtime -am

CMD ["/bin/bash"]