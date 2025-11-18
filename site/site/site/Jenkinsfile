pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t algo-dashboard .'
            }
        }
        stage('Run Container') {
            steps {
                sh 'docker run -d -p 80:80 --name algo-dashboard algo-dashboard || true'
            }
        }
    }
}
