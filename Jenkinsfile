pipeline {
    agent {
        dockerContainer {
            image 'jenkins/agent:jdk21'
            dockerHost 'tcp://host.docker.internal:2375'
            // falls du Credentials brauchst:
            // credentialsId 'dein-cred-id'
        }
    }


    environment {
        DOCKER_HOST = "unix:///var/run/docker.sock"
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                sh 'echo "Starting build..."'

                dir('backend') {
                    sh 'chmod +x ./gradlew'
                    sh './gradlew test'
                }

                jacoco()
                junit testResults: '**/test-results/test/*.xml'
            }
        }

        stage('Frontend Lint') {
            steps {
                dir('frontend') {
                    sh 'npm install'
                    sh 'npm run lint:html'
                }
            }
        }

        stage('SonarQube Backend') {
            steps {
                withCredentials([string(credentialsId: 'Sonarqube-Backend', variable: 'TOKEN')]) {
                    dir('backend') {
                        sh '''
                        ./gradlew sonar \
                          -Dsonar.projectKey=DevOpsDemo-Backend \
                          -Dsonar.projectName="DevOpsDemo-Backend" \
                          -Dsonar.host.url=http://host.docker.internal:9000 \
                          -Dsonar.token=${TOKEN}
                        '''
                    }
                }
            }
        }

        stage('SonarQube Frontend') {
            steps {
                withCredentials([string(credentialsId: 'Sonarqube-Frontend', variable: 'TOKEN')]) {
                    dir('frontend') {
                        sh '''
                        npx sonar-scanner \
                          -Dsonar.projectKey=DevOpsDemo-Frontend \
                          -Dsonar.projectName="DevOpsDemo-Frontend" \
                          -Dsonar.host.url=http://host.docker.internal:9000 \
                          -Dsonar.token=${TOKEN}
                        '''
                    }
                }
            }
        }

        stage('Docker Build') {
            steps {
                sh '''
                echo "Building Docker image..."
                docker build -t mosazhaw/devopsdemo .
                '''
            }
        }
    }
}
