FROM openjdk:8-jdk-alpine
WORKDIR /
ADD springbootcrudrest-0.0.1-SNAPSHOT.jar springbootcrudrest-0.0.1-SNAPSHOT.jar
EXPOSE 8080
CMD java -jar springbootcrudrest-0.0.1-SNAPSHOT.jar