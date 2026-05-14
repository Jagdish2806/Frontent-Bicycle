pipeline{
    agent any
    tools{
        nodejs 'nodejs'
    }
    stages{
        stage('clone'){
            steps{
                git url: 'https://github.com/Jagdish2806/Backend-Bicycle.git', branch: 'main'
            }
        }
            stage("Install Dependencies"){
                steps{
                    sh 'npm i'
                }
            }
            stage('build'){
                steps{
                   sh 'npm run build' 
                }
            }
          
            stage('run'){
                steps{
                    sh 'pm2 start serve --name Jagdish -- -S /var/lib/jenkins/workspace/bicycle/dist/bicycle -l 4200'
                }
            }
            }
        
}