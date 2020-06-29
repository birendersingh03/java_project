pipeline {
	agent any
	
	stages {
			
		stage('Git Checkout') {
				gitCheckout(
				branch: "master",
				url: "https://github.com/spring-projects/spring-petclinic.git"
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
