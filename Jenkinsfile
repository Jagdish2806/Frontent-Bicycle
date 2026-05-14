pipeline{
    agent any
    tools{
        nodejs 'nodejs'
    }
    stages{
        stage('clone'){
            steps{
                git url: 'https://github.com/Jagdish2806/Frontent-Bicycle.git', branch: 'main'
            }
        }
            stage("Install Dependencies"){
                steps{
                    sh 'docker build -t frontend .'
                }
            }
       //     stage('build'){
         //       steps{
           //        sh 'npm run build' 
             //   }
            //}
          
            stage('run'){
                steps{
                    sh 'docker run -p 4200:4200 frontend'
                }
            }
            }
        
}