//test
pipeline {
    agent any

    stages {
        stage('Clean Workspace') {
            steps {
                echo 'Cleaning workspace. Please wait...'
                cleanWs()
            }
        }
        stage('Apply policies') {
            steps {
                for i in $(find . -name "*.yaml")
                do
                  kubectl apply -f $i
	                pol_name=$(echo $i | rev | cut -d / -f 1 | rev )
	                folder_name=$(echo $i | cut -d / -f 2 )
	                echo "Folder: $folder_name\n - Policy:  $pol_name\n - Status: applied"
                done 

            }
        }
        stage('Clean Workspace') {
            steps {
                echo 'Cleaning workspace. Please wait...'
                cleanWs()
            }
        }
    }
}
