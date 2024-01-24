#FROM openjdk:17
#
#WORKDIR
#ADD target/spring-boot-docker.jar spring-boot-docker.jar
#ENTRYPOINT ["java","-jar","/spring-boot-docker.jar"]
#
#FROM openjdk:17-alpine
#MAINTAINER baeldung.com
#COPY target/docker-spring-boot-docker.jar spring-boot-docker.jar
#ENTRYPOINT ["java","-jar","/spring-boot-docker.jar"]
#
#EXPOSE 8080
# Use an official OpenJDK runtime as a base image
FROM openjdk:17

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/spring-boot-docker.jar /app/app.jar

# Specify the command to run on container startup
CMD ["java", "-jar", "app.jar"]