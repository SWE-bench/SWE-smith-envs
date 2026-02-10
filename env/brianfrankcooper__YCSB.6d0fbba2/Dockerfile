FROM eclipse-temurin:8-jdk

RUN apt-get update && apt-get install -y git maven && rm -rf /var/lib/apt/lists/*


RUN git clone https://github.com/swesmith/brianfrankcooper__YCSB.6d0fbba2 /testbed
WORKDIR /testbed
RUN mvn clean install -B -q -DskipTests -pl core -am

CMD ["/bin/bash"]