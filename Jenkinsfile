pipeline {
	agent any
	
	stages {
			
		stage('Git Checkout') {
				steps {
					git branch: 'master',
					credentialsId: 'my_cred_id',
					url: "https://github.com/spring-projects/spring-petclinic.git"

        }
			}
			
		stage 'Build' {
			steps {
			
				sh 'cd ${WORKSPACE}/src/main/java'
				sh 'mvn clean'		
			}
		}
	
	}
}
