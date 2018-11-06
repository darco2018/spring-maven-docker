FROM openjdk:8-jdk-alpine
#   /tmp is where a Spring Boot app creates working directories for Tomcat by default.
VOLUME /tmp

# ARG JAR_FILE=target/springmvndckr-0.1.0.jar
ARG DEPENDENCY=target/dependency
COPY ${DEPENDENCY}/BOOT-INF/lib       /app/lib
COPY ${DEPENDENCY}/BOOT-INF/classes   /app
COPY ${DEPENDENCY}/META-INF           /app/META-INF

ENTRYPOINT ["java","-cp","app:app/lib/*","hello.Application"]

# to build and run:
# ./mvnw clean install dockerfile:build
# docker run -d -it --rm -p 8080:8080 --name spring  ustrd/springmvndckr 

# or you can first ./mvnw clean package, then go to /target
# and java - jar springmvndckr-0.1.0.jar to run it without  container
