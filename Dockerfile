FROM eclipse-temurin:21-jre
WORKDIR /app
COPY target/devsecops-cicd-platform-1.0.0.jar app.jar
USER 10001
CMD ["java", "-cp", "app.jar", "com.demo.App"]
