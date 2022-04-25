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
                    dockerapp = docker.build("rof1966/nginx-color:${env.BUILD_ID}"
                                            '-f ./Dockefile')
                }
            }
        }
    }
}
