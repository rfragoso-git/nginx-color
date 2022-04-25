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
                sh:'docker build -t rof1966/nginx-color:latest .'
            }
        }

    }
}
