pipeline {
    agent any
    stages{
        stage('check-index-file'){
            steps{
                if (fileExists('index.html')) {
                    echo 'Yes'
                } else {
                    echo 'No'
                }
            }   
        }  
    } 
}
