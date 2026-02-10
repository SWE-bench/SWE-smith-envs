FROM maven:3.9.6-eclipse-temurin-17

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*


RUN git clone https://github.com/swesmith/apache__hbase.30c42a87 /testbed
WORKDIR /testbed
# Use -pl hbase-common to limit the scope because HBase is massive and might timeout/fail on a full build in some environments
# We will install hbase-common and its dependencies
RUN mvn clean install -B -q -DskipTests -pl hbase-common -am

CMD ["/bin/bash"]