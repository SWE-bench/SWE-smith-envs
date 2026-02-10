FROM maven:3.8.8-eclipse-temurin-8

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/alibaba__otter.7544d051 /testbed
WORKDIR /testbed
RUN cd lib && bash install.sh
RUN mvn clean install -B -q -DskipTests -Denv=release
CMD ["/bin/bash"]