pipeline {
    environment{
    registryCredential = 'dockerhub-id'
    }
    agent none
    stages {
        stage('Build') {
            agent { dockerfile true }
            steps {
                sh 'npm --version'
                sh 'cd main_modules'
                sh 'npm install'
                sh 'npm build'
            }
        }
    stage('Deploy'){
        agent any
        steps {
            script {
       docker.withRegistry( '', registryCredential ){
            def customImage = docker.build("darshasawa7899/node-jenkins-docker:${env.BUILD_ID}")
            customImage.push()
                    }    
                }
            }
        }
    }
}
