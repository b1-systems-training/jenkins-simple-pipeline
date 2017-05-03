pipeline {
    agent any 

    stages {
        stage('Test'){
            steps {
                sh './test.sh'
            }
        }
        stage('Package') {
            steps {
                sh 'tar cjf test.tbz superscript.sh'
                archiveArtifacts '*.tbz'
            }
        }
    }
}
