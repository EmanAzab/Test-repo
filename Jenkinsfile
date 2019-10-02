pipeline {
    agent any
    stages{
        stage('check-index-file'){
            steps{
                sh 'wget -q -O - https://raw.githubusercontent.com/EmanAzab/Test-repo/master/index.html'
            }   
        }   
    } 
}
