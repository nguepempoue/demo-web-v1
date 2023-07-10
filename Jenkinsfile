pipeline{

    agent {
        label "jenkins-agent"
    }

    tools {
        jdk "Java17"
        maven "Maven3"
     }

    environment {
        APP_NAME = "demo-web-e2e-pipeline"
        RELEASE = "1.0.0"
        DOCKER_USER = "nguepempouedocker"
        DOCKER_PASS = 'dockerhub'
        IMAGE_NAME = "${DOCKER_USER}" + "/" + "${APP_NAME}"
        IMAGE_TAG = "${RELEASE}-${BUILD_NUMBER}"
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