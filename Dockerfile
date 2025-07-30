# Dockerfile
FROM registry.access.redhat.com/ubi9/openjdk-17:1.17 as build
WORKDIR /app
COPY target/SpringBoot-1.0-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
