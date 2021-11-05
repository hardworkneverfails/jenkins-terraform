pipeline {
 agent any
  //environment {
   //PATH = "${PATH}:${PATHER()}"
   //}
  stages{
    stage("terraform cmd") {
      steps{
       sh "terraform plan"
      }
    }
  }

}

//def PATHER(){
 //def hame = tool name: 'terraform12', type: 'terraform'
 //return hame
/}
