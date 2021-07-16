pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                echo "==========Building========="
		sh '/usr/local/share/dotnet/dotnet build Devops.sln -p:Configuration=release -v:q'
            }
        }
		
		
		
        stage('Test') {
            steps {
                echo "==========Test=========="
            }
        }
	    
	stage('Publish') {
		steps {
		    sh '/usr/local/share/dotnet/dotnet restore'
		    sh '/usr/local/share/dotnet/dotnet publish Devops.sln -c Release'
		}
	}
	    
	stage ('BuildDockerImage')
        {
            steps {
                echo "==========BuildDockerImage=========="
		sh '/usr/local/bin/docker build -t rdimri/devops:latest .'
            }
        }
	    
	stage('Tag and Push image to Docker')
        {
            steps{
                    
                    echo "==========Push image=========="
		    sh '/usr/local/bin/docker login -u rdimri -p regno@123'
		    sh '/usr/local/bin/docker push rdimri/devops:latest'
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
