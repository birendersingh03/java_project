pipeline {
	agent any
	
  environment {
    
    artifactId = readMavenPom().getArtifactId()
    version = readMavenPom().getVersion()
    Nexus_Cred = credentials('nexus-cred')
  }	
  
	stages {
			
		stage ('Git Checkout')  {
				steps {
					git branch: 'dev',
					
					url: "https://github.com/birendersingh03/java_project.git"

        }
			}
			
		stage ('Build') {
		
			agent {
                           docker {
                       
                         image 'maven'
						}
			}
			steps {
			
			    sh 'ls /tmp'
			    sh 'mkdir -p ${WORKSPACE}'
				sh 'ls /var/lib/jenkins'	
			}
		}
	
	
	}
		
	}

