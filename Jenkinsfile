pipeline { 
    agent any  // node 
    environment {
            NEW_VERSION = '1.3'
            SERVER_CREDENTIALS = credentials('server-credentials')   //ID ul de la Credentials intre '', pe care il adaugi cand dai Add Credentials

    } 
    parameters{

        string(name: 'Version', defaultValue: '')
        choice (name: 'Version', choices: ['1.1','1.2'])
        booleanParam(name: 'executeTests',defaultValue: true)
    }
    tools { //for a front end :maven,gradle
        maven 'Maven'  // dupa maven trebuie sa pui numele din Global tool configuration de la Name


    }
    stages {    //different stages 
        stage ('init'){

            steps {
                   // groovy starts
                script {
                        gv =script.groovy   //numele fileului; aici cumva importi functiile

                }

            }
        }
        stage('build') {
            // when {
            //         expression {
            //             BRANCH_NAME == 'devops' && CODE_CHANGES == true   //enviroment variable; daca se indeplineste, se executa steps
            //         } 
            // }
            steps {
                // if you use java here goes : sh 'npm install'  sh 'npm build'
                // echo 'Hello build'
                // echo "building version ${NEW_VERSION}"
                script{
                    gv.buildApp()
                }
               

                //sh "mvn install"   // sh ca sa execute shell script, bat ca sa execute batch 


                }
            }
           stage('test') {
            when {
                expression {
                        params.exeuteTests == true   // daca e true, se va executa steps
                    }
            }
            steps {
                echo 'test'
                 }
            }
            stage('deploy') {
            steps {
            script{
                gv.deployApp()
            }
                
                }
            }
        }
     }
