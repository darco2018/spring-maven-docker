
# POC for Maven + Springboot + Docker in 2 versions

1. Simple - just put Dockerfile & pom.xml from **dockerfile-simple** folder in the **root folder** of the project.
2. Advanced(takes advantage of the clean separation between dependencies and application resources in a Spring Boot fat jar file) - just put Dockerfile & pom.xml from **dockerfile-advanced** folder in the **root folder** of the project 

#### to build and run:

./mvnw clean install dockerfile:build
docker run -d -it --rm -p 8080:8080 --name spring  ustrd/springmvndckr 

#### or you can first
 ./mvnw clean package,
#### then go to /target and run it without  container
java - jar springmvndckr-0.1.0.jar 

#### to build you can just use standard Maven commands 
./mvnw package or ./mvnw install
#### and the docker image will be created automatically.

#### Here are the executed phases and goals
............. some earlier goals
--- maven-compiler-plugin:3.7.0:testCompile (default-testCompile) @ springmvndckr ---[INFO] 
--- maven-surefire-plugin:2.21.0:test (default-test) @ springmvndckr ---
--- maven-jar-plugin:3.0.2:jar (default-jar) @ springmvndckr ---
 --- spring-boot-maven-plugin:2.0.5.RELEASE:repackage (default) @ springmvndckr ---
--- maven-dependency-plugin:3.0.2:unpack (unpack) @ springmvndckr ---
 --- dockerfile-maven-plugin:1.4.8:build (default) --> DOCKER IMAGE is created
------------------ end of package phase
--- maven-install-plugin:2.5.2:install

#### The Docker push step can easily be bound to the Maven deploy phase so that the end of a Maven build also results in uploading a Docker image.

#### However, as pushing Docker images from a developer workstation is not recommended. Only a CI server should push Docker images in a well-behaved manner (i.e. when tests are passing). Pushing Docker images from a developer workstation is even more dangerous if the changes are not committed first.

#### the Spotify Docker plugin can be executed using its individual goals, if for some reason you don’t want to bind it to the Maven lifecycle. These are

./mvnw dockerfile:build
./mvnw dockerfile:push
./mvnw dockerfile:tag
./mvnw dockerfile:build dockerfile:push

#### Remember however that our sample application also includes integration tests. Wouldn’t it be nice if we could also launch the Docker image as part of the Maven lifecycle and run the integration tests against the resulting container? This is where the next plugin finds its place…
https://codefresh.io/docker-tutorial/java_docker_pipeline/
https://codefresh.io/howtos/using-docker-maven-maven-docker/




