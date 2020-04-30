node {
	/* Continuous integration (CI), continuous delivery (CD) and continous Deployment */
    def cicd

    stage('Clone repository') {
        /* Cloning the Repository to our Workspace /var/lib/jenkins/workspace/jobname*/

        checkout scm
    }

    stage('Build image') {
        /* This builds the actual image from Docker File */

        cicd = docker.build("prakhar77/myweb")
    }

    stage('Test image') {
        
        cicd.inside {
            echo "Tests Passed Continous Delivery to Docker push"
        }
    }

    stage('Push image') {
        /* You would need to first register with DockerHub before you can push images to your account */
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-login') {
            cicd.push("${env.BUILD_NUMBER}")
     } 
                echo "Trying to Push Docker Build to DockerHub"
    }
}
