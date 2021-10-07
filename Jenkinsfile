pipeline {
    agent any
     environment {
           BUILD_NUMBER = env.BUILD_NUMBER
           }
    stages {

//         stage('Build MLNCS') {
//             steps {
//                 script {
//                     sh "bash docker_build.sh"
//                     sh 'cat Yes/yra.txt'
//                 }
//             }
//         }
        stage('Upload file to s3') {
            steps {
                script {
                        sh 'echo ${BUILD_NUMBER}'

                }
            }
        }
    }

}
