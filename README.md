<h1 align="center" id="title">Deploying a Spring Boot Application to AWS EKS using Amazon ECR and GitHub Actions CI/CD</h1>

<p id="description">This repository demonstrates how to deploy a Spring Boot application to Amazon EKS (Elastic Kubernetes Service) using  Amazon ECR (Elastic Container Registry) for container image storage and GitHub Actions for CI/CD (Continuous Integration/Continuous Deployment) automation.</p>


# <a name="_toc172059414"></a>Prerequisite
Before starting the deployment process, ensure you have the following tools installed and configured:

- AWS CLI: For interacting with AWS services.
- Docker: For building the Docker image.
- kubectl: For managing Kubernetes clusters.
- eksctl: For creating and managing EKS clusters.
- Helm: For deploying and managing Kubernetes applications.
- GithubAccount
- AWS subscription account 
- IAM permissions
 changes.

# <a name="_toc172059415"></a>Application Deployment: Spring Boot, Docker, ECR, EKS, and Helm



## Application Deployment

This document outlines a step-by-step guide for building, containerizing, and deploying a Spring Boot Java application using modern cloud-native tools.

** Build a Spring Boot Java Application **
Compile and package the Spring Boot application into a JAR or WAR file using tools like Maven or Gradle, ensuring the application is ready for deployment.

** Create a Docker Image for the Application **
Use a Dockerfile to containerize the Spring Boot application, producing a portable Docker image with all dependencies.

** Push the Docker Image to Amazon Elastic Container Registry (ECR) **
Upload the Docker image to Amazon ECR.

** Deploy the Application to Amazon Elastic Kubernetes Service (EKS) **
Use Kubernetes to deploy the containerized application to an EKS cluster for scalable and resilient operation.

** Set Up Ingress Using Helm **
Configure ingress rules using Helm to manage HTTP/HTTPS traffic, enabling external access to the application with features like load balancing and TLS.




<h2>Repository Structure:</h2>
<ul>
  <li><code>src/</code>: Spring Boot application source code</li>
  <li><code>Dockerfile</code>: Docker configuration file for building the container image</li>
  <li><code>.github/workflows/maven.yml</code>: GitHub Actions workflow configuration for CI/CD app deployment</li>
  <li><code>.github/workflows/terraform.yml</code>: GitHub Actions workflow configuration for CI/CD infra deployment</li>

</ul>
