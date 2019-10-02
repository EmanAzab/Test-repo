pipeline {
    agent any
    stages{
        stage('check-index-file'){
            steps{
                def exists = fileExists 'file'
                if (exists) {
                    echo 'Yes'
                } else {
                    echo 'No'
                }
            }   
        }  
    } 
}
