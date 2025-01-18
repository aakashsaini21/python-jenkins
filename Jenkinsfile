pipeline{
    agent any

    environment {
        PYTHON_VERSION = '3.10.9'
    }

    stages{
        stage("Fetch code from Github"){
            steps {
                // Checkout the latest code from GitHub
                git branch: 'main', url: 'https://github.com/aakashsaini21/python-jenkins.git'
            }
        }
       

        stage('Build Docker Image') {
            steps {
                script {
                    sh "sudo docker build -t aakashsaini2103/python-app1:new ."
                }
            }
        }

        stage('Run Docker Image') {
            steps {
                script {
                    sh "sudo docker run -d -p 5000:5000 --name myapp aakashsaini2103/python-app1:new"
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                script {
                    sh "sudo docker push aakashsaini2103/python-app1:new"
                }
            }
        }
    }
        
}