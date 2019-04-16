node('master'){
    stage('prepare')
            {
                checkout scm
            }
    stage('Kitchen Test'){
        parallel 'Test on Ubuntu' : {
            stage('ubuntu'){
                sh 'kitchen test ubuntu'
            }
        }, 'Test on Centos' : {
            stage('test on Centos'){
                sh 'kitchen test centos'
            }
        }

    }
}