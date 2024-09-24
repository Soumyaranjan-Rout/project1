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
      steps{
        echo 'Target dir claen'
        sh 'mvn clean'
      }
    }
    stage('Application Package'){
      steps{
        echo 'Application Package'
        sh 'mvn package'
      }
    }
    stage('Docker image build'){
      steps{
        echo 'Docker Image Building'
        sh 'sudo docker build -t project1:1.0 .'
      }
    }
    stage('Docker containers creation'){
      steps{
        echo 'Containers creating'
        sh 'docker run -dt -p 8081:8081 --name Project1 project1:1.0'
      }
    }
  }
}
      
      
