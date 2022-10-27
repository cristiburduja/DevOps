FROM openjdk:11

RUN mkdir -p /home/app
COPY ./target/java-maven-app-1.1.7.jar /home/app/

WORKDIR /home/app

ENTRYPOINT  ["java", "-jar", "java-maven-app-1.1.7.jar" ]
