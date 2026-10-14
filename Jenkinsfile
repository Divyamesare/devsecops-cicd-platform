
pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Source code checkout successful'
            }
        }

        stage('Build') {
            steps {
                sh 'java -version'
                sh 'mvn -B clean package'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t devsecops-cicd-platform:1.0 .'
            }
        }

        stage('Trivy Security Scan') {
            steps {
                sh 'docker run --rm -v /var/run/docker.sock:/var/run/docker.sock aquasec/trivy:latest --timeout 15m image --scanners vuln devsecops-cicd-platform:1.0'
            }
        }

        stage('Run Application') {
            steps {
                sh 'docker run --rm devsecops-cicd-platform:1.0'
            }
        }
    }
}
