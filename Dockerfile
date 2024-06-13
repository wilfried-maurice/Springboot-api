FROM eclipse-temurin:17-jdk-focal
WORKDIR /app
COPY /app/target/full-stack-backend-0.0.1-SNAPSHOT.jar ./app/full-stack-backend.jar

EXPOSE 8080
ENTRYPOINT ["java","-jar","full-stack-backend.jar"]