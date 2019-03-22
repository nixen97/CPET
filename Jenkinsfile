pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh './genProject.sh'
                sh 'cd ext && make'
            }
        }
        stage('Test') {
            steps {
                sh './build/test/bin/Test'
            }
        }
    }
}
