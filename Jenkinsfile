pipeline {
 agent any
  stages{
    stage("terraform cmd") {
      steps{
       sh ("terraform init");
      }
    }
   stage("terraform cmds") {
      steps{
       sh ("terraform ${action}");
      }
    }
   
  }

}
