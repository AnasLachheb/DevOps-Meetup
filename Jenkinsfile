node('master'){
    stage('prepare')
            {
                checkout scm
            }
    stage('Kitchen Test'){
        parallel 'Test on Ubuntu' : {
            stage('ubuntu'){

                sh 'cd ansible/roles/my_role && kitchen test ubuntu'
            }
        }, 'Test on Centos' : {
            stage('test on Centos'){
                sh 'cd ansible/roles/my_role && kitchen test centos'
            }
        }

    }
}