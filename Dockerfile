FROM openjdk:11
MAINTAINER Paulo Grillo
WORKDIR registry
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} registry/app.jar
ENTRYPOINT ["java","-jar","registry/app.jar"]
EXPOSE 8081