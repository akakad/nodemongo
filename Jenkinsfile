pipeline {
    agent {
        docker {
            image 'node:10'
            args '-p 5001:8080 -p 5002:8080'
        }
    }
    environment {
        CI = 'true'
    }
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }
        stage('Test') {
            steps {
                sh './jenkins/scripts/test.sh'
            }
        }
}
