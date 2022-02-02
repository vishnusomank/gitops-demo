pipeline {
    agent any
    stages {
               
        stage('Kubectl version') {
            steps{
                sh 'kubectl version'
            }
        }
    }    
    
    post {
        always {
            archiveArtifacts artifacts: '*-result.log', followSymlinks: false 
        }
    }
}
