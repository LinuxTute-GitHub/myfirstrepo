pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "dockerjenkins:latest"
        CONTAINER_NAME = "dockerjenkins"
    }

    stages {
        stage('Clone Repository') {
            steps {
                git url: 'https://github.com/LinuxTute-GitHub/myfirstrepo.git', branch: 'devops'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh "docker build -t $DOCKER_IMAGE ."
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    sh '''
                    docker stop $CONTAINER_NAME || true
                    docker rm $CONTAINER_NAME || true
                    docker run -d  --name $CONTAINER_NAME $DOCKER_IMAGE
                    '''
                }
            }
        }
    }
}

