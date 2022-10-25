pipeline { 
    agent any  // node 

    stages {    //different stages 

        stage('build') {
            steps {
            	// if you use java here goes : sh 'npm install'  sh 'npm build'
                echo 'Hello build'
            }

           stage('test') {
            steps {
                echo 'test'
            }

            stage('deploy') {
            steps {
                echo 'deploy'
            }
        }
    }
}
