pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                echo "==========Building========="
		bat 'dotnet build Devops.sln -p:Configuration=release -v:q'
            }
        }
		
		
		
        stage('Test') {
            steps {
                echo "==========Test=========="
            }
        }
	    
	stage('Publish') {
		steps {
		    bat 'dotnet restore'
		    bat 'dotnet publish Devops.sln -c Release'
		}
	}
	    
	stage ('BuildDockerImage')
        {
            steps {
                echo "==========BuildDockerImage=========="
		bat 'docker build -t rdimri/devops:latest .'
            }
        }
	    
	stage('Tag and Push image to Docker')
        {
            steps{
                    
                    echo "==========Push image=========="
		    bat 'docker login -u rdimri -p regno@123'
		    bat 'docker push rdimri/devops:latest'
            }
        }
	    
	stage('Allure report generation')
        {
            steps
            {
                echo"===========Allure report==========="
            }
        }
				
    }
}
