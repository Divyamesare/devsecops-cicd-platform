# DevSecOps CI/CD Platform

## Project Overview
A beginner-friendly DevSecOps project demonstrating Java application build automation and Docker containerization.

## Technologies
- Java 21
- Apache Maven
- Docker
- Git and GitHub

## Current Implementation
- Created a Java application.
- Built the application using Maven.
- Created a Docker image.
- Ran the application successfully inside a Docker container.

## Run Locally

Build the application:
```bash
mvn clean package
```

Build the Docker image:
```bash
docker build -t devsecops-cicd-platform:1.0 .
```

Run the container:
```bash
docker run --rm devsecops-cicd-platform:1.0
```

Expected output:
`DevSecOps CI/CD Pipeline is running!`

## Future Enhancements
- Jenkins CI/CD pipeline
- SonarQube code analysis
- Trivy vulnerability scanning
- Kubernetes deployment

## Project Status
In progress.
