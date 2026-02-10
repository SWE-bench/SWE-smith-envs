FROM eclipse-temurin:17-jdk-focal

RUN apt-get update && apt-get install -y git maven python3 python2 build-essential && \
    rm -rf /var/lib/apt/lists/*

RUN ln -sf /usr/bin/python3 /usr/bin/python

RUN git clone https://github.com/swesmith/apache__storm.4bc158f0 /testbed
WORKDIR /testbed
# Use -DskipTests to only install dependencies.
# The multilang modules are needed as dependencies for storm-client
RUN mvn clean install -B -q -DskipTests -Dlicense.skip=true -Dcheckstyle.skip -Drat.skip=true -Denforcer.skip=true

CMD ["/bin/bash"]