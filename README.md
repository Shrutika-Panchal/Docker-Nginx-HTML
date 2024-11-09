# Dockerized Nginx with HTML Page

This project demonstrates how to Dockerize a simple HTML page served by an Nginx web server. The HTML page displays "Hello, Docker!" and is served by Nginx in a Docker container.

## Project Structure

### Steps to Build and Run
1. Clone the Repository
Clone this repository to your local machine:
git clone https://github.com/Shrutika-Panchal/Docker-Nginx-HTML.git
cd Docker-Nginx-HTML

2. Build the Docker Image
Build the Docker image using the Dockerfile:
docker build -t my-nginx-image .

3. Run the Docker Container
Run the container from the built image:
docker run -d -p 8081:80 --name my-nginx-container my-nginx-image
This will run the container and expose the web server on port 8081. You can access the HTML page at http://localhost:8081.

4. Push Docker Image to ECR (AWS)
To push the Docker image to AWS Elastic Container Registry (ECR):

Login to AWS ECR:
aws ecr get-login-password --region <region> | docker login --username AWS --password-stdin <aws_account_id>.dkr.ecr.<region>.amazonaws.com

Tag the Docker Image:
docker tag my-nginx-image:latest <aws_account_id>.dkr.ecr.<region>.amazonaws.com/my-nginx-repo:latest

Push the Docker Image:
docker push <aws_account_id>.dkr.ecr.<region>.amazonaws.com/my-nginx-repo:latest

Replace <region>, <aws_account_id>, and <my-nginx-repo> with your AWS ECR details.