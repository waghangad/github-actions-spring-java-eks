<h1 align="center" id="title">Deploying a Spring Boot Application to AWS EKS using Terraform Amazon ECR and GitHub Actions CI/CD</h1>

<p id="description">This repository demonstrates how to deploy a Spring Boot application to Amazon EKS (Elastic Kubernetes Service) using Terraform for infrastructure management Amazon ECR (Elastic Container Registry) for container image storage and GitHub Actions for CI/CD (Continuous Integration/Continuous Deployment) automation.</p>


# <a name="_toc172059415"></a>Infrastructure Deployment

# <a name="_toc172059414"></a>Prerequisite

- GithubAccount
- AWS subscription account 
- IAM permissions
# <a name="_toc172059415"></a>Infrastructure Deployment
- Terraform is being used to provision Aws Resources, all code is placed in branch named infrastructure of github Repo.
- Infrastructure branch is used to deploy the infrastructure and has following structure:
  - ` `**Modules folder**: Contains Terraform modules of azure resources for infrastructure provisioning.
  - **eks.tf:** Contain the main set of eks configurations.
  - **ecr.tf:** Contain the main set of ecr configurations.
  - **vpc.tf:** Contain the main set of vpc configurations.
  - **eip.tf:** Contain the main set of eip and security group configurations.

  - **Variables.tf**: Contains the variable definition for modules.
  - **Locals.tf:** consist of all local values and uses expressions to configure names of resources according to environment.
#### *terraform workflow*
- **Terraform Scan:** Run terraform scan to validate terraform scripts. The Terraform scan stage is powered by a tool known as tfsec, which serves as a static analysis security scanner specifically for Terraform code.
- **Terraform Validate:** Utilizes the terraform validate command to ensure the correctness of Terraform configurations.
- **Terraform Plan:** Executes terraform init and terraform plan to initialize the environment and generate an execution plan for infrastructure changes.
- **Terraform Apply:** (Approval check is in place to give a go head for deployment): Consist of terraform init and terraform apply commands, with an approval check in place to authorize the deployment of infrastructure changes.

# <a name="_toc172059415"></a>Application Deployment: Spring Boot, Docker, ECR, EKS, and Helm

## Overview

This document describes the steps to:
1. Build a Spring Boot Java application.
2. Create a Docker image for the application.
3. Push the Docker image to Amazon Elastic Container Registry (ECR).
4. Deploy the application to Amazon Elastic Kubernetes Service (EKS).
5. Set up ingress using Helm.

---

## Prerequisites

Before starting the deployment process, ensure you have the following tools installed and configured:

- **AWS CLI**: For interacting with AWS services.
- **Docker**: For building the Docker image.
- **kubectl**: For managing Kubernetes clusters.
- **eksctl**: For creating and managing EKS clusters.
- **Helm**: For deploying and managing Kubernetes applications.
## Overview

This guide demonstrates how to:

- Build and dockerize a Spring Boot application.
- Push the Docker image to Amazon Elastic Container Registry (ECR).
- Deploy the application to Amazon Elastic Kubernetes Service (EKS).
- Expose the application using Helm-managed Nginx ingress.

This setup provides a scalable and manageable deployment pipeline for your Spring Boot application on AWS, and can be further customized with CI/CD integration or enhanced Kubernetes configurations.

<h2>Repository Structure:</h2>
<ul>
  <li><code>src/</code>: Spring Boot application source code</li>
  <li><code>Dockerfile</code>: Docker configuration file for building the container image</li>
  <li><code>.github/workflows/maven.yml</code>: GitHub Actions workflow configuration for CI/CD app deployment</li>
  <li><code>.github/workflows/terraform.yml</code>: GitHub Actions workflow configuration for CI/CD infra deployment</li>

</ul>
