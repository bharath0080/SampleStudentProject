node {
   def mvnHome
   stage('gitCode') {
      checkout poll: false, scm: [$class: 'GitSCM', branches: [[name: '*/GITHUB_BRANCH']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'GITHUB_REPO_URL']]]
      mvnHome = tool 'M3'
   }
   stage('BuildforGITHUB_BRANCH') {
      // Run the maven build
      if (isUnix()) {
         sh "'${mvnHome}/bin/mvn' -Dmaven.test.failure.ignore clean package"
      } else {
         bat(/"${mvnHome}\bin\mvn" -Dmaven.test.failure.ignore clean package/)
      }
   }
}
