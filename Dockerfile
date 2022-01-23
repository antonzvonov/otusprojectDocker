# syntax=docker/dockerfile:1

FROM maven:3.8.4-jdk-8

git clone https://github.com/antonzvonov/otusproject.git
cd otusproject
mvn package
cd target
java -jar otusproject-1.0-SNAPSHOT.jar

ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]