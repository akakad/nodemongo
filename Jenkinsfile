pipeline {
    agent any
    environment {
        COMPOSE_PROJECT_NAME = "${env.JOB_NAME}-${env.BUILD_ID}"
    }
    stages{
        stage("Build and start image") {
            steps {
                sh "docker-compose up -d --build"
            }
        }
    }
}
