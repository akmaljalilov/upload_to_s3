pipeline {
    agent any
    stages {

        stage('Build MLNCS') {
            steps {
                script {
                    def customImage = docker.build('test', "-f Dockerfile ./ ")
                    customImage.inside {
                        sh "cp /build/hi.txt ${WORKSPACE}/build"
                    }
                }
            }
        }
        stage('Upload file to s3') {
            steps {
            withCredentials([string(credentialsId: 'AWS_ACCESS_KEY_ID', variable: 'accessKeyVariable'), string(credentialsId: 'AWS_SECRET_ACCESS_KEY', variable: 'secretKeyVariable')]) {
                sh '''
                export AWS_ACCESS_KEY_ID=$accessKeyVariable
                export AWS_SECRET_ACCESS_KEY=$secretKeyVariable
                export AWS_DEFAULT_REGION=eu-central-1
                aws configure set aws_access_key_id  $accessKeyVariable
                aws configure set aws_secret_access_key  $secretKeyVariable
                aws configure set default.region  eu-central-1
                aws s3 ls
                '''
            }
//                 withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: '6491ee5d-f25f-4cc1-b5e9-49139402f6dd', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
//                     sh 'cat ${WORKSPACE}/hi.txt'
//                     sh 'aws s3 cp ${WORKSPACE}/build/hi.txt s3://mlnbucket-eu-central/Test/text.txt'
//                 }
            }
        }
    }

}
