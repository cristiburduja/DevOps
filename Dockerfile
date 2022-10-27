FROM openjdk:11

RUN mkdir -p /home/app
COPY . /home/app/

WORKDIR /home/app

RUN maven package
CMD ["java", "Main"]
