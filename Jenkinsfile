pipeline {
    agent any

    stages {
        stage('checkout'){
            steps{
                checkout scm
                cleanWs()
                sh 'git clone https://github.com/piotrowsianko/testing-jenkins.git .'
            }
        }
        stage('test'){
            steps{
                sh 'echo Tests'
            }
        }
    }
}    