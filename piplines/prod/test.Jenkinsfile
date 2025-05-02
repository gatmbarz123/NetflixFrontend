pipeline {
    agent any

    stages {
        stage('Tests before build') {
            parallel {
             stage('Unittest') {
                 steps {
                     sh 'echo unittesting...'
                 }
             }
             stage('Lint') {
                 steps {
                     sh 'echo linting...'
                 }
             }
            }
        }
        stage('Build and deploy to Test environment') {
            steps {
                sh 'echo trigger build and deploy pipelines for test environment... wait until successful deployment'
            }
        }
        stage('Tests after build') {
            parallel {
              stage('Security vulnerabilities scanning') {
                    steps {
                        sh 'echo scanning for vulnerabilities...'
                    }
              }
              stage('API test') {
                 steps {
                     sh 'echo testing API...'
                 }
              }
              stage('Load test') {
                  steps {
                      sh 'echo testing under load...'
                  }
              }
            }
        }
    }
}