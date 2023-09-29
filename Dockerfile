FROM ubuntu:22.04
RUN apt update
RUN apt install openjdk-11-jdk wget -y
WORKDIR /app
COPY target/spring-petclinic-3.1.0-SNAPSHOT.jar app.jar
CMD ["java", "-jar", "app.jar"]

