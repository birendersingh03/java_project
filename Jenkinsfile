pipeline {
	agent any
	environment {
	
		Nexus_Cred = credentials('nexus-cred')
		registry = "13.233.201.183:8123"
		artifactId = readMavenPom().getArtifactId()
		version = readMavenPom().getVersion()
	
	}
	stages {
		
		stage ('get_checkout'){
			steps {
			
					git branch: 'uat',
					url: "https://github.com/birendersingh03/java_project.git"	
			}
		} 
	
	    stage ('build'){
		
				agent {
                         docker {
                         image 'maven'
					            }
			          }
			steps {
			
				sh 'echo "this is sample build step"'
			}
		} 
		
		
		stage ('publish-image'){
			steps {
			
				script {
                   def appimage = docker.build registry + "/$artifactId-$version" + ":$BUILD_NUMBER" 
					withDockerRegistry([ credentialsId: "nexus-cred", url: "http://13.233.201.183:8123" ])   
					{
                       appimage.push()
                       appimage.push('latest')
                    }
               }
			}
		} 
	    
		stage ('publish-artifacts'){
			steps {
			
			sh ' curl -v -u ${Nexus_Cred_USR}:${Nexus_Cred_PSW} --upload-file ${WORKSPACE}/example.war http://13.233.201.183:8081/repository/java_project/'
			
			
			}
		} 
	    
		stage ('test'){
			steps {
			
			 sh 'echo "this is sample test step"'
			}
		} 
		
		stage ('deploy'){
		
			steps {
				sh 'echo "this is sample deploy step"'
			
			}
		} 
		
		stage ('clean'){
			steps {
			
			sh 'echo "this is sample deploy step"'
			
			}
		} 
		
	}

}
