pipeline {
    agent any
    tools {
        terraform 'terraform'
    }
    stages {
        stage('Terraform Apply') {
            when {
                expression {
                    return params.action == 'apply'
                }
            }
            steps {
                git 'https://github.com/anaraashka/Jenkins-CICD.git'

                sh 'terraform init -no-color'

                echo "terraform action from paratmetr is --> ${action}"

                sh "terraform ${action} --auto-approve"
            }
        }
        stage('Terraform Destroy') {
            when {
                expression {
                    return params.action == 'destroy'
                }
            }
            steps {
                echo "terraform action from paratmetr is --> ${action}"
                sh "terraform ${action} --auto-approve"
            }
        }
    }
}