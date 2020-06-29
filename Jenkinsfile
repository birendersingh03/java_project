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
			
			 
			   sh 'mkdir -p java_project/java'
				sh 'cd java_project/java'
				sh 'pwd'
				
					
			}
		}
	
	
	}
		
	}

