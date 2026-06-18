pipeline {
    agent any
 
    environment {
        AWS_REGION = 'us-east-1'
    }
 
    stages {
 
        stage('Checkout Code') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/Ironman680-0202/poc_13.git'
            }
        }
 
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
 
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }
 
        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
 
        stage('Update kubeconfig') {
            steps {
                sh 'aws eks --region us-east-1 update-kubeconfig --name poc-eks-cluster'
            }
        }
 
        stage('Deploy to EKS') {
            steps {
                sh 'kubectl apply -f deployment.yml'
                sh 'kubectl apply -f service.yml'
            }
        }
 
        stage('Verify') {
            steps {
                sh 'kubectl get nodes'
                sh 'kubectl get pods'
                sh 'kubectl get svc'
            }
        }
    }
}