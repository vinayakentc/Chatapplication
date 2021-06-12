


pipeline {
  agent any
  stages {
        stage('SCM Checkout') { 
          steps {
            git 'https://github.com/vinayakentc/Chatapplication'
          }
        }
    	stage('checkout')    {
    	  steps {
    	    checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: '555b1e3f-645b-437c-b752-dcdaf21d3562', url: 'https://github.com/vinayakentc/Chatapplication']]])
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
	  
	  
