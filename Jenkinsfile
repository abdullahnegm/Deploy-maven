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
            post {
		success {
		    archiveArtifacts artifacts: 'java-app/target/*.jar', fingerprint: true
		}
	    }
        }
        
        stage('Test') { 
            steps {
               sh './jenkins/test/mvn.sh mvn.sh' 
            }
            post {
		always {
		    junit 'java-app/target/surefire-reports/*.xml'
		}
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
