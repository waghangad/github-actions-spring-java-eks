FROM eclipse-temurin:11-jre-alpine
# or
FROM openjdk:11-jre-slim

EXPOSE 8080

COPY target/*.jar spring-action.jar
ENTRYPOINT ["java","-jar","/spring-action.jar"]
