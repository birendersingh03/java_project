pipeline {
	agent any
  environment {
    
    artifactId = readMavenPom().getArtifactId()
    version = readMavenPom().getVersion()
  }	
	stages {
			
		stage ('Git Checkout')  {
				steps {
					git branch: 'master',
					
					url: "https://github.com/spring-projects/spring-petclinic.git"

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
			       
				sh ' curl -v -u admin:admin123 --upload-file ${WORKSPACE}/target/${artifactId}-${artifactId}.jar http://13.233.201.183:8081/repository/java_project/'		
			}
		}
	}
}
