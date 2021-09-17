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
        stage('Upload file to s3') {
        try {
        withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'deploytos3', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
        sh 'aws s3 ls'
}
        }
        }
}

}
