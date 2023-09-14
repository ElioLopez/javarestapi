FROM openjdk:8-jre-slim

WORKDIR /app
COPY ./target/rest-0.0.1-SNAPSHOT.jar /app

EXPOSE 8080

CMD ["java", "-jar", "rest-0.0.1-SNAPSHOT.jar"]