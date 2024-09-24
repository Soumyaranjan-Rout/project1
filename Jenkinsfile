pipeline{
  agent any
  stages{
    stage('Checkout code from GitHub'){
      steps{
        git url: 'https://github.com/Soumyaranjan-Rout/project1.git'
        echo('Git uts checkout')
      }
    }
    stage('Maven compile'){
      steps{
        echo 'Application is compiling'
        sh 'mvn compile'
      }
    }
    stage('Maven Clean'){
      step{
        echo 'Target dir claen'
        sh 'mvn clean'
      }
    }
    stage('Application Package'){
      step{
        echo 'Application Package'
        sh 'mvn package'
      }
    }
    stage('Docker install'){
      steps{
        echo 'Docker install'
        sh 'sudo apt -y install docker.io'
      }
    }
    stage('Docker image build'){
      step{
        echo 'Docker Image Building'
        sh 'sudo docker build -t project1:1.0'
      }
    }
    stage('Docker containers creation'){
      step{
        echo 'Containers creating'
        sh 'docker run -dt -p 9090:9090 --name Project1 project1:1.0'
      }
    }
  }
}
      
      
