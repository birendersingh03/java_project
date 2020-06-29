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
			
			    sh 'ls ls /var/lib/jenkins/workspace/java_project*'
			   sh 'mkdir -p ${WORKSPACE}'
				sh 'cp -r ${WORKSPACE}/pom.xml /tmp '
				sh 'ls /tmp'
				sh 'ls ${WORKSPACE}'	
			}
		}
	
	
	}
		
	}

