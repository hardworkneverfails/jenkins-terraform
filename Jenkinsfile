pipeline {
   parameters {
        string(name: 'environment', defaultValue: 'terraform', description: 'Workspace/environment file to use for deployment')
        booleanParam(name: 'autoApprove', defaultValue: false, description: 'Automatically run apply after generating plan?')

    }
 agent any
  stages{
     stage("s3 bucket creation"){
     steps{
         sh 'ansible-playbook s3.yml"
     }
     }
   stage("terraform plan") {
      steps{
          sh 'mkdir terraform';
          sh 'pwd;cd terraform ; terraform init -input=false'
          sh 'pwd;cd terraform ; terraform workspace new ${environment}'
          sh 'pwd;cd terraform ; terraform workspace select ${environment}'
          sh "pwd;cd terraform ; terraform plan -input=false -out tfplan "
          sh 'pwd;cd terraform ; terraform show -no-color tfplan > tfplan.txt'
      }
    }
   stage('Approval') {
       when {
               not {
                   equals expected: true, actual: params.autoApprove
               }
           }

       steps {
            script {
                 def plan = readFile 'terraform/aws-instance-first-script/tfplan.txt'
                  input message: "Do you want to apply the plan?",
                  parameters: [text(name: 'Plan', description: 'Please review the plan', defaultValue: plan)]
               }
           }
       }
   stage('Apply') {
       steps {
              sh "pwd;cd terraform/aws-instance-first-script ; terraform apply -input=false tfplan"
            }
        }
   
  }

}
