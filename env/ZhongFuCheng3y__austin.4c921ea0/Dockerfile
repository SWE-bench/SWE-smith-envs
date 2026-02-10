FROM eclipse-temurin:8-jdk

RUN apt-get update && apt-get install -y git maven && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/ZhongFuCheng3y__austin.4c921ea0 /testbed
WORKDIR /testbed
RUN mvn clean install -B -q -DskipTests -pl '!austin-data-house'

CMD ["/bin/bash"]