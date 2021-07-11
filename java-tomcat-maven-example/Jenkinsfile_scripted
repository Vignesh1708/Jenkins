node(){
    stage('checkout'){
        git 'https://github.com/lokeshkamalay/java-tomcat-maven-example.git'
    }
    stage('Build'){
        sh '/tmp/apache-maven-3.5.4/bin/mvn package'
    }
    stage('Prepare an Image'){
        sh 'docker build -t mythri -f Dockerfile .'
    }
    stage('Deploy'){
        sh 'docker run -d -p 8888:8080 mythri'
    }
}
