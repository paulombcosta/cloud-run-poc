FROM gradle:5.4.0-jdk8

COPY . /app

WORKDIR /app

USER root

RUN ./gradlew clean bootJar

FROM openjdk:8u201-jdk-alpine3.9

COPY --from=0 /app/build/libs/cloud-run-poc-0.0.1-SNAPSHOT.jar app.jar

CMD ["java", "-jar", "app.jar"]
