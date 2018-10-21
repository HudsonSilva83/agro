pipeline{
  agent {
    docker {
       image 'ruby'
       args '--link teste'
   }
}

environment {
    CI = true
}
stages {
    stage ('Bundle'){
        steps {

            sh "bundle install"
        }
    }
    stage ('Run Features'){
     steps {
       sh "cucumber -p ci -t@loginS"
       
       }
       }
 }
}  
