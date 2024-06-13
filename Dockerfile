FROM maven:3.8.1-openjdk-17 AS build
COPY . .
RUN ./mvn clean package -DskipTests

FROM openjdk:17.0.1-jdk-slim
COPY --from=build /target/full-stack-backend-0.0.1-SNAPSHOT full-stack-backend.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","full-stack-backend.jar"]