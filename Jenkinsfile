pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'genProject.sh'
                sh 'cd ext && make'
            }
        }
        stage('Test') {
            steps {
                sh './build/test/bin/Test'
            }
        }
    }
    post {
        always {
        sh '/opt/anaconda/bin/nosetests --cover-branches --with-coverage --cover-erase --cover-package=src tests/test.py --cover-xml'
        cobertura coberturaReportFile: 'coverage.xml'
        }
    }
}