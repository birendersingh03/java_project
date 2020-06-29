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
			steps {
			
				sh 'cd ${WORKSPACE}/src/main/java'
				sh 'mvn clean install'		
			}
		}
	
	
	
		stage ('nexus_upload') {
			steps {
			       
				sh ' curl -v -u ${Nexus_Cred_USR}:${Nexus_Cred_PSW} --upload-file ${WORKSPACE}/target/${artifactId}-${version}.jar http://13.233.201.183:8081/repository/java_project/'		
			}
		}
	}
}
