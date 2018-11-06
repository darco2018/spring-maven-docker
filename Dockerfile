FROM openjdk:8-jdk-alpine
#   /tmp is where a Spring Boot app creates working directories for Tomcat by default.
VOLUME /tmp

ARG JAR_FILE=target/springmvndckr-0.1.0.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar","/app.jar"]

# to build and run:
# ./mvnw clean install dockerfile:build
# docker run -d -it --rm -p 8080:8080 ustrd/springmvndckr

# or you can first ./mvnw clean package, then go to /target
# and java - jar springmvndckr-0.1.0.jar to run it without  container
