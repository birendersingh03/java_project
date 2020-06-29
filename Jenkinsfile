pipeline {
	agent any
	
	stages {
			
		stage('Git Checkout') {
				gitCheckout(
				branch: "master",
				url: "https://github.com/birendersingh03/java_project.git"
							)
			}
			
		stage 'Build' {
			steps {
			
				sh 'cd ${WORKSPACE}/src/main/java'
				sh 'mvn clean'		
			}
		}
	
	}
}
