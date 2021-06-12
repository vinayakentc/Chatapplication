

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
             sh "/opt/sonar-scanner/sonar-scanner-4.6.2.2472-linux"

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
