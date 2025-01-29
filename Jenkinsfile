pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                git 'https://your-repo-url.git'  // Change to your actual repo URL
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Build Docker image
                    sh 'docker build -t hello-world-test .'
                }
            }
        }

        stage('Run Container & Check Output') {
            steps {
                script {
                    // Run the Docker container and capture its output
                    def output = sh(script: "docker run --rm hello-world-test", returnStdout: true).trim()

                    // Check if the output matches "hello world"
                    if (output == "hello world") {
                        echo "true"  // Output is "hello world"
                    } else {
                        echo "false" // Output is not "hello world"
                    }
                }
            }
        }
    }
}
