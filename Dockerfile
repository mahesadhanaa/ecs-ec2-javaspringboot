FROM openjdk:8-jdk-alpine
WORKDIR /
ADD target/springbootcrudrest-0.0.1-SNAPSHOT.jar target/springbootcrudrest-0.0.1-SNAPSHOT.jar
EXPOSE 8080
CMD java -jar target/springbootcrudrest-0.0.1-SNAPSHOT.jar