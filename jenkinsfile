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
        stage('terraform'){
            when {
                branch 'main'
            }
            tools {
                terraform 'tf1.2.6'
                dockerTool 'docker19.3'
            }
            steps{
                sh 'terraform init'
            }
        }
    }
    


}