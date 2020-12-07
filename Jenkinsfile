pipeline {
    agent any 
    
    environment {
        PASS = credentials('dockerhub')
    }

    stages {
        stage('Building') { 
            steps {
                sh '''
                    ./jenkins/build/mvn.sh mvn -B -DskipTests clean package
                    ./jenkins/build/script.sh
                '''
            }
        }
        stage('Example Test') { 
            steps {
               sh './jenkins/test/mvn.sh mvn.sh'' 
            }
        }
        stage("Push"){

            steps {
               sh './jenkins/push/script.sh'
            }
        }
        stage("Deploy") {
  	       sh './jenkins/deploy/deploy.sh'
        }
    }
}
