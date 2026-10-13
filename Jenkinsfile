
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

        stage('Run Application') {
            steps {
                sh 'docker run --rm devsecops-cicd-platform:1.0'
            }
        }
    }
}
