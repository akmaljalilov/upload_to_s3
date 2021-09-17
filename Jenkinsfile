pipeline {
    agent any
    stages {

        stage('Build MLNCS') {
            steps {
                script {
                    sh "bash docker_build.sh"
                    sh 'cat hi.txt'
                }
            }
        }
//         stage('Upload file to s3') {
//             steps {
//                 withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: '6491ee5d-f25f-4cc1-b5e9-49139402f6dd', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
// //                     sh 'aws s3 cp ${WORKSPACE}/build/hi.txt s3://mlnbucket-eu-central/Test/text.txt'
//                 }
//             }
//         }
    }

}
