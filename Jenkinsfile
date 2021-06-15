

pipeline {
  agent any
  stages {
        stage('Cloning Git') { 
          steps {
            git 'https://github.com/vinayakentc/Chatapplication'
          }
        }
    	stage('checkout')    {
    	  steps {
    	    checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: '555b1e3f-645b-437c-b752-dcdaf21d3562', url: 'https://github.com/vinayakentc/Chatapplication']]])
          }
    	}
    	
	stage('Code Analysis') {
		  
	  steps {
	     withSonarQubeEnv('SonarQube') {
             sh "/opt/sonar-scanner/sonar-scanner-3.2.0.1227-linux/bin/sonar-scanner"

           }
	}
	}
	stage ("Quality gate") {
            steps {
                timeout(time: 3, unit: 'MINUTES') {
                timeout(time: 1, unit: 'HOURS') {
                    waitForQualityGate abortPipeline: true  
                }

            }
        }  
        }

	

    	stage('Build') { 
          steps{ 
            sh "rsync -avzP --rsh=ssh   /var/lib/jenkins/workspace/* ubuntu@10.200.4.11:django"
            sh "ssh ubuntu@10.200.4.11 sudo systemctl restart fundoo"
    	  }
    	}
  }
 }
