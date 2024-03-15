pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                script {
                    docker.build('try', '/home/ubuntu/docker/Stock-Forecasting-Master-Draft-main')
                }
            }
        }
        stage('Run Container') {
            steps {
                script {
                    docker.image('try').run('-d -p 8501:8501')
                }
            }
        }
    }
}
