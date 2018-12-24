FROM docker.oa.com:8080/library/tlinux2.2-gaia-with-onion

RUN yum -y update \
    && yum -y install java-1.8.0-openjdk* maven \
    && java -version

COPY . /data/hello-world

RUN cd /data/hello-world \
    && mkdir -p ~/.m2 \
    && mv settings.xml ~/.m2 \
    && mvn package \
    && ls target/*.jar

CMD ["java", "-jar", "/data/hello-world/target/helloworld-1.0-SNAPSHOT.jar"]