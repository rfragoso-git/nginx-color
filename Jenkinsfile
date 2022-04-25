pipeline {
    agent any

    stages {
        stage('Checkout do código'){
            steps {
                git url:'https://github.com/rfragoso-git/nginx-color.git', branch: 'master'
            }
        }
        stage('Building Image'){
            steps {
                script{
                    dockerapp = docker.build("rof1966/nginx-color:${env.BUILD_ID}")
                }
            }
        }
        stage('Docker Push'){
            steps {
                script{
                    docker.withRegistry('https://registry.hub.docker.com', 'dockerhub' )
                    dockerapp.push ('latest')
                    dockerapp.push ("${env.BUILD_ID}")
                }
            }
        }
    }
}
