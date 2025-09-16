# Stage 1: Build bằng Maven
FROM maven:3.9.9-eclipse-temurin-17 AS builder
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Stage 2: Deploy vào Tomcat
FROM tomcat:10.1-jdk17
COPY --from=builder /app/target/*.war /usr/local/tomcat/webapps/ROOT.war
