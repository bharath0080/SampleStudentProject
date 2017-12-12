env.dockerimagename="devopsbasservice/buildonframework:buildonJenkinsfile2.0"
node {
   stage ('StudentProject_Build') {
    checkout scm
    sh 'mvn clean package -DskipTests=True'
  } 
   stage ('StudentProject_CodeAnalysis') {
    sh 'mvn sonar:sonar -Dsonar.host.url=http://10.0.0.94:9000 -Dmaven.test.failure.ignore=true -DskipTests=true -Dsonar.sources=src/main/java'
  }
 //Test Buildon  Test github
}
