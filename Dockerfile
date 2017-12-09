FROM openjdk:8-jre-alpine

RUN mkdir /app

WORKDIR /app

ADD ./accountoptions-api-1.0-SNAPSHOT.jar /app

EXPOSE 8080

CMD ["java", "-jar", "./accountoptions-api-1.0-SNAPSHOT.jar"]