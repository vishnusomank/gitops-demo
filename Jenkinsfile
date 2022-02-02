pipeline {
    agent any
    stages {
               
        stage('Apply Policy') {
            steps{
                sh '''

                namespace_no=$(kubectl get po -A --show-labels | grep -i $1 |awk '{print $1}' |  nl | sort -k 2 | uniq -f 1 | sort -n | sed 's/\s*[0-9]\+\s\+//' | wc -l)
                namespace_field=()
                for ((i=1;i<=$namespace_no;i++))
                do
                      namespace_field+=("$(kubectl get po -A --show-labels | grep -i $1 |awk '{print $1}' |  nl | sort -k 2 | uniq -f 1 | sort -n | sed 's/\s*[0-9]\+\s\+//' | cut -d $'\n' -f $i)")
                done 
                for i in "${namespace_field[@]}"
                do 
                   kubectl -n $i apply -f policy.yaml
                done

                '''
            }
        }       
    }    
}
