FROM ubuntu:22.04
RUN apt update
RUN apt install openjdk-11-jdk wget -y
WORKDIR /app
COPY target/*.jar app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]

