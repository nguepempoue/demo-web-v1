pipeline{

    agent {
        label "jenkins-agent"
    }

    tools {
        jdk "Java17"
        maven "Maven3"
     }

    stages{

         stage('Clean workspace') {
              steps {
                    cleanWs()
                }
          }
         stage('Check out from SCM') {
              steps {
                  git branch: 'master-devops', credentialsId:'github', url:'https://github.com/nguepempoue/demo-web-v1.git'
               }
          }
          stage('Build Application') {
             steps {
                 sh 'mvn clean package'
               }
           }

           stage('Test') {
                steps {
                   sh 'mvn test'
                }
           }

            stage('Deploy App') {
                              steps{
                                  sh 'docker build -t demo-web .'
                                  sh 'docker run -p 8082:8080 demo-web'
                               }
                    }


       }
}