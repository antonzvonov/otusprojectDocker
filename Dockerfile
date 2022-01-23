# syntax=docker/dockerfile:1

FROM maven:3.8.4-jdk-8

RUN git clone -b v5.1 https://github.com/antonzvonov/otusproject.git

WORKDIR /otusproject
RUN mvn package

WORKDIR /otusproject/target

ENTRYPOINT exec java -jar otusproject-1.0-SNAPSHOT.jar --server.port=8000