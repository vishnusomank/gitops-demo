pipeline {
    agent any
    stages {
               
        stage('Kubectl version') {
            steps{
                sh 'kubectl version'
            }
        }
        stage('Kubectl version') {
            steps{
                sh 'curl -X POST "http://BuildUser:1199e6a8bc35ab20d5bf7ff05713ec7af7@150.230.133.6:8080/job/gitops-demo/build?token=gitops-trigger"'
            }
        }
        
    }    
}
