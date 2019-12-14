pipeline {
    agent any
    stages{
        stage('check-index-file-exits'){
            steps{
                sh '[-f index.html] && echo "Found"'
            } 
         } 
        stage('check-h1-exits'){
            steps{
                sh 'cat index.html | grep -i h1'
            }
        }
        stage('check-h2-exits'){
            steps{
                sh 'cat index.html | grep -i h2'
            }
        }
        stage('check-footer-exits'){
            steps{
                sh ' cat index.html | grep -i footer'
            }
        }
    } 
}
