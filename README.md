# DevSecOps CI/CD Platform

## Project Overview
A beginner-friendly DevSecOps project demonstrating automated Java application building, Docker containerization, CI/CD using Jenkins, and container vulnerability scanning using Trivy.

## Technologies Used
- Java 21
- Apache Maven
- Git and GitHub
- Docker
- Jenkins
- Trivy

## CI/CD Pipeline Stages
1. **Checkout** – Pipeline starts and prepares the source code stage.
2. **Build** – Builds the Java application using Maven.
3. **Docker Build** – Creates the Docker image.
4. **Trivy Security Scan** – Scans the Docker image for known vulnerabilities.
5. **Run Application** – Runs the containerized application.

## Security Scan Results
Trivy scanned the Docker image and reported:

- **Total findings:** 50
- **Low:** 4
- **Medium:** 46
- **High:** 0
- **Critical:** 0

The Java application JAR scan reported zero vulnerabilities in the observed scan. The findings should be reviewed and rescanned as base-image packages are updated.

## Run Locally

Build the Java application:

```bash
mvn clean package
```

Build the Docker image:

```bash
docker build -t devsecops-cicd-platform:1.0 .
```

Run the application:

```bash
docker run --rm devsecops-cicd-platform:1.0
```

Expected output:

```text
DevSecOps CI/CD Pipeline is running!
```

## Project Status
Core CI/CD pipeline implemented and successfully tested with Jenkins and Trivy.

## Future Enhancements
- SonarQube code quality analysis
- Publish and manage Docker images through a container registry
- Kubernetes deployment
- Improve vulnerability management and reporting

## Repository
GitHub: https://github.com/Divyamesare/devsecops-cicd-platform