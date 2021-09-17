pipeline {
    agent any
    stages {

        stage('Build MLNCS') {
            steps {
                script {
                     docker.build('test', "-f Dockerfile ./ ")
                }
            }
        }

    post {
        success {
            sh 'yes'
        }

    }
}
