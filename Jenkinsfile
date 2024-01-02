properties([[$class: 'JiraProjectProperty'], buildDiscarder(logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '', daysToKeepStr: '5', numToKeepStr: '5')), parameters([choice(choices: ['master', 'stage', 'uat', 'prepro'], description: 'single job implimenting the declarative pipeline', name: 'Branch')]), [$class: 'JobLocalConfiguration', changeReasonComment: ''], pipelineTriggers([pollSCM('* * * * *')])])

pipeline{
    agent any
    tools {
      maven 'Maven_Home.3.6.3'
    }

      stages {
        stage("scm_checkout") {
            steps {
              git credentialsId: 'github_id', url: 'https://github.com/githubjigalooru/maven-web-application.git'    
                
            }
	}
        stage ("build_artifact") {
  	  steps {
	    sh "mvn clean install"
	     }
  	
        }

     }
}
