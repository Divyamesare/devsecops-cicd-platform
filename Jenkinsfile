
pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Source code checkout stage'
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo 'Building Java application with Maven'
                bat 'mvn -B clean package'
            }
        }

        stage('Docker Build') {
            steps {
                bat 'docker build -t devsecops-cicd-platform:1.0 .'
            }
        }

        stage('Run Application') {
            steps {
                bat 'docker run --rm devsecops-cicd-platform:1.0'
            }
        }
    }
}
