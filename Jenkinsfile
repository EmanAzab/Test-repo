pipeline {
    agent any
    stages{
        stage('check-index-file-exits'){
            steps{
                sh 'wget -q -O - https://raw.githubusercontent.com/EmanAzab/Test-repo/master/index.html'
            } 
         } 
        stage('check-h1-exits'){
            steps{
                sh 'wget -q -O - https://raw.githubusercontent.com/EmanAzab/Test-repo/master/index.html | grep -i h1'
            }
        }
        stage('check-h2-exits'){
            steps{
                sh 'wget -q -O - https://raw.githubusercontent.com/EmanAzab/Test-repo/master/index.html | grep -i h2'
            }
        }
        stage('check-footer-exits'){
            steps{
                sh 'wget -q -O - https://raw.githubusercontent.com/EmanAzab/Test-repo/master/index.html | grep -i footer'
            }
        }
        post {
           failure {
            mail to: 'eman.azab86@gmail.com',
                 subject: 'The Pipeline failed :('
           }
        }
    } 
}
