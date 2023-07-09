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
                  git branch: "master-deveops", credentialsId:"github", url "https://github.com/nguepempoue/demo-web-v1.git"
               }
          }

       }
}