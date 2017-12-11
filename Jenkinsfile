node {
   def mvnHome
   stage('gitCode') {
      checkout poll: false, scm: [$class: 'GitSCM', branches: [[name: '*/']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: '']]]
      mvnHome = tool 'M3'
   }
   stage('Buildfor') {
      // Run the maven build
      if (isUnix()) {
         sh "'${mvnHome}/bin/mvn' -Dmaven.test.failure.ignore clean package"
      } else {
         bat(/"${mvnHome}\bin\mvn" -Dmaven.test.failure.ignore clean package/)
      }
   }
}
