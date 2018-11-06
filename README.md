
# POC for Maven + Springboot + Docker in 2 versions

1. Simple - just put Dockerfile & pom.xml from **dockerfile-simple** folder in the **root folder** of the project.
2. Advanced(takes advantage of the clean separation between dependencies and application resources in a Spring Boot fat jar file) - just put Dockerfile & pom.xml from **dockerfile-advanced** folder in the **root folder** of the project 

# to build and run:
# ./mvnw clean install dockerfile:build
# docker run -d -it --rm -p 8080:8080 --name spring  ustrd/springmvndckr 

# or you can first ./mvnw clean package, then go to /target
# and java - jar springmvndckr-0.1.0.jar to run it without  container

 ./mvnw dockerfile:build dockerfile:push


