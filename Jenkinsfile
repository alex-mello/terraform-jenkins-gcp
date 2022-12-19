 pipeline {
    agent any
    stages {
      stage('fetch_latest_code') {
        steps {
          git credentialsId: '09d5474f-f77e-4893-9750-df15bcfe7e59', url: 'git@github.com:alexmello82/terraform-jenkins-gcp.git'
        }
      }

      stage('TF Init&Plan') {
        steps {
          sh 'terraform init'
          sh 'terraform plan'
        }      
      }

      stage('Approval') {
        steps {
          script {
            def userInput = input(id: 'confirm', message: 'Apply Terraform?', parameters: [ [$class: 'BooleanParameterDefinition', defaultValue: false, description: 'Apply terraform', name: 'confirm'] ])
          }
        }
      }

      stage('TF Apply') {
        steps {
          sh 'terraform apply -input=false'
        }
      }
    } 
  }
