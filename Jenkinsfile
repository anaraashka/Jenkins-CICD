pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
              sh '''
              echo "Planning infrastructure"
              terraform init
              terraform plan
              '''
            }
        }
    stage('Deploy') {
        steps {
            sh '''
            echo "Deploying infrastructure..."
            terraform destroy -auto-approve
            '''
            }
        }
    stage('finish') {
        steps {
            sh '''
           echo "pipeline finished"
            '''
            }
        }
    }
    post {
      always {
        deleteDir()
      }
    }
}