pipeline {
    agent any


    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/LinuxTute-GitHub/myfirstrepo.git'
            }
        }


        stage('Deploy') {
            steps {
                    sh 'bash /home/git/myfirstrepo/myfirstscript.sh'
                }
            }
        }
    }
