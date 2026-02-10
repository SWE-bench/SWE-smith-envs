FROM eclipse-temurin:8-jdk

RUN apt-get update && apt-get install -y git maven && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/swesmith/qiurunze123__miaosha.e5801765 /testbed
WORKDIR /testbed
RUN sed -i 's/<packaging>war<\/packaging>/<packaging>jar<\/packaging>/g' miaosha-admin/miaosha-admin-service/pom.xml
RUN mvn clean install -B -q -Dmaven.test.skip=true -Dspring-boot.repackage.skip=true

CMD ["/bin/bash"]