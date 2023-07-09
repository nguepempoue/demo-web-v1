pipeline{

    agent "jenkins-agent"

    stages{
         tools {
             jdk "Java17"
             maven "Maven3"
          }
         stage('Clean workspace') {
              steps {
                    cleanws()
                }
          }
         stage('Check out from SCM') {
              steps {
                  git branch: "master-deveops", credentialsId:"github", url "https://github.com/nguepempoue/demo-web-v1.git"
               }
          }

       }
}