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
        withCredentials([<object of type com.cloudbees.jenkins.plugins.awscredentials.AmazonWebServicesCredentialsBinding>]) {
        sh 'aws s3 ls'
}
        }
        }
}

}
