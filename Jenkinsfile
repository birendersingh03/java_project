pipeline {
	agent any
	
  environment {
    registry = "13.233.201.183:8123"
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
			
			 
			   sh 'cd $WORKSPACE/src/main/java/'
			   sh 'mvn clean install'									
			}
		}
		
		stage ('Publish') {
		
		steps{
               script {
                   def appimage = docker.build registry + "/$artifactId-$version" + ":$BUILD_NUMBER"
                   docker.withRegistry( '', 'Nexus_Cred' ) {
                       appimage.push()
                       appimage.push('latest')
                   }
               }
           }
		
		
		}
	
	
	}
		
	}
