pipeline {
agent { node { label 'AGENT-1' } }
  options {
       timeout(time: 1, unit: 'HOURS')

    } 

    
    stages {
        stage('Init') {
            steps {
              
                sh '''
                ls -ltr
                pwd
                terraform init 
                '''
            }
        }
        stage('Plan') {
            steps {
              sh '''
                ls -ltr
                pwd
                terraform plan 
                '''
            }
        }
        stage('Approve') {
            steps {
                input 'Shall I apply....'
              //  error 'this is failed '
            }
        }
        stage('Apply') {
            steps {
                 sh '''
                pwd
                terraform apply auto-approve 
                '''
               
            }
        }
        
    }     
    post { 
        always { 
            echo 'I will always whether the job is success or not '
        }
   
  
        success { 
            echo 'I will always when job is success'
        }
        // failure { 
        //     echo 'I will run only when job is faiure'
    
        // }

     }
}