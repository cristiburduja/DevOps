FROM openjdk:11

RUN mkdir -p /home/app
COPY . /home/app/

WORKDIR /home/app

RUN javac Main.java

CMD ["java", "Main"]
