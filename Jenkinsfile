pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                script {
                    git branch: 'main', url: 'https://github.com/LinuxTute-GitHub/myfirstrepo.git'
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    sh 'bash /home/git/myfirstrepo/myfirstscript.sh'
                }
            }
        }
    }
}
