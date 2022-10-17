pipeline {
    agent any

    stages {
        stage('checkout'){
            stpes{
                checkout scm
                cleanWs()
                sh 'git clone https://github.com/piotrowsianko/testing-jenkins.git .'
            }
        }
        stage('test'){
            sh 'echo Tests'
        }
    }
}    