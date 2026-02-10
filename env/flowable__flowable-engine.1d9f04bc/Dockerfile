FROM maven:3.9.6-eclipse-temurin-17


RUN git clone https://github.com/swesmith/flowable__flowable-engine.1d9f04bc /testbed
WORKDIR /testbed
RUN mvn clean install -B -q -DskipTests -pl modules/flowable-bpmn-model -am

CMD ["/bin/bash"]