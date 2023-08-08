pipeline {
	agent {label 'jen-deploy-nodes01'}
	
	stages {
		stage('Clean Files') {
			steps {
				sh 'rm -rf jendockerproj01'
					}
		}
		stage('Code pull') {
			steps {
				sh 'git clone https://github.com/petchimuthup/jendocker.git'
					}
		}
}
