pipeline {
 agent any
 environment {
  PATH = "${PATH}:${pathe}"
 }
  stages{
    stage("terraform cmd") {
      steps{
       sh "terraform --version"
      }
    }
  }

}

def pathe(){
 def hame = tool name: 'Terraform11', type: 'terraform'
 return hame
}
