FROM maven:3.8.3-openjdk-17 

# copy the source tree and the pom.xml to our new container 
COPY ./ ./  

# package our application code 
RUN mvn clean package 

# set the startup command to execute the jar 
CMD ["java", "-jar", "target/spring-petclinic-3.1.0-SNAPSHOT.jar"]

