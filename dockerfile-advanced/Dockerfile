FROM openjdk:8-jdk-alpine
#   /tmp is where a Spring Boot app creates working directories for Tomcat by default.
VOLUME /tmp

ARG DEPENDENCY=target/dependency
COPY ${DEPENDENCY}/BOOT-INF/lib       /app/lib
COPY ${DEPENDENCY}/BOOT-INF/classes   /app
COPY ${DEPENDENCY}/META-INF           /app/META-INF

ENTRYPOINT ["java","-cp","app:app/lib/*","hello.Application"]


