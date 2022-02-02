pipeline {
    agent any
    stages {
               
        stage('Apply Policy') {
            steps{
                sh '''

                namespace_no=$(kubectl get po -A --show-labels | grep -i $1 |awk '{print $1}' |  nl | sort -k 2 | uniq -f 1 | sort -n | sed 's/\\s*[0-9]\\+\\s\\+//' | wc -l)
                echo $namespace_no
                kubectl get po -A --show-labels | grep -i $1 |awk '{print $1}' |  nl | sort -k 2 | uniq -f 1 | sort -n | sed 's/\\s*[0-9]\\+\\s\\+//'                

                '''
            }
        }       
    }    
}
