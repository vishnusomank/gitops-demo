pipeline {
    agent any
    stages {
               
        stage('Apply Policy') {
            steps{
                sh '''

                kubectl apply -f policy.yaml                

                '''
            }
        }       
    }    
}
