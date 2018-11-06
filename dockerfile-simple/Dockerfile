FROM openjdk:8-jdk-alpine
#   /tmp is where a Spring Boot app creates working directories for Tomcat by default.
VOLUME /tmp

ARG JAR_FILE=target/springmvndckr-0.1.0.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar","/app.jar"]

