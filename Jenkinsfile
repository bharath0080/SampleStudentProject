env.dockerimagename="devopsbasservice/buildonframework:buildonJenkinsfile2.0"
node {
   stage('SampleStudentProject.git_Checkout') {
      checkout poll: false, scm: [$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/bharath0080/SampleStudentProject.git']]]       
    }
   stage ('SampleStudentProject.git_Build') {
    sh 'mvn clean package -DskipTests=True'
  } 
   stage ('SampleStudentProject.git_CodeAnalysis') {
    sh 'mvn sonar:sonar -Dsonar.host.url=http://10.0.0.94:9000 -Dmaven.test.failure.ignore=true -DskipTests=true -Dsonar.sources=src/main/java'
  }
 //Test Buildon  Test github
}
