pipeline {
 agent any
  environment {
   PATH = "${PATH}:${PATHER()}"
   }
  stages{
    stage("terraform cmd") {
      steps{
       sh "terraform --version"
      }
    }
  }

}

def PATHER(){
 def hame = tool name: 'Terraform12', type: 'terraform'
 return hame
}
