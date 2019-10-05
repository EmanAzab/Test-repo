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
         always {
            echo 'Test run completed'
         }
         success {
            echo 'Successfully!'
         }
         failure {
            echo 'Failed!'
         }
         unstable {
            echo 'This will run only if the run was marked as unstable'
         }
         changed {
            echo 'This will run only if the state of the Pipeline has changed'
            echo 'For example, if the Pipeline was previously failing but is now successful'
         }
        }
    } 
}
