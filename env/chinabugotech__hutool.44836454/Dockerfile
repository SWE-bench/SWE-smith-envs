FROM maven:3.9.6-eclipse-temurin-8

RUN git clone https://github.com/swesmith/chinabugotech__hutool.44836454 /testbed
WORKDIR /testbed
RUN mvn clean install -B -q -DskipTests

CMD ["/bin/bash"]