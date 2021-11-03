pipeline {
    agent any
    stages {
        stage('Docker Image') {
            steps {
                 script {
                      sh "docker build -t test ."
                 }
            }
        }


        }
    }
