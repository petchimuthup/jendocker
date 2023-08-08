pipeline {
	agent {label 'jen-deploy-nodes01'}
	environment {
		DOCKERHUB_CREDENTIALS = credentials('dockerhub01')
		}
	stages {
		stage(image build) {
			steps {
				sh 'docker build -t 826316/webapp01 -f /home/jenkins/workspace/jendockerproj01/Dockerfile .
					}
		}
		stage(login dockerhub) {
			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
					}
		}
		stage(push image) {
			steps {
				sh 'docker push 826316/webapp01'
				}
		}
}
