node('master'){
    stage('prepare')
            {
                checkout scm
            }
    stage('Kitchen create'){
        sh 'cd ansible/roles/my_role && kitchen create ubuntu'
    }
    stage('Kitchen converge'){
        sh 'cd ansible/roles/my_role && kitchen converge ubuntu'
    }

    stage('Kitchen verify'){
        sh 'cd ansible/roles/my_role && kitchen verify ubuntu'
    }

    stage('Kitchen test'){
        sh 'cd ansible/roles/my_role && kitchen test ubuntu'
    }
}
