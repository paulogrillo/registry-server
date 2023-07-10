FROM maven:3.6.3-adoptopenjdk-11 as base
MAINTAINER Paulo Grillo
WORKDIR registry
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} registry/eureka-0.0.1-SNAPSHOT.jar
EXPOSE 8081
