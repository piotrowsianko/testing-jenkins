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
        stage('Terraform init'){
            steps{
                sh 'terraform init'
                sh 'terraform plan'
                sh 'terraform apply --auto-approve'
            }
        }
        stage('Destroy environment to free up space on GCP'){
            steps {
                input message: 'Confirm extinction?', ok: 'Yes'
                sh '''
                terraform init
                terraform destroy -auto-approve
                '''
            }
        }
    }
}    